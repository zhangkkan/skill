---
name: speckit
description: Legacy compatibility shim for prompts that explicitly invoke `$speckit` or `/speckit.*` in repositories that contain `.specify/` and `specs/`. Use this only when the old umbrella SpecKit skill is requested directly; otherwise prefer `speckit-specify`, `speckit-clarify`, `speckit-plan`, `speckit-tasks`, `speckit-implement`, `speckit-analyze`, `speckit-checklist`, or `speckit-constitution`.
---

# SpecKit Workflow

This skill is now a compatibility layer, not the default SpecKit entry point.

## Routing

1. If the repository does not contain `.specify/`, stop and ask whether to initialize SpecKit or proceed without it.
2. Read repo root `AGENTS.md` when it exists, then read `.specify/init-options.json` and `.specify/memory/constitution.md`.
3. Route the task to exactly one phase:
   - `speckit-specify`: create or revise `specs/<feature>/spec.md`
   - `speckit-clarify`: resolve the highest-value ambiguities in `spec.md`
   - `speckit-plan`: generate or revise `plan.md` and supporting design artifacts
   - `speckit-tasks`: break the plan into dependency-ordered `tasks.md`
   - `speckit-implement`: execute `tasks.md` and keep code, docs, and tests in sync
   - `speckit-analyze`: review consistency across spec, plan, tasks, code, and constitution rules
   - `speckit-checklist`: generate a feature-specific validation checklist
   - `speckit-constitution`: update `.specify/memory/constitution.md` and any synced templates
4. Do not try to handle multiple phases in one broad workflow unless the user explicitly asks for that.

## References

- Read [references/command-mapping.md](references/command-mapping.md) for the old slash-command mapping and the new per-command routing.
- Read [references/sino-blog.md](references/sino-blog.md) when working in the Sino Blog repository or a repository cloned from the same SpecKit setup.
