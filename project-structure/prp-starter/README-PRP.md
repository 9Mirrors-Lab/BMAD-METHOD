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
- Cursor configured to connect to Archon MCP

## Usage
1. Create a new workspace/folder for your project.
2. Copy this `prp-starter` contents into your project root (preserving structure):
   - `.cursor/rules/` → `.cursor/rules/`
   - `INITIAL.template.md` → rename to `INITIAL.md` and fill in
3. In Cursor:
   - Run: `generate-base-template.mdc PRPs/INITIAL.md {ProjectName}`
     - Generates `PRPs/templates/prp-base-{tech}.json` and saves PRP to Archon
   - Run: `create-prp.mdc PRPs/INITIAL.md`
     - Produces feature PRP using the base and project context
   - Run: `execute-prp.mdc PRPs/template-{tech}.md`
     - Executes tasks and validates at 4 levels

## Tips
- INITIAL.md should be brief: Project Name, Feature one-liner, Technology hints, a few Docs URLs (with Why), and 1–3 example file paths
- If project name isn’t found, pass it explicitly to `generate-base-template.mdc`
- Check Archon UI to verify PRP document (document_type="prp") is stored

## Troubleshooting
- If nothing happens: ensure Archon MCP is running and Cursor is connected
- If tech detection is weak: include clearer Technology, Docs URLs, and Example paths
- If folders don’t appear: create `PRPs/` and `PRPs/templates/` then re-run the rule
