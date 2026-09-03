# How we work: specifications, registers and the mockup

CEL, YCH Transport Control Tower, SPVB Vietnam. Version 5, 29 August 2026. Owner: Pierre.

This is for the analyst team and for the LLMs they work with. It says what we produce, where it lives, who owns it, how a change gets approved, and how a pod's mockup reaches the master. Read section 3 before writing a specification and section 6 before touching a mockup.

Change from v4: sub-modules are numbered CT1.1, CT1.2, CT2.1 and so on, so they can never be read as YCH execution blocks; Released keeps every release rather than only the current one; a code is always written with its label; and the two workflows are named the mockup workflow and the specs workflow.

Change from v3: the pod releases what Pierre has approved, so the release step no longer waits on Pierre.

Change from v2: the six sub-modules are named as they are on the stack slide, each has its own folder, and the pods work at that level. CT4 AI Integration and CT5 Data Pipeline belong to Thibaud's stream.

Change from v1: registers are `.xlsx` with a named owner each, Google Docs leave the specification folders, the pod mockup workflow is written up, and the folder structure and the flows are drawn.

---

## 1. Why we write specifications

The mockup shows what a screen looks like. It cannot show what happens when the data is missing, when the user has the wrong role, or when the truck never arrives. That is what a specification is for, and it is the part only we can write, because it comes from supply chain knowledge rather than from code.

Two documents exist in the industry, at different heights. A product requirements document says what the product should do and why. A functional specification says precisely what the system does, in terms of outputs as functions of inputs. The classic illustration: the first says "the app should include a product listing"; the second says "the system will register a product using the following fields: Name (30 characters), Details (200 characters), Price (currency), Category (pick list)". **We write the second.** Pierre owns the first.

Write in plain language. The reason functional specifications exist is that it is easier to discuss and revise a feature in plain language than in code. Leave out technical design: how it is built is the developers' document.

---

## 2. Where everything lives

```
YCH-TCT/                                  (shared drive)
├── 00. AI
├── 01. Data Collection
├── 02. PM Meetings                        existing folders,
├── 03. SteerCo Meetings                   untouched
├── 04. Deliverables
│
├── 05. Specs
│   ├── 00. Ways of Working/               this file. One current .md,
│   │   └── Archive/                       superseded versions in Archive
│   ├── 00. PRD/                           Pierre owns it, analysts read it
│   │
│   ├── CT1. End to End Visibility/
│   │   ├── CT1.1 Live Status/                        pod
│   │   ├── CT1.2 Operational Performance Dashboard/  pod
│   │   └── Registers/
│   ├── CT2. Exception Handling/
│   │   ├── CT2.1 User-based Exception List/          pod
│   │   ├── CT2.2 Recommendation and Resolution Engine/ pod
│   │   └── Registers/
│   ├── CT3. Continuous Improvement/
│   │   ├── CT3.1 Reports and Advanced Analytics/     pod
│   │   ├── CT3.2 Recommended Initiatives and Actions/ pod
│   │   └── Registers/
│   │
│   ├── CT4. AI Integration/               Thibaud's stream
│   ├── CT5. Data Pipeline/                Thibaud's stream
│   ├── CT6. Guarded Execution/            Release 2, shell only
│   └── 90. Index/                         one sheet, what is current
│
└── 06. Mockup
    ├── Released/                          the master, one file, one editor
    └── Working/                           builds in progress

Inside every sub-module folder:

CT2.1 User-based Exception List/
├── Working/                               edit freely, nothing is shared from here
│   ├── CT2.1_Specification_v0.4_2026-09-03.md
│   ├── CT2.1_Screen_Inventory_v0.2_2026-09-03.md
│   └── CT2.1_exception_list_from_v0.16_2026-09-03.html   pod mockup
└── Released/                              approved copies, every version kept
    ├── CT2.1_Specification_v1.0_2026-09-11.md
    └── CT2.1_Specification_v1.1_2026-09-24.md

Registers sit at CT level, not in a sub-module, because they cross sub-modules.
Minutes and workshop notes stay in Google Docs, outside these folders.
```

The six CT folders are the **Control Tower** tools, ours. YCH's blocks 1 to 6 are the **execution** side, built by MileApp, Y3 and YCH: order backbone, route and load optimization, carrier engagement, outbound staging assignment, gate and dock execution, delivery execution. We never write an execution specification. We cite their block numbers inside ours (3.2 truck entry at the gate, 5.1 GPS positions) and map them once, in the data contract. Our sub-modules always carry the CT prefix, CT2.1 and not 2.1, so the two numbering schemes can never be confused.

| Tool | Sub-modules, one pod each | Owner |
|---|---|---|
| CT1 End to End Visibility | CT1.1 Live status, CT1.2 Operational performance dashboard | Pods |
| CT2 Exception Handling | CT2.1 User-based exception list, CT2.2 Recommendation and resolution engine | Pods |
| CT3 Continuous Improvement | CT3.1 Reports and advanced analytics, CT3.2 Recommended initiatives and actions | Pods |
| CT4 AI Integration | A layer under all three, not a pod territory | Thibaud's stream |
| CT5 Data Pipeline | A layer under all three, not a pod territory | Thibaud's stream |
| CT6 Guarded Execution | Release 2. Shell with a note, so the numbering has no hole | Later |

A specification, a screen inventory and a pod mockup belong to a sub-module. A register belongs to the CT tool above it.

---

## 3. The shape of a specification

One section per sub-module, in this order, nothing else.

**What it is for.** Two or three sentences. The operational problem, not the feature name.

**Who uses it.** Roles, from the users register. Not names.

**The happy path**, as scenarios in Given, When, Then. Given a precondition, When an action, Then an observable outcome. The format is not decoration: it forces the precondition, the action and the result apart, which is where ambiguity hides.

**The unhappy paths**, each a named scenario in the same format. Use only those that apply; do not force the list:

- empty, or no data yet
- invalid or malformed input
- wrong role, or no permission
- boundary values: limits, expiry, maximum, minimum
- repeated or concurrent action
- downstream failure: the feed is late, the system is unavailable

**Out of scope.** What this feature deliberately does not do. This stops a developer inventing behaviour we never agreed.

**Open questions.** A name and a date against each.

Two rules of thumb. Three to seven criteria per story: fewer leaves gaps, more usually means the story should be split. And the readiness test: a story is ready when every member of the team reads it and arrives at the same mental model. If two of you disagree about what it means, it is not ready.

Do not fold validations into the happy path; it dilutes it. The happy path stays clean and each unhappy path gets its own named scenario.

### Worked example

**CT2.2 Recommendation and resolution engine: truck arrives late at the gate (rule PB-16, watching YCH blocks 3.2 and 2.1)**

*What it is for.* A truck that has not reached the gate long after it was expected blocks the loading plan for the rest of the wave. The tower raises it while a call can still change the outcome.

*Who uses it.* Warehouse supervisor at the site, who owns it. Transport supervisor, on escalation.

*Happy path.*
Given a trip with a planned ETA at the site, when neither truck queue in nor truck checked in has been recorded more than PB-P19, truck late against its planned ETA (4 hours), after that ETA, then the tower raises PB-16, truck arrives late at the gate, gives it to the warehouse supervisor at the site, and shows it in the work queue ranked by its deadline.

*Unhappy paths.*
- **Truck is in the yard.** Given the truck has queued in but not checked in, when PB-P19, truck late against its planned ETA, passes, then PB-16, truck arrives late at the gate, is not raised, because the truck is on site; the yard wait is watched by PB-P15, truck standing in the yard, instead.
- **No planned ETA.** Given a trip with no planned ETA, when the cut-off approaches, then PB-16 cannot be evaluated and the trip appears in the data quality list rather than as an exception.
- **Nobody opens it.** Given PB-16 is raised, when nobody opens it within the escalation delay, then the tower escalates to the transport supervisor and records the escalation on the thread.
- **Feed is down.** Given the gate feed has delivered no event for longer than its expected interval, when PB-16 would fire, then the tower marks the exception as computed from a stale feed rather than raising it as observed.

*Out of scope.* Calling the driver, and re-assigning the trip in MileApp. The tower recommends; a person acts in MileApp.

*Open questions.* Is PB-P19, truck late against its planned ETA, four hours or two? To settle with YCH at workshop W3, by 15 September.

---

## 4. File types, and who owns what

| Artefact | Format | Owner |
|---|---|---|
| PRD | `.md` | Pierre |
| Specification, one per sub-module | `.md` | The pod on that sub-module |
| Screen inventory, one per sub-module | `.md` | Same pod |
| Registers: users, milestones, exceptions, KPIs, data contract | `.xlsx` | **One named analyst each** |
| Master mockup | `.html` | Pierre, built with Claude |
| Pod mockups | `.html` | The pod that made it |
| Index | `.xlsx` | Pierre owns it, pods add their own release rows |
| Minutes, workshop notes | Google Docs, outside the folders | Whoever ran the session |

**Why no Google Docs in these folders.** A native Google Doc is not a file: it syncs to a Mac as a small pointer, so Claude Code cannot read or edit it, and neither can any other tool working from the disk. Markdown and `.xlsx` are real files. What we lose is live co-editing and comment threads; comments go inline in square brackets instead, `[Pierre: is four hours right?]`.

**Why registers have one owner each.** An `.xlsx` in Drive does not merge two people's edits: whoever saves last wins. Native Google Sheets do merge, but then no tool on the disk can maintain them. So concurrency is solved by ownership, not by locking: five registers, five named owners, and nobody else edits them without telling the owner.

**Naming.** `CT2.1_Specification_v1.2_2026-09-11.md`. Version 1.0 is the first approved version; 1.1 and 1.2 are minor changes; 2.0 is a structural change. The date is the approval date. Never the word Final. If a file says FINAL, the process has already failed.

---

## 5. Specs workflow: working, released, and how something gets approved

```
  1. Specs update  [Pod]              2. Review  [Pierre]     3. Release and share  [Pod]
┌───────────────────────────────┐   ┌────────────────┐   ┌──────────────────────────┐
│ edit specification, register  │   │ approves, or   │   │ copies the approved file │
│ and screen inventory freely   │──▶│ asks for       │──▶│ into Released as         │
│ in Working, then name the     │   │ another pass   │   │ v1.2_2026-09-11, then    │
│ version (the revert point)    │   │                │   │ updates the index        │
└───────────────────────────────┘   └────────┬───────┘   └──────────────────────────┘
         ▲                                   │             devs and Thibaud read it
         └───────────────────────────────────┘             there, the client gets a PDF
           not approved: revert to the named version, nothing is lost
```

1. You finish a change and name the version inside the file. That marker is what we roll back to.
2. Ask Pierre. He approves, or asks for another pass. That is the whole disagreement mechanism.
3. On approval, **you** copy the file into Released with its version and date, and update the index row. Pierre does not move files: he approves, you release.

**Released keeps every release, not only the current one.** `CT2.1_Specification_v1.0_2026-09-11.md`, then `v1.1`, then `v1.2`, side by side. The version and date in the filename make the latest obvious, the history is there when a developer asks what changed between two versions, and the index says which one is current. There is no separate archive folder: Working holds the drafts, Released holds the record.

**One master mockup is the exception.** `06. Mockup/Released` holds the current master only. Every build sits in `06. Mockup/Working` until Pierre says it is ready for the pods to copy from, and only then is it promoted.

Steps 1 and 3 are mechanical, so hand them to your LLM if you prefer. Step 2 is not delegable.

**The index**, in `05. Specs/90. Index`, is the single answer to "what is current": one row per artefact with the module, the artefact, the released version, the approval date, the owner, a link to Released and a link to Working. If the index and a file disagree, the index is wrong and gets fixed the same day. That is where document drift starts.

**Never copy a document into another tool to review it.** It creates two versions and someone reconciles them by hand. Comment in place.

---

## 6. Mockup workflow: prototype freely, integrate once

There is **one master mockup** in the world, in `06. Mockup/Released`, and one person edits it. Pods build their own HTML, which is the right way to discuss a user journey, and their file is a **proposal**, not the product.

```
 1. Master mockup      2. Sub-module      3. Sub-module     4. Sub-module
    update  [Pierre]      build  [Pod]       review           integration
                                             [Pierre]         [Pierre]
┌──────────────────┐  ┌────────────────┐  ┌──────────────┐  ┌──────────────────┐
│ improving the    │  │ a new version  │  │ approves, or │  │ the approved     │
│ mockup, shared   │─▶│ of its own     │─▶│ asks for     │─▶│ change is ported │
│ parts and sub-   │  │ sub-module,    │  │ another pass │  │ into the master  │
│ module work      │  │ inside the     │  │              │  │                  │
│ 06. Mockup/      │  │ real shell     │  │              │  │                  │
│ Released         │  │                │  │              │  │                  │
└──────────────────┘  └────────────────┘  └──────────────┘  └────────┬─────────┘
         ▲              copy                                          │
         └─────────────────────────────────────────────────────────────┘
           a new master is released, one line is added to the changelog
```

**Why not merge the files.** Our mockup is one self-contained HTML where the design system, the data layer and every screen live together. Two pods editing copies both touch shared parts, and a change like the yard queue reaches the dock screen, the trip side panel and the exception side panel at once, so no pod owns all of it. Ported by hand, consistency survives. Merged mechanically, it does not.

**What makes this cheap.** A pod never starts from a blank file. It copies the current released master, so it is already working with the real design system, the real data and the real vocabulary, and the difference to port is small.

**The handover** is the pod's HTML plus three lines: what changed, why, and which screens it touches. Screenshots only for an idea that is not in the file.

**Filename**, so the port is unambiguous: `CT2.1_exception_list_from_v0.16_2026-09-03.html`. The `from_v0.16` records which master it branched from.

**Two rules that keep this from unravelling.**

1. **A pod never changes the shared parts without asking Pierre first**: design tokens and colours, the data layer, the milestone chain, the shared vocabulary. Those are what break the other five pods.
2. **Every integration is announced in one line in the mockup changelog.** A pod that reads it knows its shell is stale and refreshes before continuing.

**Refresh before, not during.** Take a fresh copy when you start a change, not halfway through one. If a change runs longer than about a week, refresh mid-flight and re-apply: annoying once, cheaper than a hard port later.

---

## 7. What lives where, in one line each

- **Prose, rules, behaviour, scenarios** go in the specifications.
- **Anything with rows** goes in the registers. The specifications cite them by code and never restate their content, so a threshold exists in exactly one place.
- **Every register row carries a status**: measured, agreed, or assumption. Nobody should build on a guess without knowing it is one.
- **Decisions** go in the working file, which lives in `00. AI`, with what was traded away.
- **Screens** are the master mockup, pointed at from each sub-module folder by the screen inventory.

---

## 8. The five habits that make this work

1. Write the unhappy paths. The happy path is the easy half and the one nobody argues about.
2. Name every threshold, never write a number inline, and always give a code its label so the reader knows what it is about: `PB-P19, truck late against its planned ETA (4 hours)`, not `PB-P19` alone and not "4 hours" alone. The same for rules: `PB-16, truck arrives late at the gate`.
3. One word, one meaning. If a word is doing two jobs, rename one of them. It is a side panel, not a drawer.
4. State what is out of scope, explicitly.
5. When you do not know, write the open question with a name and a date against it. An honest gap is workable; a confident guess is not.

---

## 9. Still to do

- The PRD does not exist yet. Pierre writes it; every specification should be able to point at a section of it for its "why".
- The index sheet is to be created.
- The registers are to be split out with a named owner each.

---

Sources consulted, 29 August 2026: Jama Software and UXPin on the difference between a product requirements document and a functional specification; Smartsheet and Justinmind on what belongs in a functional specification and why plain language is the point; PM Toolkit, River and practitioner guidance on Given, When, Then and on covering happy, negative and edge paths; Virtuoso QA on keeping the happy path clean; Encelade on document version control and approval discipline; DraftView on why forcing non-technical reviewers into a developer workflow stalls and why copying documents between tools causes drift; UXPin and Figma on design system governance, single sources of truth and the drift that follows when several versions of the same component exist; Ethan Marcotte on why contributors who cannot work inside the shared library keep evolving their work in their own environments, which is why pods build their own HTML rather than being asked not to. General-industry patterns, not client measurements.
