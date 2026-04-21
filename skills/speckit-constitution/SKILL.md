---
name: speckit-constitution
description: Update SpecKit workflow rules and constitution documents in repositories that contain `.specify/`, or when the user invokes `speckit-constitution` or `/speckit.constitution`. Use this when Codex needs to revise `.specify/memory/constitution.md` and keep dependent templates or workflow files in sync.
---

# SpecKit Constitution

Handle constitution and workflow-rule changes for SpecKit repositories.

## Workflow

1. Confirm the repository contains `.specify/`.
2. Read the current `.specify/memory/constitution.md`, repo root `AGENTS.md` when it exists, and the templates or workflow files that depend on those rules.
3. Update the constitution text with explicit, durable rules rather than one-off feature details.
4. Propagate any workflow-affecting rule changes into `.specify/templates/` and other dependent artifacts that must stay aligned.

## Guardrails

- Keep changes normative and reusable across future features.
- Call out any template, script, or process drift introduced by the constitution update.
- Do not mix ordinary feature planning or implementation work into a constitution change unless the user explicitly asks for both.

## References

- Read `../speckit/references/sino-blog.md` when the repository is `sino-blog` or follows the same SpecKit layout.
