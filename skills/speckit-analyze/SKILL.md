---
name: speckit-analyze
description: Analyze consistency across SpecKit artifacts and code in repositories that contain `.specify/` and `specs/`, or when the user invokes `speckit-analyze` or `/speckit.analyze`. Use this when Codex needs to review `spec.md`, `plan.md`, `tasks.md`, implementation, and constitution constraints for gaps or contradictions.
---

# SpecKit Analyze

Handle the review and consistency-check phase of a SpecKit feature.

## Workflow

1. Confirm the repository contains `.specify/`.
2. Read repo root `AGENTS.md` when it exists, then read `.specify/init-options.json`, `.specify/memory/constitution.md`, and the active feature's `spec.md`, `plan.md`, `tasks.md`, plus any supporting design artifacts and relevant code.
3. Compare the artifacts and implementation for contradictions, missing work, undocumented API changes, stale tasks, and constitution violations.
4. Report findings with the concrete file or artifact that needs correction.

## Guardrails

- Prioritize real inconsistencies over generic advice.
- Call out missing artifacts when the workflow requires them.
- Keep review scope tied to the active feature unless the user asks for a broader audit.

## References

- Read `../speckit/references/sino-blog.md` when the repository is `sino-blog` or follows the same SpecKit layout.
