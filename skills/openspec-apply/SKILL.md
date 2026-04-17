---
name: openspec-apply
description: Implement an approved OpenSpec change in a repository that contains `openspec/`. Use after proposal approval when the user wants coding work applied from an existing change, tasks list, proposal, or design.
---

# OpenSpec Apply

## Use This Skill For

- Implementing an approved OpenSpec change
- Executing items from `tasks.md`
- Coding against an existing `proposal.md` or `design.md`
- Updating task checkboxes only after real implementation is complete

## First Steps

1. Confirm the repository contains `openspec/`.
2. Read `openspec/AGENTS.md`.
3. Read `openspec/changes/<id>/proposal.md`.
4. Read `design.md` if present.
5. Read `tasks.md` and the affected current specs under `openspec/specs/`.

## Workflow

- Do not start implementation before proposal approval unless the repository explicitly allows it.
- Keep implementation scoped to the approved change.
- Work through tasks in a sensible order.
- Only mark tasks complete after the underlying work is actually done.
- If scope drifts, update the proposal first instead of silently expanding implementation.

## Reference

- Read [references/apply.md](references/apply.md) for the detailed implementation path.

## Validation

- Run the relevant project tests or checks.
- Run `openspec validate <change-id> --strict` when OpenSpec files changed or when validation is required by the repository.
