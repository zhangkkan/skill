---
name: speckit-clarify
description: Clarify open questions in a SpecKit feature spec for repositories that contain `.specify/` and `specs/`, or when the user invokes `speckit-clarify` or `/speckit.clarify`. Use this when Codex needs to identify ambiguities in `spec.md`, ask focused follow-up questions, and fold resolved answers back into the feature artifacts.
---

# SpecKit Clarify

Handle only the clarification phase of a SpecKit feature.

## Workflow

1. Confirm the repository contains `.specify/`.
2. Read repo root `AGENTS.md` when it exists, then read `.specify/init-options.json`, `.specify/memory/constitution.md`, and the active feature's `spec.md`.
3. Check README files and existing specs before treating an issue as unresolved.
4. Identify only the highest-value ambiguities across product behavior, UX, API shape, data model, constraints, and rollout.
5. Ask focused questions only when the answer is not already documented.
6. Persist resolved answers back into `spec.md` or a repo-consistent clarification artifact.

## Guardrails

- Keep clarification targeted. Avoid reopening decisions already settled in `AGENTS.md`, README, constitution, or existing specs.
- Prefer a short list of concrete questions over a broad questionnaire.
- Do not start planning, task generation, or implementation unless the user explicitly asks for that phase too.

## References

- Read `../speckit/references/sino-blog.md` when the repository is `sino-blog` or follows the same SpecKit layout.
