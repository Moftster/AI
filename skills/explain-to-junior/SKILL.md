---
name: explain-to-junior
description: Explain a specific piece of code succinctly to a strong junior developer. Use when the user asks what a class, function, method, line, expression, file excerpt, stack trace frame, config value, test, diff hunk, or small code path does, especially when they ask for a concise, clear, junior-friendly explanation rather than a broad codebase narrative.
---

# Explain To Junior

## Goal

Explain the target code in practical plain English for a strong junior developer. Keep the answer short, code-grounded, and focused on what the developer needs to understand next.

## Workflow

1. Identify the exact code target: class, function, line, expression, diff hunk, file excerpt, stack frame, test, or named symbol.
2. Inspect the surrounding code before explaining when local files, diffs, or references are available.
3. Gather only the context needed to avoid a misleading explanation: caller/callee relationships, important types, state mutations, side effects, and relevant tests.
4. If the target cannot be located, ask for the file path or snippet instead of guessing.
5. Explain the code directly. Do not produce a broad architecture tour unless the user asks for one.

## Output Shape

Use this default structure for most answers. Keep the sections visually broken up: use short Markdown headers, a blank line after each header, and no paragraph longer than 2-3 sentences.

```md
**In Short**

<One sentence explaining the purpose or behavior.>

**What It Does**

<2-4 sentences. Explain inputs, main transformation, outputs, and side effects.>

**Why It Matters**

<1-3 sentences. Explain the role in the surrounding code path or the reason it exists.>

**Watch Out For**

<Optional. Use bullets when there are multiple points. Mention edge cases, surprising behavior, naming traps, async behavior, mutation, nullability, errors, or test gaps.>
```

For a single line or expression, use a tighter version:

```md
**Meaning**

<Plain-English explanation.>

**Mechanics**

<Brief mechanics. The important detail is <the non-obvious part>.>
```

## Style Rules

- Prefer concrete names from the code over generic labels.
- Explain control flow and data flow before implementation trivia.
- Mention types, ownership, mutation, async boundaries, and error handling when they affect understanding.
- Define jargon briefly the first time it matters.
- Use code references when available, and make them clickable links when possible.
- Keep examples tiny and relevant; do not invent large examples.
- Avoid line-by-line commentary unless the target is explicitly a line or very small snippet.
- Avoid filler such as "this is responsible for" when a direct verb is clearer.
- Do not merge section labels into paragraph starters like "What it does:"; make them standalone headers.
- Prefer several short sections over one dense explanation. If a section grows past 3 sentences, split it or use bullets.

## Code Links

When explaining local code, link to the relevant file and line whenever possible:

```md
[app.py](/absolute/path/to/app.py:42)
```

Use the smallest useful set of links: usually the target symbol, one important caller, or one relevant test. If an exact line is unknown, link to the file. If the code came from a pasted snippet with no path, say that no local link is available.

## Length

Default to 3-8 short sentences. Expand only when the code has important hidden behavior, multiple branches, or a risky interaction with the surrounding system.

## When The User Wants More

If the user asks follow-up questions, answer the next layer down: trace callers, expand one branch, compare alternatives, or explain the relevant test. Keep each follow-up scoped to the user's exact question.
