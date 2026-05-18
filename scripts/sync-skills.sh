#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'USAGE'
Usage: scripts/sync-skills.sh [--dry-run] [--force]

Create symlinks for every skill directory in ./skills into:
  ~/.claude/skills
  ~/.codex/skills

Options:
  --dry-run   Print the actions without changing anything.
  --force     Replace existing symlinks that point somewhere else.

Existing real files or directories are never overwritten.
USAGE
}

dry_run=0
force=0

while (($#)); do
  case "$1" in
    --dry-run)
      dry_run=1
      ;;
    --force)
      force=1
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown option: $1" >&2
      usage >&2
      exit 2
      ;;
  esac
  shift
done

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
repo_root="$(cd -- "$script_dir/.." && pwd)"
source_dir="$repo_root/skills"

targets=(
  "$HOME/.claude/skills"
  "$HOME/.codex/skills"
)

run() {
  if ((dry_run)); then
    printf 'DRY RUN:'
    printf ' %q' "$@"
    printf '\n'
  else
    "$@"
  fi
}

link_skill() {
  local skill_dir="$1"
  local target_dir="$2"
  local name dest current

  name="$(basename -- "$skill_dir")"
  dest="$target_dir/$name"

  if [[ -L "$dest" ]]; then
    current="$(readlink -- "$dest")"
    if [[ "$current" == "$skill_dir" ]]; then
      echo "ok: $dest -> $skill_dir"
      return
    fi

    if ((force)); then
      echo "replace: $dest -> $skill_dir"
      run ln -sfn -- "$skill_dir" "$dest"
    else
      echo "skip: $dest is a symlink to $current; use --force to replace it" >&2
    fi
    return
  fi

  if [[ -e "$dest" ]]; then
    echo "skip: $dest already exists and is not a symlink" >&2
    return
  fi

  echo "link: $dest -> $skill_dir"
  run ln -s -- "$skill_dir" "$dest"
}

if [[ ! -d "$source_dir" ]]; then
  echo "Missing source skills directory: $source_dir" >&2
  exit 1
fi

for target_dir in "${targets[@]}"; do
  run mkdir -p -- "$target_dir"
done

found=0
for skill_dir in "$source_dir"/*; do
  [[ -d "$skill_dir" ]] || continue
  [[ -f "$skill_dir/SKILL.md" ]] || continue

  found=1
  for target_dir in "${targets[@]}"; do
    link_skill "$skill_dir" "$target_dir"
  done
done

if ((found == 0)); then
  echo "No skill directories with SKILL.md found in $source_dir" >&2
  exit 1
fi
