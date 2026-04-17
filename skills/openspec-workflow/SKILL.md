---
name: openspec-workflow
description: Legacy compatibility shim for prompts that explicitly invoke `$openspec-workflow`. Use this only when the old skill name is requested directly; otherwise prefer `openspec-proposal`, `openspec-apply`, or `openspec-archive`.
---

# OpenSpec Workflow

This skill is now a compatibility layer, not the default OpenSpec entry point.

## Routing

1. If the repository contains `openspec/`, read `openspec/AGENTS.md` first.
2. Route the task to exactly one path:
   - `openspec-proposal`: create or revise a proposal, plan, spec delta, or behavior-changing change
   - `openspec-apply`: implement an approved change from `proposal.md`, `design.md`, or `tasks.md`
   - `openspec-archive`: archive a deployed or completed change
3. Do not try to handle multiple phases in one broad workflow unless the user explicitly asks for that.

## References

- Proposal details: [references/proposal.md](references/proposal.md)
- Apply details: [references/apply.md](references/apply.md)
- Archive details: [references/archive.md](references/archive.md)
