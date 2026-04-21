---
name: speckit-plan
description: Generate or revise the technical plan for a SpecKit feature in repositories that contain `.specify/` and `specs/`, or when the user invokes `speckit-plan` or `/speckit.plan`. Use this when Codex needs to produce `plan.md` and any supporting design artifacts for an active SpecKit feature.
---

# SpecKit Plan

Handle only the planning and design phase of a SpecKit feature.

## Workflow

1. Confirm the repository contains `.specify/`.
2. Read repo root `AGENTS.md` when it exists, then read `.specify/init-options.json`, `.specify/memory/constitution.md`, and the active feature's `spec.md`.
3. Resolve the active feature directory with `.specify/scripts/bash/check-prerequisites.sh --paths-only` when available.
4. Run `.specify/scripts/bash/setup-plan.sh` when the repository provides it and the feature is entering the planning phase.
5. Generate or revise `plan.md`.
6. Add `research.md`, `data-model.md`, `contracts/`, or `quickstart.md` only when they materially improve implementation clarity.

## Guardrails

- Keep the plan implementation-oriented: architecture impact, data model, API surface, frontend or workflow impact, testing, migration, and rollout.
- Mention synchronized `docs/openapi.yaml` updates whenever API behavior changes.
- Do not generate `tasks.md` or implementation code unless the user explicitly requests that next phase.

## References

- Read `../speckit/references/sino-blog.md` when the repository is `sino-blog` or follows the same SpecKit layout.
