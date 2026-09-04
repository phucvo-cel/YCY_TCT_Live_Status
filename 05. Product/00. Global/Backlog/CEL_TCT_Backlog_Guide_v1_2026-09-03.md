# The TCT backlog, how it works

One register holds every idea, whatever its scope. Ideas arrive in review
sessions and go in the same day. This file explains the columns, the states
and the two rules that keep the register useful.

## Where it lives

CEL_TCT_Backlog_v0.1_2026-09-03.xlsx, in this folder. One workbook, one sheet.
Scope is a column, not a folder, because an idea raised about one sub-module
often turns out to be global, and filing it by folder forces that judgement at
the moment we know least about it.

## The columns

| Column | What goes in it |
| --- | --- |
| ID | BL-001, sequential, never reused even after an item is dismissed |
| Raised on | The date it was raised |
| Raised by | The person who raised it |
| Scope | Global, or a module such as CT2, or a sub-module such as CT2.2 |
| Title | One line |
| Problem | One or two lines on what is wrong today, not the solution. An idea that cannot name a problem is usually a preference |
| Type | New feature, change to existing, data, or non-functional |
| In the PRD | Yes or no. Whether the PRD already covers it |
| State | One of the five below |
| Decision owner | Who says yes |
| Decided on | The date the state was last set |
| Landed in | The mockup version or the spec where it shipped |

## The five states

| State | What it means |
| --- | --- |
| Raised | Captured, not yet looked at. A transit state, never a resting one |
| Accepted | The pod builds it. It becomes a line in that sub-module's specification, or a mockup build if the scope is Global |
| Proposed to client | Outside Release 1. It goes to the client as a Release 2 candidate or a change request |
| Parked | Good, not now. Always with a named moment to revisit, normally the Release 1 gate |
| Dismissed | With a one line reason in the Problem column, kept rather than deleted, so it is not raised again in three months |

## The two rules

1. Nothing may still read Raised when the next review session starts.
   Everything gets a state within one cycle, even if that state is Parked.
   A list with no states is where good ideas go to be forgotten.

2. Anyone may add a row. Only Pierre writes the State column.
   The line between Accepted and Proposed to client is a commercial boundary
   rather than a priority ordering: anything accepted that the PRD does not
   already cover expands what CEL owes the client for the same fee. That is
   why the In the PRD column exists and why one person sets state.

## Triage

Five minutes at the end of each review session. Three questions per item:
what problem does it solve, is it inside the PRD, and who decides.

No scoring model. With one reviewer and six analysts the conversation is
faster than the arithmetic.
