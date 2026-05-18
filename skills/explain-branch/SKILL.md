---
name: explain-branch
description: Walk the user through the recent commits on the current branch as the ticket they're working on — what changed, why, and how the design decisions hang together. Use when the user wants to understand their own branch, onboard a reviewer, recap a ticket, or get a narrative explanation of recent commits.
---

Explain the recent commits on the current branch as a single coherent story — the ticket the user is working on — so they understand both the code and the intent behind it.

## Inputs to gather first

Run in parallel:

- `git status` — uncommitted state.
- `git rev-parse --abbrev-ref HEAD` and `git rev-parse --abbrev-ref --symbolic-full-name @{u} 2>/dev/null || true` — current branch and upstream.
- `git log --oneline origin/main..HEAD 2>/dev/null || git log --oneline main..HEAD` — commits unique to the branch. Fall back to last ~10 commits if the branch has no clear base.
- `git diff --stat <base>..HEAD` — scope of change.
- `git log <base>..HEAD --reverse --pretty=format:'%h %s%n%b%n---'` — full messages in chronological order.

If the branch has more than ~15 commits, ask the user whether to focus on a subset (e.g. "since the rebase", "last 5", a specific commit range) before diving in.

Then read the actual code at HEAD for the files that changed — explanations must be grounded in the current state, not just diffs.

## How to structure the explanation

1. **One-paragraph summary.** What this branch does and why, in plain language. Lead with the user-visible or system-level outcome, not the file list.

2. **Most relevant commits first.** Not chronological order — order by importance to understanding. A small "rename variable" commit comes last; the commit that introduces the core mechanism comes first. Group trivial commits ("fix typo", "formatting") into a single line at the end instead of giving each its own section.

3. **Section per significant commit or logical unit.** For each:
   - Reference files, classes, functions, methods with clickable markdown links: `[filename.ts:42](path/to/filename.ts#L42)`. Use line ranges where helpful.
   - Explain **what** changed in one or two sentences.
   - Explain **why** — the architectural or design reasoning. What problem did this solve? What alternatives would have been worse? What constraint forced the shape of the code?
   - If the commit's intent is unclear from message + diff, say so rather than inventing a rationale.

4. **How the commits relate.** A short paragraph on how the change evolved: did the first commit set up scaffolding the later ones built on? Did a later commit reverse or refine an earlier one? Were tests added before or after the implementation? This is the part that turns a list of commits into a story.

5. **Risks, fragility, and things worth revisiting.** Be specific, not vague. Each item should name the file/function and what the concern is:
   - Inconsistencies between commits (e.g. a pattern introduced in commit A but not followed in commit C).
   - Code that handles the happy path but not obvious edge cases.
   - Abstractions that look premature or under-tested.
   - TODO/FIXME comments or commented-out code left behind.
   - Behavior changes that aren't covered by tests.
   - Anything that would make a reviewer pause.
   
   If there's nothing risky, say so — don't manufacture concerns to fill the section.

## Style

- Write for a strong developer who knows the language and stack but hasn't seen this code before. Explain domain context where it's load-bearing; don't explain syntax.
- Prefer concrete over abstract. "This caches the result of `resolveUser()` because each call hits the auth service" beats "this improves performance."
- Don't restate what well-named code already says. The value of the explanation is the *why*, the connections between commits, and the risks.
- No emoji. No trailing "let me know if you'd like…" boilerplate.
