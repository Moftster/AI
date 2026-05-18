---
name: explain
description: Explain code, a feature, bug fix, plugin, method, pull request, recent commits, a file, or current working tree as a clear technical story for a strong junior developer. Use when the user asks to explain what changed, why it changed, how code flows end-to-end, or what a developer should learn from a code area or change.
---

# Explain Code Like a Change Story

Use this skill when explaining code, a feature, a bug fix, a plugin, a method, a pull request, recent commits, a file, the current working tree, or changes around a named area.

The explanation should be practical and code-grounded. Prefer cause and effect over vague summary.

## Core Goal

Explain the code or change as a clear technical story for a strong junior developer.

Cover:

- what the code or change is
- why it exists
- what was broken, missing, confusing, or risky
- how the system works end-to-end
- what changed
- why each change matters
- how it affects data, APIs, UI, and behavior
- what a developer should learn from it

Be concise but thorough. Do not pad. Do not omit important implementation or design detail.

## Before Explaining

Gather enough context to make the explanation specific:

1. Identify the target: commits, PR, plugin, method, feature, file, current working tree, or named area.
2. Inspect relevant code and diffs before explaining. Use exact file paths, class names, methods, config keys, database tables, API endpoints, frontend components, tests, or commit hashes where available.
3. If discussing a bug or fix, identify the old behavior, the risky path, and the new behavior.
4. If data or compatibility is involved, call out persisted fields, API contracts, migrations, and rollback implications.

Do not provide a generic explanation when code references are available.

## Style

Write in practical, plain English:

- clear
- structured
- slightly conversational
- technically accurate
- focused on cause and effect
- useful to a developer trying to understand the codebase

Avoid:

- vague summaries
- excessive abstraction
- line-by-line commentary unless needed
- generic filler
- overclaiming
- unexplained jargon

Always include code references where available.

## Required Output Structure

### The Big Picture

Start with a short narrative summary.

Explain:

- what this area of the system does
- what feature or business process it supports
- what problem, bug, or change is being investigated
- why it matters
- what the developer should pay particular attention to

Example style:

> The big picture is that this plugin handles X. The recent changes are about Y. The important thing to understand is Z, because that is where the bug, behavior, or data flow lives.

### How This Flows Through The System

Explain the end-to-end flow before explaining fixes or implementation details.

Use a numbered list where helpful.

Include relevant parts of:

1. the trigger or entry point
2. the main backend path
3. important services, classes, and methods
4. data being read or written
5. API calls or external integrations
6. frontend, UI, or API behavior
7. final outcome

This section should help the reader understand why the later code changes make sense.

### What We Found And Changed

Break the explanation into focused sections. Use this pattern for each meaningful change, bug, method, or design point:

```md
#### Change/Fix N - Short descriptive title

**Code references:**

- `path/to/file`
- `ClassName.methodName()`
- `config_key`
- `database_table`
- commit `abc123`


**The problem:**

Explain what was wrong, missing, confusing, or risky.

**The fix/change:**

Explain what changed in the code.

**Why it matters:**

Explain the practical impact on behavior, data, UI, API, reliability, compatibility, or maintainability.

**Developer takeaway:**

Explain the lesson a mid-level developer should remember.
```

## Closing

End with a short summary of the main lesson and any remaining risks, test gaps, compatibility concerns, or rollback notes when relevant.

If the project has explicit compatibility or deployment rules, include them in the assessment rather than treating the change as purely local code.
