# SpecKit Command Mapping

Use this reference when a user still thinks in old slash-command terms or when you need to map them to the new prefixed skills.

## Direct Commands To Skills

- `/specify` -> `speckit-specify`
- `/clarify` -> `speckit-clarify`
- `/plan` -> `speckit-plan`
- `/tasks` -> `speckit-tasks`
- `/implement` -> `speckit-implement`
- `/analyze` -> `speckit-analyze`
- `/checklist` -> `speckit-checklist`
- `/constitution` -> `speckit-constitution`

## Slash Commands To Skill Actions

- `/speckit.specify` -> `speckit-specify`
  - Create a new feature folder or open the active one.
  - Draft or revise `specs/<feature>/spec.md`.
  - Base the structure on `.specify/templates/spec-template.md`.

- `/speckit.clarify` -> `speckit-clarify`
  - Scan `spec.md` for unresolved product, UX, API, or data-model questions.
  - Check `AGENTS.md`, README, and existing specs before asking new questions.
  - Persist clarified answers back into `spec.md` or a repo-consistent clarification doc.

- `/speckit.plan` -> `speckit-plan`
  - Generate `plan.md`.
  - Add `research.md`, `data-model.md`, `contracts/`, and `quickstart.md` only when they materially help implementation.
  - Use `.specify/scripts/bash/setup-plan.sh` when present.

- `/speckit.tasks` -> `speckit-tasks`
  - Break `plan.md` into dependency-ordered tasks.
  - Keep tasks concrete, testable, and small enough to execute directly.

- `/speckit.implement` -> `speckit-implement`
  - Read `spec.md`, `plan.md`, `tasks.md`, and any supporting docs first.
  - Implement in dependency order.
  - Mark tasks complete only after code, tests, and required docs are updated.

- `/speckit.analyze` -> `speckit-analyze`
  - Review consistency across spec, plan, tasks, code, and constitution.
  - Flag missing artifacts, contradictions, undocumented API changes, and stale tasks.

- `/speckit.checklist` -> `speckit-checklist`
  - Produce a feature-specific validation list.
  - Prefer acceptance criteria, edge cases, security, migration, and regression checks over generic boilerplate.

- `/speckit.constitution` -> `speckit-constitution`
  - Update `.specify/memory/constitution.md`.
  - Propagate any workflow-affecting rule changes into relevant templates.

## Artifact Expectations

- `spec.md`: user stories, acceptance criteria, constraints, edge cases.
- `plan.md`: technical design, architecture impact, APIs, storage, testing, rollout.
- `tasks.md`: ordered execution list with clear ownership of each change unit.
- `research.md`: only for meaningful unknowns or tradeoff analysis.
- `data-model.md`: only when entities or relationships need explicit definition.
- `contracts/`: only when API or integration contracts need durable documentation.
- `quickstart.md`: only when the feature needs explicit test or usage flows.
