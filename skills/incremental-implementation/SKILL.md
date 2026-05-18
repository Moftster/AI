---
name: incremental-implementation
description: Delivers changes incrementally. Use when implementing any feature or change that touches more than one file. Use when you're about to write a large amount of code at once, or when a task feels too big to land in one step.
---

# Incremental Implementation

## Overview

Build in thin vertical slices: implement one piece, test it, verify it, then expand. Avoid implementing an entire feature in one pass. Each increment should leave the system in a working, testable state. This is the execution discipline that makes large features manageable.

## When to Use

- Implementing any multi-file change
- Building a new feature from a task breakdown
- Refactoring existing code
- Any time you're tempted to write more than ~100 lines before testing

**When not to use:** Single-file, single-function changes where the scope is already minimal.

## The Increment Cycle

For each slice:

1. **Implement** the smallest complete piece of functionality
2. **Test**: run the test suite, or write a test if none exists
3. **Verify**: confirm the slice works as expected
4. **Commit**: save progress with a descriptive message when committing is appropriate for the task
5. **Move to the next slice**: carry forward, don't restart

## Slicing Strategies

### Vertical Slices

Prefer one complete path through the stack:

```text
Slice 1: Create a task (DB + API + basic UI)
  -> tests pass, user can create a task

Slice 2: List tasks (query + API + UI)
  -> tests pass, user can see tasks

Slice 3: Edit a task (update + API + UI)
  -> tests pass, user can modify tasks
```

Each slice should deliver working end-to-end functionality.

### Contract-First Slicing

Use when backend and frontend need to develop in parallel:

```text
Slice 0: Define the API contract
Slice 1a: Implement backend against the contract + API tests
Slice 1b: Implement frontend against mock data matching the contract
Slice 2: Integrate and test end-to-end
```

### Risk-First Slicing

Tackle the riskiest or most uncertain piece first:

```text
Slice 1: Prove the WebSocket connection works
Slice 2: Build real-time updates on the proven connection
Slice 3: Add offline support and reconnection
```

If Slice 1 fails, you discover it before investing in later slices.

## Implementation Rules

### Rule 0: Simplicity First

Before writing code, ask: "What is the simplest thing that could work?"

After writing code, review:

- Can this be done in fewer lines?
- Are these abstractions earning their complexity?
- Would a staff engineer ask, "why didn't you just..."?
- Am I building for hypothetical future requirements, or the current task?

Prefer the naive, obviously correct version first. Optimize or abstract only after correctness is proven with tests.

### Rule 0.5: Scope Discipline

Touch only what the task requires.

Do not:

- Clean up adjacent code unrelated to the task
- Refactor imports in files you're not modifying
- Remove comments you don't fully understand
- Add features not in the spec because they seem useful
- Modernize syntax in files you're only reading

If you notice unrelated cleanup, mention it separately instead of fixing it inside the current increment.

### Rule 1: One Thing at a Time

Each increment changes one logical thing. Do not mix concerns.

Bad: one commit that adds a component, refactors an existing one, and updates build config.

Good: separate increments for each change.

### Rule 2: Keep It Compilable

After each increment, the project should build and existing tests should pass. Do not leave the codebase broken between slices.

### Rule 3: Feature Flags for Incomplete Features

If a feature is not ready for users but needs to merge incrementally, hide it behind a feature flag:

```typescript
const ENABLE_TASK_SHARING = process.env.FEATURE_TASK_SHARING === 'true';

if (ENABLE_TASK_SHARING) {
  // New sharing UI
}
```

### Rule 4: Safe Defaults

New code should default to safe, conservative behavior:

```typescript
export function createTask(data: TaskInput, options?: { notify?: boolean }) {
  const shouldNotify = options?.notify ?? false;
  // ...
}
```

### Rule 5: Rollback-Friendly

Each increment should be independently revertable:

- Additive changes are easiest to revert
- Existing-code modifications should be minimal and focused
- Database migrations should have corresponding rollback migrations when the project uses them
- Avoid deleting something and replacing it in the same increment when those can be separated

## Working With Agents

When directing an agent to implement incrementally, be explicit:

```text
Start with just the database schema change and API endpoint.
Don't touch the UI yet; we'll do that in the next increment.
After implementing, run the relevant tests and build.
```

State what is in scope and what is not in scope for each increment.

## Increment Checklist

After each increment, verify:

- [ ] The change does one thing and does it completely
- [ ] Existing tests still pass
- [ ] The build succeeds
- [ ] Type checking passes when applicable
- [ ] Linting passes when applicable
- [ ] The new functionality works as expected
- [ ] The change is committed with a descriptive message when committing is part of the task

Run each verification command after a change that could affect it. After a successful run, do not repeat the same command unless code has changed since.

## Common Rationalizations

| Rationalization | Reality |
|---|---|
| "I'll test it all at the end" | Bugs compound. A bug in Slice 1 makes later slices suspect. |
| "It's faster to do it all at once" | It feels faster until something breaks and the cause is hidden in a large diff. |
| "These changes are too small to commit separately" | Small commits are cheap. Large commits hide bugs and make rollback painful. |
| "I'll add the feature flag later" | If the feature is incomplete, it should not be user-visible. |
| "This refactor is small enough to include" | Refactors mixed with features make both harder to review and debug. |
| "Let me run the build command again just to be sure" | Repeating the same command without code changes adds no information. |

## Red Flags

- More than 100 lines of code written without running tests
- Multiple unrelated changes in a single increment
- "Let me just quickly add this too" scope expansion
- Skipping the test/verify step to move faster
- Build or tests broken between increments
- Large uncommitted changes accumulating
- Building abstractions before the third use case demands it
- Touching files outside the task scope "while I'm here"
- Creating new utility files for one-time operations
- Running the same build/test command twice in a row without an intervening code change

## Verification

After completing all increments for a task:

- [ ] Each increment was individually tested
- [ ] The full relevant test suite passes
- [ ] The build is clean
- [ ] The feature works end-to-end as specified
- [ ] No uncommitted changes remain unless the user expects them
