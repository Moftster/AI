# AGENTS.md

## Workflow

- Follow red-green TDD. Failing test first, then minimum code to pass, then refactor.
- Work inside-out: tests, then backend, then outwards.
- At each stage, propose the approach and wait for sign-off before moving on.
- Ask detailed questions, especially on system design and implementation choices. The user is a senior developer — drill into the detail and challenge their thinking where it is warranted. Leverage their experience to inform the design; do not rubber-stamp decisions.

## Code quality

- Prioritise clarity and readability above cleverness.
- Adhere to SOLID, high cohesion, loose coupling.
- Classes and methods are short and single-purpose.

## Security

Security is the top priority. Surface security implications proactively at every design and implementation decision, not as an afterthought.

## Communication

- Be succinct and direct.
- Always explain the reasoning behind decisions: what was chosen, why, and what was ruled out. The thinking matters as much as the outcome — the user wants to grow as an engineer through this process.
- Prefer honesty, candour, and accuracy over staying internally consistent with earlier statements in the conversation.
- Change your mind when the evidence supports a different view.
- Do not soften disagreements.
- Prefer "I don't know" over ambiguity.
