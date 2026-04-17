---
name: openspec-workflow
description: Guide for OpenSpec spec-driven development workflows. Use when a repository contains `openspec/` and Codex needs to create or revise a proposal/spec delta, implement an approved OpenSpec change, archive a deployed change, run OpenSpec validation, or explain the OpenSpec workflow used by the project.
---

# OpenSpec Workflow

## Overview

Follow the OpenSpec lifecycle consistently across repositories: inspect project-specific rules, choose the correct phase, execute the required steps, and validate before handoff. Treat each repository's `openspec/AGENTS.md` and `openspec/project.md` as the local authority.

## Workflow Decision

- If the repository does not contain `openspec/`, stop and ask whether to initialize OpenSpec or proceed without it.
- If `openspec/AGENTS.md` exists, read it before changing specs or code.
- Read `openspec/project.md`, `openspec list`, and `openspec list --specs` whenever scope or existing capabilities are relevant.
- Check `openspec/changes/` for pending work before drafting or implementing anything that may overlap.

## Choose The Path

- Proposal path: use for new features, behavior-changing performance/security work, breaking changes, architecture shifts, or any request to create a spec/change/proposal.
- Implementation path: use only after confirming there is an approved change and after reading `proposal.md`, `design.md` if present, and `tasks.md`.
- Archive path: use after deployment or on explicit user request to archive a completed change.

## Shared Guardrails

- Keep scope tight to the requested outcome.
- Prefer modifying an existing capability over creating duplicate specs.
- Every requirement delta must include at least one `#### Scenario:`.
- Do not mark tasks complete until the underlying work is actually done.
- Run strict validation after proposal or archive changes and fix validation errors before handoff.
- Do not start implementation before approval unless the repository's own OpenSpec guidance explicitly permits it.

## References

- For proposal work, read [references/proposal.md](references/proposal.md).
- For implementation work, read [references/apply.md](references/apply.md).
- For archive work, read [references/archive.md](references/archive.md).

## Validation

- Validate targeted work with `openspec validate <change-id> --strict`.
- Validate repository-wide consistency with `openspec validate --strict` when appropriate.
- If validation output is ambiguous, inspect the affected change or spec with `openspec show`.
