# Shared Codex Skills

这个仓库用于维护可跨项目复用的 Codex skills。

## 目录约定

- `skills/`：每个 skill 一个独立目录
- `scripts/`：仓库级辅助脚本

## 当前 skills

- OpenSpec：`openspec-proposal`、`openspec-apply`、`openspec-archive`、`openspec-workflow`（兼容层）
- SpecKit：`speckit-specify`、`speckit-clarify`、`speckit-plan`、`speckit-tasks`、`speckit-implement`、`speckit-analyze`、`speckit-checklist`、`speckit-constitution`
- SpecKit 兼容层：`speckit`

## 使用方式

将本仓库中的 skills 同步到 Codex 全局目录：

```bash
./scripts/sync-skill.sh
```

只同步单个 skill：

```bash
./scripts/sync-skill.sh openspec-proposal
./scripts/sync-skill.sh openspec-apply
./scripts/sync-skill.sh openspec-archive
./scripts/sync-skill.sh openspec-workflow
./scripts/sync-skill.sh speckit-specify
./scripts/sync-skill.sh speckit-plan
./scripts/sync-skill.sh speckit-implement
./scripts/sync-skill.sh speckit
```

同步目标目录默认是：

```bash
${CODEX_HOME:-$HOME/.codex}/skills
```

## 维护建议

- OpenSpec 的 proposal / apply / archive 分别维护，避免一个 skill 覆盖全流程触发
- SpecKit 拆分技能统一使用 `speckit-` 前缀，降低裸名 `plan` / `tasks` 这类通用词带来的歧义
- `openspec-workflow` 仅保留兼容用途，不再承担通用触发
- `speckit` 仅保留兼容用途，不再作为默认入口
- 项目差异继续保留在各自仓库内，例如 `openspec/AGENTS.md`
- 修改 skill 后，执行同步脚本，再开一个新的 Codex 会话验证是否生效
