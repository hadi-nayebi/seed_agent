#!/usr/bin/env bash
# install.sh — Seed Agent Installer
# Version: v1.0.0
# Description: Installs the Seed Agent cognitive architecture into a target directory.

set -euo pipefail

log() { echo -e "\033[1;34m[Seed Agent]\033[0m $1"; }
error() { echo -e "\033[1;31m[Error]\033[0m $1" >&2; exit 1; }

if [[ $# -eq 0 ]]; then
  echo "Usage: $0 /path/to/target/project"
  exit 1
fi

TARGET_DIR="$1"
SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Ensure target directory exists
if [[ ! -d "$TARGET_DIR" ]]; then
  log "Creating target directory: $TARGET_DIR"
  mkdir -p "$TARGET_DIR"
fi

# Conflict checking: Only allow installation if .claude/ and CLAUDE.md do not exist
if [[ -f "$TARGET_DIR/CLAUDE.md" ]] || [[ -d "$TARGET_DIR/.claude" ]]; then
  error "Target directory already contains a CLAUDE.md file or a .claude/ directory."
  error "The Seed Agent installer currently only supports fresh, uninitialized projects."
fi

log "Installing Seed Agent into $TARGET_DIR..."

# 1. Copy the Root Brain Template
if [[ -f "$SOURCE_DIR/CLAUDE.md" ]]; then
  cp "$SOURCE_DIR/CLAUDE.md" "$TARGET_DIR/CLAUDE.md"
  log "Created root CLAUDE.md working memory"
else
  error "Missing source CLAUDE.md template in $SOURCE_DIR"
fi

# 2. Copy the .claude directory structure
log "Copying digital cortex structure (.claude/)..."
cp -r "$SOURCE_DIR/.claude" "$TARGET_DIR/"

# 3. Setup Settings and Hooks
if [[ -f "$SOURCE_DIR/settings.json.template" ]]; then
  cp "$SOURCE_DIR/settings.json.template" "$TARGET_DIR/.claude/settings.local.json"
  log "Configured hook registrations"
fi

log "Installation Complete! 🚀"
echo ""
echo "To activate your new Seed Agent:"
echo "  1. cd $TARGET_DIR"
echo "  2. claude --allow-dangerously-skip-permissions"
echo ""
echo "Just tell Claude what you want to achieve, and the job system will take over."
