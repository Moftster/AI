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
  "Claude:$HOME/.claude/skills"
  "Codex:$HOME/.codex/skills"
)

skills_checked=0
already_linked_claude=0
already_linked_codex=0
links_created=0
links_replaced=0
links_skipped=0

run_if_needed() {
  if ((dry_run)); then
    return
  fi

  "$@"
}

link_skill() {
  local skill_dir="$1"
  local label="$2"
  local target_dir="$3"
  local name dest current

  name="$(basename -- "$skill_dir")"
  dest="$target_dir/$name"

  if [[ -L "$dest" ]]; then
    current="$(readlink -- "$dest")"
    if [[ "$current" == "$skill_dir" ]]; then
      if [[ "$label" == "Claude" ]]; then
        ((already_linked_claude += 1))
      elif [[ "$label" == "Codex" ]]; then
        ((already_linked_codex += 1))
      fi
      return
    fi

    if ((force)); then
      run_if_needed ln -sfn -- "$skill_dir" "$dest"
      ((links_replaced += 1))
    else
      ((links_skipped += 1))
    fi
    return
  fi

  if [[ -e "$dest" ]]; then
    ((links_skipped += 1))
    return
  fi

  run_if_needed ln -s -- "$skill_dir" "$dest"
  ((links_created += 1))
}

if [[ ! -d "$source_dir" ]]; then
  echo "Missing source skills directory: $source_dir" >&2
  exit 1
fi

if ((dry_run)); then
  echo "Dry run: no changes will be made."
fi

for target in "${targets[@]}"; do
  target_dir="${target#*:}"

  if [[ ! -d "$target_dir" ]]; then
    if ((dry_run)); then
      :
    else
      mkdir -p -- "$target_dir"
    fi
  fi
done

found=0
for skill_dir in "$source_dir"/*; do
  [[ -d "$skill_dir" ]] || continue
  [[ -f "$skill_dir/SKILL.md" ]] || continue

  found=1
  ((skills_checked += 1))

  for target in "${targets[@]}"; do
    label="${target%%:*}"
    target_dir="${target#*:}"
    link_skill "$skill_dir" "$label" "$target_dir"
  done
done

if ((found == 0)); then
  echo "No skill directories with SKILL.md found in $source_dir" >&2
  exit 1
fi

if ((dry_run)); then
  echo
fi
echo "Summary:"
echo "  Skills checked: $skills_checked"
echo "  Already linked claude: $already_linked_claude"
echo "  Already linked codex: $already_linked_codex"
echo "  Links created: $links_created"
echo "  Links replaced: $links_replaced"
echo "  Skipped: $links_skipped"
