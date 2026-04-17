#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
SOURCE_ROOT="${REPO_ROOT}/skills"
TARGET_ROOT="${CODEX_HOME:-$HOME/.codex}/skills"

usage() {
  cat <<'EOF'
Usage:
  ./scripts/sync-skill.sh [skill-name]

Behavior:
  - No argument: sync all skills under ./skills/
  - With skill-name: sync only that skill

Target:
  ${CODEX_HOME:-$HOME/.codex}/skills
EOF
}

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  usage
  exit 0
fi

mkdir -p "${TARGET_ROOT}"

sync_one() {
  local skill_name="$1"
  local source_dir="${SOURCE_ROOT}/${skill_name}"
  local target_dir="${TARGET_ROOT}/${skill_name}"

  if [[ ! -d "${source_dir}" ]]; then
    echo "Skill not found: ${skill_name}" >&2
    exit 1
  fi

  echo "Syncing ${skill_name} -> ${target_dir}"
  rsync -a --delete "${source_dir}/" "${target_dir}/"
}

if [[ -n "${1:-}" ]]; then
  sync_one "$1"
  exit 0
fi

found_any=false
for dir in "${SOURCE_ROOT}"/*; do
  if [[ -d "${dir}" ]]; then
    found_any=true
    sync_one "$(basename "${dir}")"
  fi
done

if [[ "${found_any}" == false ]]; then
  echo "No skills found under ${SOURCE_ROOT}" >&2
  exit 1
fi

echo "Sync complete."
