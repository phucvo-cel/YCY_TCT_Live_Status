# Meeting Notes, 31 August 2026

## Context

Working session between the project lead (Phuc) and Claude Code, covering the KB and Instruction sync to the SPVB working file's v11 update, and a CARTO basemap API key issue on `YCH_TCT_Live_Status_MVP.html`.

## Discussed and decided

### 1. KB and Instruction sync to CT_TCT_SPVB_Working_File_v11.md

- The working file was renamed and updated from v7 to v11, adding section V10 (YCH's own scoping-alignment-meeting statement) and decisions VD23 to VD35.
- Every cross-reference to the old v7 filename was updated to v11 across `AGENTS.md`, `Instruction/Project Instruction.md`, `KB/CT_Index.md`, `KB/CEL_YCH_Project_Instructions_v2.md`, and the two places in the Live Status MVP files that cited it.
- `AGENTS.md`'s and `KB/CT_Index.md`'s summaries of the file were expanded to mention the new decision range (VD1 to VD35) and V10's network and date override.
- Flagged, not actioned: the mockup's site naming (Hoc Mon, Thuan An) is not yet renamed to DOP, OPMT per V10, since which HCM warehouse goes first is still an open question in the working file.

### 2. CARTO basemap watermark

- CARTO now requires an API key on basemap tile requests; without one, the map renders "API KEY REQUIRED" watermarks.
- A team key was shared over Slack for shared use. The initial fix kept the codebase credential-free: `tileLayer()` reads an optional key from `localStorage("cartoApiKey")` per browser (`LS-D047`).
- On the user's explicit instruction, the shared team key was then hardcoded as a default fallback (`DEFAULT_CARTO_KEY`) so the map renders correctly with no per-viewer setup step (`LS-D048`, supersedes `LS-D047`).
- Adjustment needed, deferred to backlog (`LS-B013`): before this HTML file is shared or published outside the team, review whether the shared key is still appropriate for the new audience and domain, or request a dedicated key.

## Other adjustment noted, not yet actioned

- The HTML file's own section-map comment, at the top of `YCH_TCT_Live_Status_MVP.html`, has drifted from the file's actual line numbers (the file is 2797 lines; the map's last range ends at L2570). A full re-numbering pass is owed as a separate task.

## Files touched this session

- `AGENTS.md`, `Instruction/Project Instruction.md`, `KB/CT_Index.md`, `KB/CEL_YCH_Project_Instructions_v2.md`: filename and content sync to v11.
- `YCH_TCT_Live_Status_MVP.html`: CARTO key fix, section-map drift note.
- `YCH_TCT_Live_Status_MVP_Decision_Log.md`: LS-D047, LS-D048.
- `YCH_TCT_Live_Status_MVP_Backlog.md`: LS-B013.
