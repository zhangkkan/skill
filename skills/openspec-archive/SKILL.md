---
name: openspec-archive
description: Archive a deployed or completed OpenSpec change in a repository that contains `openspec/`. Use when the user asks to archive a finished change, update specs during archive, or validate the post-deployment OpenSpec state.
---

# OpenSpec Archive

## Use This Skill For

- Archiving a deployed OpenSpec change
- Moving completed work into `openspec/changes/archive/`
- Updating current specs during archive
- Validating the repository after archive

## First Steps

1. Confirm the repository contains `openspec/`.
2. Read `openspec/AGENTS.md`.
3. Read `openspec/project.md`.
4. Confirm the exact `change-id`.
5. Confirm the change still exists under `openspec/changes/`.

## Workflow

- Archive only on explicit user request or after confirmed deployment/completion.
- Do not archive an ambiguous or unconfirmed change.
- Do not use `--skip-specs` unless the change is tooling-only and there is a clear reason.
- Confirm the change moved to `openspec/changes/archive/`.
- Confirm affected specs were updated when specs were not skipped.

## Reference

- Read [references/archive.md](references/archive.md) for the detailed archive path.

## Validation

- Prefer strict validation after archive.
- If repository-wide validation has no default target, validate the affected spec or change explicitly.
