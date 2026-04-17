# Archive Path

Use this path when a deployed or completed OpenSpec change should be archived.

## Preparation

1. Identify the exact `change-id`.
2. Confirm it still exists under `openspec/changes/`.
3. Review whether spec updates should be applied during archive.

## Archive Steps

1. Run `openspec archive <change-id> --yes`.
2. Use `--skip-specs` only for tooling-only changes where spec files should not be updated.
3. Confirm the change moved into `openspec/changes/archive/`.
4. Confirm affected specs were updated when specs were not skipped.

## Validation

1. Run `openspec validate --strict`.
2. If needed, inspect the archived change or updated specs with `openspec show`.

## Guardrails

- Do not archive an ambiguous or unconfirmed change.
- Do not skip spec updates unless there is a clear reason.
