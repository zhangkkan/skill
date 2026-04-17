---
name: openspec-proposal
description: Create or revise an OpenSpec proposal, plan, change, or spec delta in a repository that contains `openspec/`. Use for new capabilities, breaking changes, architecture shifts, behavior-changing performance/security work, or any request to draft or update a proposal before coding.
---

# OpenSpec Proposal

## Use This Skill For

- New features or capabilities
- Breaking changes
- Architecture or workflow changes
- Requests that mention proposal, spec, plan, or change
- Ambiguous behavior-changing work that should be specified before coding

## First Steps

1. Confirm the repository contains `openspec/`.
2. Read `openspec/AGENTS.md` before drafting anything.
3. Read `openspec/project.md`.
4. Run `openspec list` and `openspec list --specs`.
5. Check `openspec/changes/` and relevant specs for overlap.

## Workflow

- Keep scope tight to the requested outcome.
- Prefer modifying an existing capability over adding a duplicate spec.
- Choose a unique verb-led `change-id`.
- Create `proposal.md`, `tasks.md`, and `design.md` only when it adds real value.
- Put each capability delta in its own `openspec/changes/<change-id>/specs/<capability>/spec.md`.
- Every requirement delta must include at least one `#### Scenario:`.

## Reference

- Read [references/proposal.md](references/proposal.md) for the detailed proposal path.

## Validation

- Run `openspec validate <change-id> --strict`.
- If validation is unclear, inspect with `openspec show <change-id> --json --deltas-only`.
