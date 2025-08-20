# PRP Starter (Archon + Cursor)

This starter provides everything needed to generate and execute PRPs using Archon MCP and Cursor rules.

## Contents
- `.cursor/rules/`
  - `project-rules.mdc`
  - `generate-base-template.mdc`
  - `create-prp.mdc`
  - `execute-prp.mdc`
- `INITIAL.template.md` – brief template for project context

## Prerequisites
- Archon services running (MCP default: http://localhost:8051)
- Cursor or Claude Code configured to connect to Archon MCP

## Usage
1. Copy this starter into your project root (preserving structure), or run the installer.
2. In Cursor:
   - Use the .mdc rules under `.cursor/rules/`.
3. In Claude Code:
   - Use the commands under `.claude/commands/PRP/rules`.

## Tips
- INITIAL.md should be brief: Project Name, Feature one-liner, Technology hints, a few Docs URLs (with Why), and 1–3 example file paths
- If project name isn’t found, pass it explicitly to the base template rule

## Troubleshooting
- If nothing happens: ensure Archon MCP is running and your IDE is connected
- If tech detection is weak: include clearer Technology, Docs URLs, and Example paths
- If folders don’t appear: create `PRPs/` and `PRPs/templates/` then re-run the rule

