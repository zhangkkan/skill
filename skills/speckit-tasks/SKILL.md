---
name: speckit-tasks
description: Break a SpecKit feature plan into dependency-ordered implementation tasks in repositories that contain `.specify/` and `specs/`, or when the user invokes `speckit-tasks` or `/speckit.tasks`. Use this when Codex needs to create or revise `tasks.md` for an active SpecKit feature.
---

# SpecKit Tasks

Handle only the task breakdown phase of a SpecKit feature.

## Workflow

1. Confirm the repository contains `.specify/`.
2. Read repo root `AGENTS.md` when it exists, then read `.specify/init-options.json`, `.specify/memory/constitution.md`, the active feature's `spec.md`, and `plan.md`.
3. Resolve the active feature directory with `.specify/scripts/bash/check-prerequisites.sh --paths-only` when available.
4. Generate or revise `tasks.md` as a dependency-ordered execution list.

## Guardrails

- Keep tasks small, concrete, independently verifiable, and sequenced so the next implementation step is obvious.
- Cover code, tests, docs, migrations, and rollout work when those are required by the plan.
- Do not mark tasks completed during generation.
- If `plan.md` is missing or too weak to drive implementation, stop and repair the plan before writing tasks.

## References

- Read `../speckit/references/sino-blog.md` when the repository is `sino-blog` or follows the same SpecKit layout.
