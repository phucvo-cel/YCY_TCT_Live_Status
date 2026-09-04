# Specification template

Copy this file into your sub-module's Working folder, rename it
`CTx.y_Specification_v0.1_YYYY-MM-DD.md`, and delete everything above the line.

How to fill it in is in `CEL_TCT_Specification_Guide_v1`, in the Ways of Working
folder. Read that first. Do not copy it: it stays where it is.

One section per feature. Say the feature type at the top of each section and use
only the block for that type. Delete the two you are not using.

---

# CTx.y Sub-module name, specification

Owner: your name. Version 0.1, draft, date.

Points at: PRD sections [which ones]. Registers used: [exceptions, parameters, milestones, users, KPIs, data contract, as applicable].

---

## Feature name

**Feature type:** view, or behaviour, or rule.

**What it is for.** Two or three sentences. The operational problem, not the feature name. For a view, one sentence in the form: this screen answers [question] for [role] who must [decide what].

**Who uses it.** Roles from the users register. Not names. Say what each one does here.

---

### If it is a behaviour

**The happy path.**

Given [a precondition that is true before anything happens],
when [the action or the event],
then [what the tower does, observably].

**The unhappy paths.** One named scenario each, same format. Only those that apply.

- **Empty, or no data yet.** Given ..., when ..., then ...
- **Invalid or malformed input.** Given ..., when ..., then ...
- **Wrong role, or no permission.** Given ..., when ..., then ...
- **Boundary value.** Given ..., when ..., then ...
- **Repeated or concurrent action.** Given ..., when ..., then ...
- **Downstream failure, the feed is late or the system is unavailable.** Given ..., when ..., then ...

---

### If it is a view

**The field table.** One row per thing on screen.

| Label on screen | What it is | Observed or computed | Computed from | Source | Unit | Changes |
| --- | --- | --- | --- | --- | --- | --- |
| | | | | | | |

**Interaction.** Filters, sorting, drill-down, what a click does. One line each, with why.

**The four states.**

- **Empty.** ...
- **Loading.** ...
- **Error.** ...
- **Partial or stale.** What is suppressed, what is still shown.

**Who can see it.** Audiences, and anything hidden from any of them.

---

### If it is a rule

One line per branch, in the form: if [condition] then [outcome].

Then: how the branches combine, what happens when two are true at once, and what happens when none is.

If the branches are rows in a register, point at the register instead and specify only how they are evaluated.

---

**Out of scope.** What this feature deliberately does not do, and where that thing happens instead.

**Open questions.** One line each, with a name and a date against it.
