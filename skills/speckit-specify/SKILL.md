---
name: speckit-specify
description: Create or revise a SpecKit feature spec in repositories that contain `.specify/` and `specs/`, or when the user invokes `speckit-specify` or `/speckit.specify`. Use this when Codex needs to draft or update `specs/<feature>/spec.md` for a SpecKit feature.
---

# SpecKit Specify

Handle only the specification phase of a SpecKit feature.

## Workflow

1. Confirm the repository contains `.specify/`. If not, stop and ask whether to initialize SpecKit or proceed without it.
2. Read repo root `AGENTS.md` when it exists, then read `.specify/init-options.json` and `.specify/memory/constitution.md`.
3. Resolve the active feature directory with `.specify/scripts/bash/check-prerequisites.sh --paths-only` when the script exists.
4. If the user is starting a new feature and no feature folder is active, create one with `.specify/scripts/bash/create-new-feature.sh "<description>"`.
5. Draft or revise `specs/<feature>/spec.md`, using `.specify/templates/spec-template.md` when the repository provides it.

## Guardrails

- Keep the output in the spec phase. Do not generate `plan.md`, `tasks.md`, or implementation changes unless the user explicitly asks for them.
- Keep requirements concrete: user stories, acceptance criteria, constraints, edge cases, and any repo-specific rules already answered in `AGENTS.md`.
- Reuse existing feature numbering and folder naming, usually `specs/NNN-short-name/`.
- Prefer repo-stored answers over assumptions when product behavior is already documented.

## References

- Read `../speckit/references/sino-blog.md` when the repository is `sino-blog` or follows the same SpecKit layout.
