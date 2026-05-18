---
name: anki
description: Generate Anki flashcards for a topic and/or term. Use this skill whenever the user asks for Anki cards, flashcards, or says things like "generate cards for X", "make some ankis on X", "can you do X in Anki format", or pastes a concept and asks for cards. Always use this skill for Anki-related requests - do not attempt to generate cards without it.
---

# Anki Card Generation

Generate a mixed set of basic (Q&A) and cloze cards for the topic we have just been discussing.

## Cloze formatting rules

- Cloze individual words separately: `{{c1::access}} {{c1::token}}` not `{{c1::access token}}`
- Multi-word terms should have each word as its own cloze deletion but sharing the same `c1` group so they blank together
- Use `c2`, `c3` etc. for secondary cloze deletions within the same card (e.g. when a card tests multiple related facts)

## Card formats

### Mode 1 - Term-focused (user gives a single term)

Generate 11 cards:

1. **1 basic definition card** - "What is [term]?" with a concise answer
2. **5 basic cards** - varied questions where the answer is the term
3. **5 cloze cards** - sentences using the term as a cloze deletion

### Mode 2 - Topic-focused (user gives a broader topic or pastes content)

Generate a mixed set of approximately 8-15 cards:

- Include both basic (Q&A) and cloze cards in roughly equal proportion
- Basic cards: question on front, answer on back
- Cloze cards: full sentence with key term(s) blanked using cloze syntax
- Cover the topic from multiple angles (definition, application, examples, comparisons)

## Style guidelines

- Cards should be in **user-facing, plain English** - avoid overly technical implementation details unless the topic demands it
- Cloze sentences should read naturally and provide enough context to answer without the blank. The clozed words should only cover the key terms.
- Basic card answers should be concise (one line max, only the key terms where possible)
- For biblical/theological topics, use accurate terminology and reference scripture where relevant
- For technical/programming topics, include concrete examples or use cases

## Output format

Group cards clearly:

**Cloze Cards**
[cloze cards]

**Basic (Q&A) Cards**
Q: ...
A: ...
