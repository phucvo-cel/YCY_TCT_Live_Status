# How to write a specification

CEL, YCH Transport Control Tower, SPVB Vietnam. Version 1, 3 September 2026. Owner: Pierre.

This is the craft. The ways of working guide says where documents live, who owns them and how a change gets approved. This file says how to write one, what good looks like, and when to point at a register instead of writing prose.

Read it once, keep it open the first two or three times you write, then stop needing it. Copy `CEL_TCT_Specification_Template_v2` into your sub-module's Working folder to start. Do not copy this file.

---

## 1. What is a feature

Two tests. Both are short on purpose.

**A feature is something a user could name and would miss if it disappeared.** If you can write one sentence, "this lets [role] [do something] so that [outcome]", it is a feature. If that sentence needs two "ands", it is two features. A screen is not a feature. A component is not a feature. A column is not a feature.

**A specification says what the mockup cannot show.** The mockup already carries the layout, the wording, the colour and the order, and it is the agreed artefact for those. What it cannot carry is where a number comes from, what happens when it is missing, who may see it, and how often it changes.

So: **if a sentence in your specification could be replaced by "look at the mockup", delete it.** That one rule removes most of what makes specification writing feel like transcription.

A sub-module usually holds three to six features. Fewer and you are writing at the wrong height. More and some of them are components.

---

## 2. Which of the three shapes

Every feature is one of three kinds, and you say which at the top of its section. Most sub-modules contain more than one kind, which is normal.

| Kind | What it is | Examples in the tower |
|---|---|---|
| **A view** | Shows state. Nothing triggers it. The user looks at it | The live status map, the exception queue, the indicator tiles |
| **A behaviour** | Something follows from an event or an action | A rule fires, an exception escalates when nobody opens it, a coordinator picks an option |
| **A rule** | Conditional logic with branches | Which rules fire in which milestone, which role owns which exception |

Choosing the wrong shape is the most common way a specification ends up saying nothing. A map of vehicle positions written as "given the map is open, when the operator looks at it, then trucks are shown" passes as a scenario and tests nothing. It is a view, and it needed a field table.

---

## 3. Shape A, a behaviour

Given, when, then. Given a precondition that is true before anything happens, when the action or the event, then what the tower does, observably.

The format is not decoration. It forces the precondition, the action and the result apart, which is where ambiguity hides.

**The happy path.** One scenario, sometimes two or three if the happy path has real variants. Keep it clean: do not fold validations into it.

**The unhappy paths.** One named scenario each, same format. Use only the ones that apply, and do not force the list.

- empty, or no data yet
- invalid or malformed input
- wrong role, or no permission
- boundary values: limits, expiry, maximum, minimum
- repeated or concurrent action
- downstream failure: the feed is late, the system is unavailable

Three to seven scenarios in total across happy and unhappy. Fewer leaves gaps. More usually means the feature should be split.

---

## 4. Shape B, a view

Six parts, and the field table is the heart of it. This is where all the ambiguity in a view actually lives.

**What decision it supports.** One sentence: this screen answers [question] for [role] who must [decide what]. If you cannot write that sentence, the screen has no job yet and that is the finding.

**Who uses it.** Roles from the users register.

**The field table.** One row per thing on screen.

| Column | What goes in it |
| --- | --- |
| Label on screen | Exactly as it appears |
| What it is | Plain English, one line |
| Observed or computed | Which of the two |
| Computed from | Only if computed. What inputs, in words |
| Source | The feed or the register it comes from |
| Unit | Where a unit applies |
| Changes | How often the value can change |

**Interaction.** Filters, sorting, drill-down, what a click does. Justify each one: every filter adds complexity, and users with genuinely different needs usually need a different screen rather than another filter on this one.

**The four states.** Every table, chart and map has four states beyond the happy one, and they are where the real failures live: blank panels that look broken, layouts that jump when data arrives, and stale numbers presented as current.

- **Empty.** No data yet, and the words shown.
- **Loading.** What is shown while waiting.
- **Error.** The feed failed, and what the user is told.
- **Partial or stale.** Some data is old. **This is the important one for the tower.** Say what is suppressed and what is still shown.

**Who can see it.** Audiences, and whether any part is hidden from any of them.

Then out of scope and open questions, as for any feature.

Ten to twelve items on one screen is the practical ceiling. Beyond that the screen is trying to do two jobs.

---

## 5. Shape C, a rule

If X then Y, one line per branch. No scenario wrapper.

Most of the time the rule already lives in a register, and then the specification points at it and stops. Write out branches only where the logic is not a row in a register: how the branches combine, what happens when two of them are true at once, and what happens when none is.

---

## 6. When to point at a register

**Anything with rows lives in a register. Prose, behaviour and scenarios live in the specification.**

The test: if you find yourself writing a list where every entry has the same fields, stop. That is a table, and it belongs in a register with an owner, so it exists in exactly one place and one person maintains it.

The registers are the exceptions register, the parameters register, the milestones register, the users register, the KPI register and the data contract register. Each has one named owner.

**How to cite.** Name the register, name the code, give the code its label. Never repeat what the register holds.

Wrong, because it copies the register into the specification, where it will go stale:

> The engine covers 22 rules: PB-01 arrival will miss the receiving window, PB-02 loads are not reaching the doors, PB-03 no arrival recorded and no position signal, and so on.

Right:

> The engine evaluates every rule in the exceptions register that is marked active for this milestone. This section specifies how they are evaluated, not which ones exist.

And for a threshold, always the code with its label, never the number alone and never the label alone:

> ... more than `PB-P19, truck late against its planned ETA`, after that ETA ...

The number four hours lives in the parameters register and nowhere else. If it changes, one cell changes.

---

## 7. Worked example, a behaviour

**CT2.2 Recommendation and resolution engine: truck arrives late at the gate. Feature type: behaviour. Rule PB-16, watching YCH blocks 3.2 truck entry at the gate and 2.1 transporter job acceptance.**

*What it is for.* A truck that has not reached the gate long after it was expected blocks the loading plan for the rest of the wave. The tower raises it while a call can still change the outcome.

*Who uses it.* Warehouse supervisor at the site, who owns it. Transport supervisor, on escalation.

*Happy path.*
Given a trip with a planned ETA at the site, when neither truck queue in nor truck checked in has been recorded more than `PB-P19, truck late against its planned ETA`, after that ETA, then the tower raises `PB-16, truck arrives late at the gate`, gives it to the warehouse supervisor at the site, and shows it in the work queue ranked by its deadline.

*Unhappy paths.*

- **Truck is in the yard.** Given the truck has queued in but not checked in, when `PB-P19, truck late against its planned ETA`, passes, then `PB-16, truck arrives late at the gate`, is not raised, because the truck is on site. The yard wait is watched by `PB-P15, truck standing in the yard`, instead.
- **No planned ETA.** Given a trip with no planned ETA, when the cut-off approaches, then `PB-16` cannot be evaluated and the trip appears in the data quality list rather than as an exception.
- **Nobody opens it.** Given `PB-16, truck arrives late at the gate`, is raised, when nobody opens it within the escalation delay, then the tower escalates to the transport supervisor and records the escalation on the thread.
- **Feed is down.** Given the gate feed has delivered no event for longer than its expected interval, when `PB-16` would fire, then the tower marks the exception as computed from a stale feed rather than raising it as observed.

*Out of scope.* Calling the driver, and re-assigning the trip in MileApp. The tower recommends; a person acts in MileApp.

*Open questions.* Is `PB-P19, truck late against its planned ETA`, four hours or two? To settle with YCH at workshop W3, by 15 September. Owner: Pierre.

---

## 8. Worked example, a view

**CT1.1 Live status: vehicle positions on the network map. Feature type: view.**

*What decision it supports.* This screen answers "where are my loads right now and which of them are at risk" for the control tower operator, who must decide which trips to chase before the receiving windows close.

*Who uses it.* Control tower operator, continuously. Supervisors and managers, occasionally.

*The field table.*

| Label on screen | What it is | Observed or computed | Computed from | Source | Unit | Changes |
| --- | --- | --- | --- | --- | --- | --- |
| Vehicle pin | Last known position of the truck on a trip | Observed | | YCH block 5.1, GPS positions | Latitude and longitude | Every ping |
| Trip reference | The trip the vehicle is running | Observed | | Order backbone | | On assignment |
| Transporter | Who is carrying it | Observed | | YCH block 2.1, transporter job acceptance | | On acceptance |
| Position age | How long since the last ping | Computed | Now, minus the timestamp of the last ping | | Minutes | Continuously |
| ETA | Estimated arrival at the destination | Computed | Last position, remaining distance on the planned route, and the lane's planned duration | | Time of day | Every ping |

*Interaction.* Filter by origin site, DOP or OPMT. Filter by milestone. Clicking a pin opens the trip side panel. No filter by transporter: the operator works by site and by risk, not by carrier, and the exception queue already carries the carrier view.

*The four states.*

- **Empty.** No trip in transit. The map shows the network with no pins and the words "no vehicles in transit". Not a spinner.
- **Loading.** The network and the sites draw first, the pins arrive after. The map does not resize when they land.
- **Error.** The position feed is unavailable. The map shows the last known pins greyed, with the time of the last successful refresh stated on screen, and the words "positions unavailable".
- **Partial or stale.** Where the newest ping for a trip is older than the staleness threshold, the pin is greyed, its position age is shown, and **the ETA is suppressed rather than extrapolated.** The tower never shows a computed ETA from a position it no longer trusts.

*Who can see it.* Control tower operator, supervisors and managers, YCH country GM. Not the shipper.

*Out of scope.* Replaying a route history, and any comparison of planned against actual distance. Those are CT3.1 Reports and advanced analytics.

*Open questions.* The staleness threshold has no parameter code yet. It needs a row in the parameters register before this can be built. Owner: Pierre, by 12 September.

Note what that example does. Every number on screen says where it came from, the stale state is specified rather than assumed, and the one missing parameter is written down as an open question instead of being guessed at inline.

---

## 9. The habits

1. **Write the unhappy paths.** The happy path is the easy half and the one nobody argues about.
2. **Every code carries its label, every time.** `PB-16, truck arrives late at the gate`, never `PB-16` alone. Same for parameters, milestones and roles.
3. **Never write a number inline.** A threshold is a parameter code with its label. The number lives in the register.
4. **Never restate what a register holds.** Point at it.
5. **One word, one meaning.** If a word is doing two jobs, rename one of them. It is a side panel, not a drawer.
6. **Observed and computed are different things**, are shown differently, and a computed value says what it was computed from.
7. **The tower sees and recommends; a person acts.** If your scenario has the tower doing something in MileApp, the dock system or SAP, it is wrong.
8. **State what is out of scope**, explicitly, and where that thing happens instead.
9. **When you do not know, write the open question** with a name and a date against it. An honest gap is workable; a confident guess is not.
10. **Comments from Pierre come inline in square brackets:** `[Pierre: is four hours right?]`.
11. **No em dashes**, anywhere. A comma, a colon, parentheses, or restructure the sentence.

---

## 10. The readiness test

A specification is ready when every member of the team reads it and arrives at the same mental model. If two of you disagree about what it means, it is not ready, whatever state the document is in.

---

Sources consulted, 3 September 2026, on acceptance criteria formats and on specifying views: Qase, Inflectra, AltexSoft and Cleveroad on scenario-oriented against rule-oriented acceptance criteria and the named cases where given, when, then does not fit; AFFiNE on rule-based "if X then Y" criteria for branching logic; datawirefra.me on the five questions a complete display specification answers; Fuselab Creative on the four states every chart and table needs; skills.sh on the metric ceiling for one screen. General-industry patterns, not client measurements.
