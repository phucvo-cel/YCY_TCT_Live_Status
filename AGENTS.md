# Repository Guidelines

## Structure and Context Loading

- `Instruction/` contains governing instructions and stable context.
- `KB/` contains detailed project knowledge.
- `Skills/` contains reusable workflows, not project facts.

At the start of a chat, after compaction, or after either file changes, read:

- `Instruction/Global Instruction.md`
- `Instruction/Project Instruction.md`

Do not reread unchanged context. Search first and load only the relevant section:

- `KB/CT_Index.md`: entry point for the working file and knowledge base. Start here to find which of the three files below, and which line range, covers what you need.
- `KB/CT_A_Proposal_Working_File.md`: Part A, Track 1 (Supply Chain Orchestration Control Tower) decisions, worked example, slide inventory, assumptions.
- `KB/CT_C_Transport_Control_Tower_Working_File.md`: Part C, Track 2 (Transport Control Tower) engagement, architecture, delivery plan, and the dated decision record C1 to C21.
- `KB/CT_B_Knowledge_Base.md`: Part B, supporting knowledge (plan mechanics, ERP/3PL boundary, glossary, web research).
- `KB/CEL_YCH_TCT_Scope_and_Delivery_Workshop.md`: workshop outputs, delivery, architecture, roadmap, and client-facing scope.
- `KB/UI instruction.md`: UI, UX, frontend, visualization, HTML mockups, and MVP work.
- `KB/CEL_TCT_Artefact_Starter_Pack_v4.md`: specifications, acceptance criteria, reference data, tests, UAT, and features.

The three `CT_*` files above were split out of `KB/CT_Working_File_and_Knowledge_Base_v13.md` (25 August 2026) for narrower loading; that original file is kept unmodified as the full-text archive at `KB/archive/CT_Working_File_and_Knowledge_Base_v13.md` and is not read in normal work. Each `CT_*` file, and `KB/UI instruction.md`, opens with a `## Contents` list giving a line number for every subsection.

Read a whole KB file only for a full-document review or a genuinely document-wide task. Preserve established filenames.

## Focused Workflow

- For targeted work, inspect only the target and direct dependencies. Start with narrow `rg` searches and normally view no more than 120 surrounding lines.
- In large HTML files, inspect only the affected element, data, and renderer. `YCH_TCT_Live_Status_MVP.html` opens with an HTML-comment section map (line ranges for CSS, each body panel, and each script region); read that comment before the rest of the file, not instead of it.
- Batch related edits and validate only changed behavior and files.
- Skip screenshots for non-layout changes unless requested.
- Keep updates concise and do not reconfirm context already inspected.

## Live Status MVP Change Control

For intended changes to `YCH_TCT_Live_Status_MVP.html`:

1. Add an `LS-B###` item to `YCH_TCT_Live_Status_MVP_Backlog.md` only when requested work is intentionally deferred for future implementation.
2. Keep the backlog limited to unimplemented features, requirements, tasks and defects. Refine and reprioritise it as project needs change.
3. Do not add work that will be implemented immediately. When an existing backlog item is completed, cancelled or superseded, remove it from the active backlog.
4. For a completed or accepted material decision, add the next `LS-D###` item to `YCH_TCT_Live_Status_MVP_Decision_Log.md`, including previous behavior, revert guidance and source. A backlog ID is optional when the work originated there.
5. Record reversals as new decision entries that supersede earlier IDs. Never rewrite decision history.

Do not log explanation-only questions. Distinguish mockup decisions from confirmed requirements and flag conflicts with higher-priority sources.

## Source Priority

1. Latest explicit user or project-lead decision.
2. `KB/CEL_YCH_Project_Instructions_v2.md`, then `Instruction/Project Instruction.md`.
3. `KB/CT_Index.md` and the `CT_*` working files it points to.
4. Latest approved client-facing or workshop material.
5. Supporting references, UI guidance, starter packs, older drafts, and examples.

Flag material conflicts. Do not silently reconcile them.

## Writing, Validation, and Security

- Use ATX headings, plain English, approved terminology, business names, labelled units, consistent number formats, and no em dashes.
- Keep confirmed requirements, proposals, assumptions, and examples distinct.
- For changed Markdown, run the heading check, em dash check, and `git diff --check` when Git metadata is available.
- Use focused, imperative commit subjects. PRs should state purpose, files, sources, assumptions, and unresolved conflicts; include screenshots only for visual changes.
- Do not add credentials, personal data, or unapproved operational data. Keep YCH information within this client scope.
