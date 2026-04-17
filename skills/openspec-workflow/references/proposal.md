# Proposal Path

Use this path when the user asks for a proposal, spec, change, plan, or any behavior-changing feature work.

## Context

1. Read `openspec/AGENTS.md` and `openspec/project.md`.
2. Run `openspec list` and `openspec list --specs`.
3. Inspect relevant specs or code before drafting deltas.
4. Check pending changes for overlap or conflicts.

## Drafting

1. Choose a unique verb-led `change-id` such as `add-...`, `update-...`, `remove-...`, or `refactor-...`.
2. Create `openspec/changes/<change-id>/proposal.md`.
3. Create `tasks.md`.
4. Create `design.md` only when the change crosses modules, changes architecture, introduces migrations, or needs tradeoff analysis.
5. Create one spec delta file per affected capability under `openspec/changes/<change-id>/specs/<capability>/spec.md`.

## Delta Rules

- Use `## ADDED|MODIFIED|REMOVED|RENAMED Requirements`.
- Write normative requirements with `SHALL` or `MUST`.
- Every requirement needs at least one `#### Scenario:`.
- Prefer changing an existing capability when it already covers the area.

## Validation

1. Run `openspec validate <change-id> --strict`.
2. Fix every reported issue before handoff.
3. If validation is unclear, inspect with `openspec show <change-id> --json --deltas-only`.
