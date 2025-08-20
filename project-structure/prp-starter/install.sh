#!/bin/bash
set -euo pipefail

SRC_DIR="$(cd "$(dirname "$0")" && pwd)"
DEST_DIR="${1:-.}"

mkdir -p "$DEST_DIR/.cursor/rules"

# Copy rules
cp -f "$SRC_DIR/.cursor/rules/project-rules.mdc" "$DEST_DIR/.cursor/rules/"
cp -f "$SRC_DIR/.cursor/rules/generate-base-template.mdc" "$DEST_DIR/.cursor/rules/"
cp -f "$SRC_DIR/.cursor/rules/create-prp.mdc" "$DEST_DIR/.cursor/rules/"
cp -f "$SRC_DIR/.cursor/rules/execute-prp.mdc" "$DEST_DIR/.cursor/rules/"

# Copy README
cp -f "$SRC_DIR/README-PRP.md" "$DEST_DIR/README-PRP.md"

# Copy INITIAL template
if [ -f "$DEST_DIR/INITIAL.md" ]; then
  cp -f "$SRC_DIR/INITIAL.template.md" "$DEST_DIR/INITIAL.template.md"
  echo "Found existing INITIAL.md. Wrote INITIAL.template.md alongside it."
else
  cp -f "$SRC_DIR/INITIAL.template.md" "$DEST_DIR/INITIAL.md"
  echo "Created INITIAL.md from template."
fi

echo "Installed PRP starter into: $DEST_DIR"
