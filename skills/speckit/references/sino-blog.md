# Sino Blog SpecKit Notes

Use this reference when the active repository is `sino-blog` or another repo copied from the same SpecKit layout.

## Repository Signals

- `.specify/init-options.json` currently shows:
  - `speckit_version`: `0.3.0`
  - `here`: `true`
  - `script`: `sh`
- Feature artifacts live under `specs/NNN-feature-name/`, not at repository root.
- The repository already contains many historical SpecKit feature folders; prefer matching the existing layout instead of inventing a new one.

## Local Scripts

- `.specify/scripts/bash/create-new-feature.sh`
  - Create the next numbered feature folder and branch-style identifier.
  - Accept `--short-name` and `--number` overrides.

- `.specify/scripts/bash/check-prerequisites.sh`
  - Use `--paths-only` to resolve the active feature paths.
  - Use `--require-tasks` when implementation depends on `tasks.md`.
  - Use `--include-tasks` when reporting available artifacts.

- `.specify/scripts/bash/setup-plan.sh`
  - Copy the local `plan-template.md` into the active feature folder.
  - Enforce the branch-to-feature resolution used by this repository.

## Constitution Highlights

Read `.specify/memory/constitution.md` directly before planning or implementation. The recurring rules that most often affect SpecKit output are:

- Preserve modular boundaries across backend API, blog frontend, and admin frontend.
- Design API changes before frontend implementation.
- Keep `docs/openapi.yaml` synchronized with every API change.
- Keep API-facing error `message` values in English or i18n-key form, not hard-coded Chinese.
- Keep work incrementally deliverable and testable.

## AGENTS.md Usage

- Read repo root `AGENTS.md` before treating product details as open questions.
- Treat answers recorded there as resolved product decisions unless the user explicitly changes them.
- Reuse those answers when drafting specs, clarifications, plans, or checklists so the workflow does not ask the same question twice.
