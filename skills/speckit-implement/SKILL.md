---
name: speckit-implement
description: Implement an active SpecKit feature from its task list in repositories that contain `.specify/` and `specs/`, or when the user invokes `speckit-implement` or `/speckit.implement`. Use this when Codex needs to execute `tasks.md`, update code and docs, and keep SpecKit artifacts in sync.
---

# SpecKit Implement

Handle only the implementation phase of a SpecKit feature.

## Workflow

1. Confirm the repository contains `.specify/`.
2. Read repo root `AGENTS.md` when it exists, then read `.specify/init-options.json`, `.specify/memory/constitution.md`, and the active feature's `spec.md`, `plan.md`, `tasks.md`, plus any supporting design artifacts.
3. Resolve the active feature directory with `.specify/scripts/bash/check-prerequisites.sh --paths-only --include-tasks` when available.
4. Implement in dependency order.
5. Update code, tests, docs, and any referenced contracts or rollout notes together.
6. Mark task items complete only after the corresponding work is actually done.

## Guardrails

- Keep implementation aligned with the spec, plan, constitution, and repo conventions.
- Synchronize `docs/openapi.yaml` with API changes.
- Keep API-facing error `message` values in English or i18n-key form when the constitution requires it.
- If `tasks.md` is missing, stale, or contradicted by the code, repair the artifacts before claiming the work complete.

## References

- Read `../speckit/references/sino-blog.md` when the repository is `sino-blog` or follows the same SpecKit layout.
