# Implementation Path

Use this path only for an approved OpenSpec change.

## Read First

1. Read `openspec/changes/<id>/proposal.md`.
2. Read `design.md` if it exists.
3. Read `tasks.md`.
4. Read any affected current specs under `openspec/specs/`.

## Execution Rules

1. Implement tasks in a sensible order.
2. Keep changes scoped to the approved proposal.
3. Cross-check behavior against the proposal and spec deltas while coding.
4. Complete the real work before updating task checkboxes.

## Completion

1. Verify every task in `tasks.md` is truly complete.
2. Mark completed tasks as `- [x]`.
3. Run the relevant project tests or checks.
4. Run `openspec validate <change-id> --strict` if the change touches specs or OpenSpec files.

## If Scope Drifts

- Stop and update the proposal first instead of silently expanding implementation.
