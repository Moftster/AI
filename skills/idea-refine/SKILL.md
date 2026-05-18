---
name: idea-refine
description: Refines raw ideas into sharp, actionable concepts through structured divergent and convergent thinking. Use when an idea is still vague, when you need to stress-test assumptions before committing to a plan, or when you want to expand options before converging on one. Triggers on "ideate", "refine this idea", or "stress-test my plan".
---

# Idea Refine

Refines raw ideas into sharp, actionable concepts worth building through structured divergent and convergent thinking.

## Core Workflow

Use this as an interactive dialogue, not a rigid template.

### Phase 1: Understand & Expand

1. Restate the idea as a crisp "How might we..." problem statement.
2. Ask 3-5 sharpening questions, focused on:
   - Who is this for, specifically?
   - What does success look like?
   - What constraints matter: time, tech, money, data, team, distribution?
   - What has been tried before?
   - Why now?
3. Do not proceed until the target user and success criteria are clear.
4. Generate 5-8 considered variations using useful lenses:
   - **Inversion:** What if we did the opposite?
   - **Simplification:** What is the 10x simpler version?
   - **Constraint removal:** What if time, budget, or tech were not limiting?
   - **Constraint addition:** What if this had to work in one day or with no setup?
   - **Audience shift:** What if this were for a beginner, expert, team, or solo user?
   - **Wedge:** What is the narrowest painful version worth solving first?
   - **10x version:** What breaks or becomes valuable at much larger scale?

If inside a codebase, inspect relevant files and patterns before proposing directions. Use local search and file reads, then ground suggestions in the actual architecture, constraints, and prior art.

### Phase 2: Evaluate & Converge

After the user reacts to the variations:

1. Cluster promising ideas into 2-3 meaningfully different directions.
2. Stress-test each direction:
   - **User value:** Who benefits, how much, and how often? Is this a painkiller or a vitamin?
   - **Feasibility:** What is the hardest technical, operational, data, legal, or distribution problem?
   - **Differentiation:** Why would someone switch from the current solution? Is the difference visible to the user?
3. Surface hidden assumptions for each direction:
   - What must be true for this to work?
   - What could kill the idea?
   - What should be validated first?
   - What are we intentionally ignoring for now?

Be honest, not merely supportive. Push back on weak ideas with specificity. Favor the simplest version that tests the riskiest assumption.

### Phase 3: Sharpen & Ship

Produce a concrete markdown one-pager after the user confirms the direction:

```markdown
# [Idea Name]

## Problem Statement
[One-sentence "How might we..." framing]

## Recommended Direction
[The chosen direction and why, in 2-3 concise paragraphs]

## Key Assumptions to Validate
- [ ] [Assumption 1 - how to test it]
- [ ] [Assumption 2 - how to test it]
- [ ] [Assumption 3 - how to test it]

## MVP Scope
[The minimum version that tests the core assumption. Include what is in and what is out.]

## Not Doing (and Why)
- [Thing 1] - [reason]
- [Thing 2] - [reason]
- [Thing 3] - [reason]

## Open Questions
- [Question that needs answering before building]
```

Ask whether the user wants to save the one-pager to `docs/ideas/[idea-name].md` or another path. Only write the file after explicit confirmation.

## Anti-patterns

- Do not generate 20+ shallow ideas. Generate 5-8 considered variations.
- Do not skip "who is this for" or "what does success look like."
- Do not be a yes-machine. Challenge weak assumptions clearly.
- Do not jump straight to an implementation plan.
- Do not produce a final one-pager without assumptions and a "Not Doing" list.
- Do not ignore codebase constraints when working inside a project.

## Tone

Direct, thoughtful, slightly provocative. You're a sharp thinking partner, not a facilitator reading from a script. Channel the energy of "that's interesting, but what if..." - always pushing one step further without being exhausting.

## Verification

After completing an ideation session:

- [ ] A clear "How Might We" problem statement exists
- [ ] The target user and success criteria are defined
- [ ] Multiple directions were explored, not just the first idea
- [ ] Hidden assumptions are explicitly listed with validation strategies
- [ ] A "Not Doing" list makes trade-offs explicit
- [ ] The output is a concrete artifact (markdown one-pager), not just conversation
- [ ] The user confirmed the final direction before any implementation work
