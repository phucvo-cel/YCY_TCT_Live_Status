# Specification template

Copy this file into your sub-module's Working folder, rename it
`CTx.y_Specification_v0.1_YYYY-MM-DD.md`, and delete these first two paragraphs.

The shape is fixed: what it is for, who uses it, the happy path, the unhappy paths, out of scope, open questions. One section per feature within your sub-module. Section 3 of the ways of working guide explains why each part is there; keep it open beside this.

---

# CTx.y Sub-module name, specification

Owner: your name. Version 0.1, draft, date.

Points at: PRD sections [which ones]. Registers used: [exceptions, parameters, milestones, users, KPIs, as applicable].

---

## Feature name

**What it is for.** Two or three sentences. The operational problem, not the feature name. Why an operator cannot do their job without this.

**Who uses it.** Roles from the users register. Not names. Say what each of them does here, not just that they have access.

**The happy path.**

Given [a precondition that is true before anything happens],
when [the action or the event],
then [what the tower does, observably].

Add a second and third scenario if the happy path has real variants. Three to seven scenarios in total across happy and unhappy; more than that usually means the feature should be split.

**The unhappy paths.** One named scenario each. Use only those that apply; do not force the list.

- **Empty or no data yet.** Given ..., when ..., then ...
- **Invalid or malformed input.** Given ..., when ..., then ...
- **Wrong role or no permission.** Given ..., when ..., then ...
- **Boundary value.** Given ..., when ..., then ...
- **Repeated or concurrent action.** Given ..., when ..., then ...
- **Downstream failure, the feed is late or the system is unavailable.** Given ..., when ..., then ...

**Out of scope.** What this feature deliberately does not do, and where that thing happens instead. This is what stops a developer inventing behaviour we never agreed.

**Open questions.** One line each, with a name and a date against it.

---

## Reminders while you write

- Every code carries its label: `PB-16, truck arrives late at the gate`, never `PB-16` alone.
- Every threshold is a parameter code, never a number typed inline: `PB-P19, truck late against its planned ETA`, not "4 hours".
- Never restate what a register holds. Point at it.
- The tower sees and decides; a person acts. If your scenario has the tower doing something in MileApp, the dock system or SAP, it is wrong.
- Observed and computed are shown differently, and a computed value says what it was computed from.
- It is a side panel, not a drawer.
- Comments from Pierre come inline in square brackets: `[Pierre: is four hours right?]`.
