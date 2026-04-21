---
name: speckit-checklist
description: Generate a feature-specific validation checklist for SpecKit work in repositories that contain `.specify/` and `specs/`, or when the user invokes `speckit-checklist` or `/speckit.checklist`. Use this when Codex needs to turn a SpecKit feature into concrete verification coverage before handoff or release.
---

# SpecKit Checklist

Handle the verification-checklist phase of a SpecKit feature.

## Workflow

1. Confirm the repository contains `.specify/`.
2. Read repo root `AGENTS.md` when it exists, then read `.specify/init-options.json`, `.specify/memory/constitution.md`, and the active feature's `spec.md`, `plan.md`, `tasks.md`, plus relevant implementation notes when they exist.
3. Produce a checklist tailored to the feature's acceptance criteria, edge cases, failure modes, migration impact, and regression risk.

## Guardrails

- Prefer feature-specific checks over generic boilerplate.
- Include security, permissions, data integrity, migration, API compatibility, and rollback checks when they are relevant.
- Keep checklist items testable and easy to execute.

## References

- Read `../speckit/references/sino-blog.md` when the repository is `sino-blog` or follows the same SpecKit layout.
