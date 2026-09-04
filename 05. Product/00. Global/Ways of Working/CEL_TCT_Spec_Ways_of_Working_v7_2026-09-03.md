# How we work: specifications, registers and the mockup

CEL, YCH Transport Control Tower, SPVB Vietnam. Version 7, 3 September 2026. Owner: Pierre.

This is for the analyst team and for the LLMs they work with. It says what we produce, where it lives, who owns it, how a change gets approved, and how a pod's mockup reaches the master.

**How to write a specification is no longer in this file.** It is in `CEL_TCT_Specification_Guide_v1`, in the same folder. This file is structure, ownership and workflow. That one is craft.

Change from v6: everything about how to write a specification moves out to the specification guide, including the worked example and the writing habits. Section 6 is rewritten, because it described a mockup staging flow we no longer use. Section 9 is rewritten, because all three of its items are done. The backlog register and `AGENTS.md` are described where they belong.

Change from v5: the drive is restructured. "05. Specs" is now "05. Product"; everything global (PRD, ways of working, index, decisions, mockup) sits under "05. Product/00. Global"; each of CT1, CT2 and CT3 has a "00. Module" folder holding its registers; and there is a new Backlog folder holding one register for every idea.

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
├── 01. Data Collection
├── 02. PM Meetings                        existing folders,
├── 03. SteerCo Meetings                   untouched
├── 04. Deliverables
│
└── 05. Product
    ├── 00. Global/
    │   ├── PRD/                          Pierre owns it, analysts read it
    │   ├── Ways of Working/              this file, the specification guide
    │   │   └── Archive/                  and the template. Superseded
    │   │                                 versions go in Archive
    │   ├── Index/                        one sheet, what is current
    │   ├── Backlog/                      one register, every idea, plus
    │   │                                 the backlog guide
    │   ├── Decisions/                    the working file, and what was traded away
    │   └── Mockup/
    │       ├── Released/                 the master, one file, plus AGENTS.md
    │       └── Working/                  superseded masters, last two only
    │
    ├── CT1. End to End Visibility/
    │   ├── 00. Module/
    │   │   └── Registers/
    │   ├── CT1.1 Live Status/                        pod
    │   └── CT1.2 Operational Performance Dashboard/  pod
    ├── CT2. Exception Handling/
    │   ├── 00. Module/
    │   │   └── Registers/
    │   ├── CT2.1 User-based Exception List/          pod
    │   └── CT2.2 Recommendation and Resolution Engine/ pod
    ├── CT3. Continuous Improvement/
    │   ├── 00. Module/
    │   │   └── Registers/
    │   ├── CT3.1 Reports and Advanced Analytics/     pod
    │   └── CT3.2 Recommended Initiatives and Actions/ pod
    │
    ├── CT4. AI Integration/                  Thibaud's stream
    ├── CT5. Data Pipeline/                   Thibaud's stream
    └── CT6. Guarded Execution/               Release 2, shell only

Inside every sub-module folder:

CT2.1 User-based Exception List/
├── Working/                               edit freely, nothing is shared from here
│   ├── CT2.1_Specification_v0.4_2026-09-03.md
│   ├── CT2.1_Screen_Inventory_v0.2_2026-09-03.md
│   └── CT2.1_exception_list_from_v0.24_2026-09-03.html   pod mockup
└── Released/                              approved copies, every version kept
    ├── CT2.1_Specification_v1.0_2026-09-11.md
    └── CT2.1_Specification_v1.1_2026-09-24.md

Registers sit at CT level, in 00. Module, because they cross sub-modules.
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

## 3. The specification, in three lines

One section per feature, not one per screen. Each section says whether the feature is a **view**, a **behaviour** or a **rule**, and only behaviours use given, when, then.

Copy `CEL_TCT_Specification_Template_v2` into your Working folder to start. Read `CEL_TCT_Specification_Guide_v1` before you write your first one: it holds the two tests for what counts as a feature, the three shapes, when to point at a register instead of writing prose, two worked examples and the writing habits.

Nothing else about how to write belongs in this file.

---

## 4. File types, and who owns what

| Artefact | Format | Owner |
|---|---|---|
| PRD | `.md` | Pierre |
| Specification, one per sub-module | `.md` | The pod on that sub-module |
| Screen inventory, one per sub-module | `.md` | Same pod |
| Registers: users, milestones, exceptions, parameters, KPIs, data contract | `.xlsx` | **One named analyst each** |
| Backlog register | `.xlsx` | Anyone adds a row, Pierre alone sets the state |
| Master mockup | `.html` | Pierre, built with Claude |
| Pod mockups | `.html` | The pod that made it |
| Index | `.xlsx` | Pierre owns it, pods add their own release rows |
| Minutes, workshop notes | Google Docs, outside the folders | Whoever ran the session |

**Why no Google Docs in these folders.** A native Google Doc is not a file: it syncs to a Mac as a small pointer, so Claude Code cannot read or edit it, and neither can any other tool working from the disk. Markdown and `.xlsx` are real files. What we lose is live co-editing and comment threads; comments go inline in square brackets instead, `[Pierre: is four hours right?]`.

**Why registers have one owner each.** An `.xlsx` in Drive does not merge two people's edits: whoever saves last wins. Native Google Sheets do merge, but then no tool on the disk can maintain them. So concurrency is solved by ownership, not by locking: one register, one named owner, and nobody else edits it without telling the owner.

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

Steps 1 and 3 are mechanical, so hand them to your LLM if you prefer. Step 2 is not delegable.

**The index**, in `05. Product/00. Global/Index`, is the single answer to "what is current": one row per artefact with the module, the artefact, the released version, the approval date, the owner, a link to Released and a link to Working. If the index and a file disagree, the index is wrong and gets fixed the same day. That is where document drift starts.

**Never copy a document into another tool to review it.** It creates two versions and someone reconciles them by hand. Comment in place.

---

## 6. Mockup workflow: prototype freely, integrate once

There is **one master mockup** in the world, in `05. Product/00. Global/Mockup/Released`, and one person edits it. Pods build their own HTML, which is the right way to discuss a user journey, and their file is a **proposal**, not the product.

**The two folders do not mean what they mean elsewhere.**

- **Released** holds the current master, one HTML file, plus `AGENTS.md`. This is the only file a pod ever copies from.
- **Working** holds superseded masters, the last two, and nothing else. It is a record, not a staging area. **Never take a file from Working.**

Intermediate builds never reach the drive at all: Pierre iterates with Claude and the builds sit in his Downloads folder until one is worth keeping. Only then does a release happen, and a release moves the previous master into Working, puts the new one into Released, writes the changelog line, updates the index and imports the file into ATOM. Version numbers therefore have gaps, and the gaps are expected: they are builds that were never kept. The changelog in `05. Product/00. Global/Mockup/README.md` is the complete record.

**You will be told when the master moves**, in the team channel, with what changed and what you need to do. Refresh your copy before your next change, and update your own row in the index. Nobody updates it for you.

**Reading the file.** The master is about 1.4 MB, roughly 400,000 tokens, and reading it whole will exhaust a session for nothing. `AGENTS.md` sits beside it in Released and tells your tools how to search it instead. Codex only picks that file up if you open it in the folder holding the HTML, so if you copy the mockup somewhere else, copy `AGENTS.md` with it.

```
 1. Master mockup      2. Sub-module      3. Sub-module     4. Sub-module
    update  [Pierre]      build  [Pod]       review           integration
                                             [Pierre]         [Pierre]
┌──────────────────┐  ┌────────────────┐  ┌──────────────┐  ┌──────────────────┐
│ improving the    │  │ a new version  │  │ approves, or │  │ the approved     │
│ mockup, shared   │─▶│ of its own     │─▶│ asks for     │─▶│ change is ported │
│ parts and sub-   │  │ sub-module,    │  │ another pass │  │ into the master  │
│ module work      │  │ inside the     │  │              │  │                  │
│ Global/Mockup/   │  │ real shell     │  │              │  │                  │
│ Released         │  │                │  │              │  │                  │
└──────────────────┘  └────────────────┘  └──────────────┘  └────────┬─────────┘
         ▲              copy                                          │
         └─────────────────────────────────────────────────────────────┘
           a new master is released, one line is added to the changelog
```

**Why not merge the files.** Our mockup is one self-contained HTML where the design system, the data layer and every screen live together. Two pods editing copies both touch shared parts, and a change like the yard queue reaches the dock screen, the trip side panel and the exception side panel at once, so no pod owns all of it. Ported by hand, consistency survives. Merged mechanically, it does not.

**What makes this cheap.** A pod never starts from a blank file. It copies the current released master, so it is already working with the real design system, the real data and the real vocabulary, and the difference to port is small.

**The handover** is the pod's HTML plus three lines: what changed, why, and which screens it touches. Screenshots only for an idea that is not in the file.

**Filename**, so the port is unambiguous: `CT2.1_exception_list_from_v0.24_2026-09-03.html`. The `from_v0.24` records which master it branched from.

**Two rules that keep this from unravelling.**

1. **A pod never changes the shared parts without asking Pierre first**: design tokens and colours, the data layer, the milestone chain, the shared vocabulary. Those are what break the other five pods.
2. **Refresh before, not during.** Take a fresh copy when you start a change, not halfway through one. If a change runs longer than about a week, refresh mid-flight and re-apply: annoying once, cheaper than a hard port later.

---

## 7. What lives where, in one line each

- **Prose, rules, behaviour, scenarios** go in the specifications.
- **Anything with rows** goes in the registers. The specifications cite them by code and never restate their content, so a threshold exists in exactly one place.
- **Every register row carries a status**: measured, agreed, or assumption. Nobody should build on a guess without knowing it is one.
- **Ideas** go in the backlog register, in `05. Product/00. Global/Backlog`, whatever their scope. Anyone adds a row; Pierre alone sets its state. The backlog guide in that folder explains the columns and the five states.
- **Decisions** go in the working file, in `05. Product/00. Global/Decisions`, with what was traded away.
- **Screens** are the master mockup, pointed at from each sub-module folder by the screen inventory.
- **How to write any of this** is in the specification guide, in `05. Product/00. Global/Ways of Working`.

---

## 8. Still open

- The PRD is at v0.2 and has not been validated with YCH or SPVB.
- The glossary is at v0.1 and has not been validated with YCH or SPVB.
- The data contract register does not exist yet. Owner: Duy.
- The administration screen for roles and audiences is designed for but not built.
- The expanded forms of DOP and OPMT are inferred, not confirmed by YCH.
- The Release 1 gate date is not fixed.

---

Sources consulted, 29 August 2026: Jama Software and UXPin on the difference between a product requirements document and a functional specification; Smartsheet and Justinmind on what belongs in a functional specification and why plain language is the point; Encelade on document version control and approval discipline; DraftView on why forcing non-technical reviewers into a developer workflow stalls and why copying documents between tools causes drift; UXPin and Figma on design system governance, single sources of truth and the drift that follows when several versions of the same component exist; Ethan Marcotte on why contributors who cannot work inside the shared library keep evolving their work in their own environments, which is why pods build their own HTML rather than being asked not to. General-industry patterns, not client measurements.
