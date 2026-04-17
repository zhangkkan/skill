# Shared Codex Skills

这个仓库用于维护可跨项目复用的 Codex skills。

## 目录约定

- `skills/`：每个 skill 一个独立目录
- `scripts/`：仓库级辅助脚本

## 当前 skills

- `openspec-workflow`

## 使用方式

将本仓库中的 skills 同步到 Codex 全局目录：

```bash
./scripts/sync-skill.sh
```

只同步单个 skill：

```bash
./scripts/sync-skill.sh openspec-workflow
```

同步目标目录默认是：

```bash
${CODEX_HOME:-$HOME/.codex}/skills
```

## 维护建议

- 通用流程放在这里维护
- 项目差异继续保留在各自仓库内，例如 `openspec/AGENTS.md`
- 修改 skill 后，执行同步脚本，再开一个新的 Codex 会话验证是否生效
