# Repository Guidelines

## Context Loading

At the start of a chat, after compaction, or after either file changes, read:

- `Instruction/Global Instruction.md`
- `Instruction/Project Instruction.md`

Other folders:

- `Meeting/` and `Note - Meeting/`: raw meeting notes and working session records. A meeting note is a dated record, not a source of ongoing truth. When a decision in it should govern future work, fold it into the relevant working file and cite the note as the source; do not delete or rewrite it.
- `Skills/`: reusable workflows, not project facts.
- `05. Product/00. Global/`: product knowledge base synced from Google Drive by Cowork daily. See section below.

## Product Knowledge Base (05. Product/00. Global/)

Read-only. Do not edit any file here. Updated daily by Cowork from the Google Drive source; when a file's date suffix changes, re-read only the sections relevant to the current task.

- `Backlog/`: active project backlog. Read the latest-dated `.xlsx` and its companion `.md` guide when checking whether a feature or defect is tracked.
- `Decisions/`: always read the highest-version `CT_TCT_SPVB_Working_File_vNN.md` (currently v14). Ignore `CT_TCT_SPVB_Handoff_2026-08-31.md`.
- `Index/`: project index. Read when locating a deliverable, owner, or timeline reference.
- `Mockup/Released/`: master UI/UX reference for all design decisions. **Before any UI/UX work, always read `/home/phucvo/Project/YCH - TCT/05. Product/00. Global/Mockup/Released/AGENTS.md` first.** That file explains how to search the mockup by line range. Never read `YCH_TCT_SPVB_v24.html` whole; it is ~1.4 MB and will exhaust the context window. Search it, then read only the lines you need.
- `PRD/`: scope, requirements, and glossary. Read for definitions and requirement references.
- `Ways of Working/`: team process and spec standards. Read the latest-dated files only; ignore `Archive/`.

## Live Status MVP Change Control

`YCH_TCT_Live_Status_MVP_v0.24.html` is the active working file. `YCH_TCT_Live_Status_MVP.html` is superseded; do not edit it.

For changes to `YCH_TCT_Live_Status_MVP_v0.24.html`:

1. Add an `LS-B###` item to `YCH_TCT_Live_Status_MVP_Backlog.md` only for work intentionally deferred.
2. Keep the backlog limited to unimplemented features, requirements, tasks, and defects. Remove items when completed, cancelled, or superseded.
3. Do not add work that will be implemented immediately.
4. For each completed material decision, add the next `LS-D###` item to `YCH_TCT_Live_Status_MVP_Decision_Log.md`, including previous behavior, revert guidance, and source.
5. Record reversals as new entries that supersede earlier IDs. Never rewrite decision history.

Do not log explanation-only questions. Flag conflicts with higher-priority sources.

## Source Priority

1. Latest explicit user or project-lead decision.
2. `Instruction/Project Instruction.md`, then `Instruction/Global Instruction.md`.
3. `05. Product/00. Global/Decisions/CT_TCT_SPVB_Working_File_vNN.md` (highest version).
4. `05. Product/00. Global/PRD/` and `05. Product/00. Global/Ways of Working/`.
5. `05. Product/00. Global/Mockup/Released/YCH_TCT_SPVB_v24.html` for UI/UX alignment.
6. Supporting references, older drafts, and examples.

Flag material conflicts. Do not silently reconcile them.

## Writing and Validation

- Use ATX headings, plain English, approved terminology, and no em dashes.
- Keep confirmed requirements, proposals, assumptions, and examples distinct.
- Use focused, imperative commit subjects.
- Do not add credentials, personal data, or unapproved operational data.
- In large HTML files, read only the affected element and its renderer. `YCH_TCT_Live_Status_MVP_v0.24.html` opens with an HTML comment section map; read that first, then search by line range.
- Search first; load only the section you need. Batch related edits.
