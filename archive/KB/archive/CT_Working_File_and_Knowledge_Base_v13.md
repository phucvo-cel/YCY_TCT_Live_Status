# Control Tower Engagements with YCH

## Working File and Knowledge Base

Project reference, version 13, last updated 25 August 2026, evening. The file now covers two distinct engagement tracks with YCH (contact: Sardar Ahmed):

- Track 1, the Supply Chain Orchestration Control Tower for one of YCH's FMCG manufacturing customers (Indonesia and the Philippines). Part A holds its working file: decisions, the worked example, slide inventory, and assumptions to verify. This track produced the deck and the YCHBEACON HTML mockup.
- Track 2, the Transport Control Tower for YCH's own Indonesian transport operations, proposed by CEL in August 2026 and moving toward signature. Part C holds its working file.

Part B holds the supporting knowledge built up while stress-testing both scopes; it exists to level the team and to defend the proposals in discussion. Commercial figures are deliberately absent from this file.

Change log, v12 to v13 (25 August 2026, evening): C21 added, decisions D84 to D88: the milestone sequence confirmed with YCH and superseding D44 and D70, POD completed defined as captured, the return milestone placed in Release 2, the six customer-visible milestones, and the coordinator's waiting order on the floor. The data contract moved to v2 and the mockup to v1.00 in the same pass, so the three never disagree.

Change log, v11 to v12 (25 August 2026): C20 added, decisions D76 to D83: the prefilled options design and the AI's role in Release 1, the three gate-committed AI use cases, the origin label on every option, the supervisor as approver of playbook changes, the discovery canvases moved to the first workshop, and the launch plan. C7 records five new artefacts. C9 closes the Lee Kiao question and opens the playbook approval workflow. The milestone sequence is under revision by Pierre with Dung and Duy and is deliberately untouched here; the revision lands in v13 together with the Milestones tab of the data contract.

Change log, v10 to v11 (24 August 2026): reconciliation with the proposal deck v3 rev4 written by Julien. C19 added, decisions D63 to D75: eight conflicts resolved, ten additions from the deck adopted, the merged exception catalogue, the corrected milestone order at origin, the 7 KPIs, the feed ladder and the Committed Set. C15 gains the OTIF two-level rule. C9 gains the deck's own open points. C7 records the conflict resolution slide.

Change log, v9 to v10 (23 August 2026, evening): C18 added, decisions D52 to D62 from the evening working session: the Not committed label, the module and sub-module hierarchy with its vocabulary, the split of the mockup and the plan into two files, the execution corrections, the team pods, the artefact set with its RASCI, the training chain, the two kinds of specification, the Azure DevOps position, and the ferry against ship rule with the sea lane corrections. C16 rewritten around the two files and the new hierarchy. C7 gains the artefact workflow and RASCI slides. C9 gains the FFI question and the project management tool question.

Change log, v7 to v8 (20 August 2026). This version absorbs the first day of workshop discussion with YCH and the mockup work that followed it, and it is the version that supersedes the mockup build record on the points where the two disagree.

- C1: the kickoff conflict is settled. Week 1 is Monday 24 August 2026 and the Release 1 gate is the end of week 16, delivered Friday 11 December 2026. The v7 wording of 31 August is withdrawn.
- C1: the Cikarang paragraph placing the crews and the staging with the plant warehouse is deleted. It contradicted C10.9 in the same file and it was wrong. Crews as a concept are gone entirely (D26), and C10.9 is amended accordingly.
- C2 and C4: block 7.2 is deleted, so the working requirement list is 19 blocks. Block 3.1 becomes outbound staging and dock assignment. The Optimize and Measure layer is dissolved.
- C13 added: the decisions of 20 August, D21 to D36.
- C14 added: the warehouse model at Cikarang, which is the heart of what the workshop changed.
- C15 added: escalation thresholds and the resolution record.
- C16 added: the programme board model, which is now how the plan is discussed.
- C12 updated: ports, and the removal of the Surabaya relay.
- B12 and B13 added: delay cause taxonomies, and Indonesian domestic port and ferry practice.

Change log, v6 to v7 (19 August 2026): C1 gains the network shape (factory, master DC, overflow DC, supply points) and the flow decisions D18 to D20. C10.9 is corrected: YCH runs the warehouse at Cikarang, so the crews and the staging are YCH's. C10.7 is reopened as a question rather than a decision. C12 added: the three flow decisions.

Change log, v5 to v6 (19 August 2026): Part C gains C10 (four decisions taken during the mockup build that bind the engagement regardless of the mockup) and C11 (pointer to the separate mockup build record, with the routing rule between the two documents). C1 gains the two distribution centres in scope. No other part changed.

Change log, v4 to v5 (17 August 2026): Part C added in full (the Transport Control Tower track: the YCH requirement list, builders, three-layer architecture, the ETA and exception doctrine, the two-workstream delivery plan, slide inventory, decisions and assumptions). Part B gains B10 (builder landscape) and B11 (shipment-level detection versus network-level management). Part A is unchanged from v4 except this header.

---

# Part A. Proposal Working File

## A1. The opportunity

YCH (contact: Sardar Ahmed) has asked CEL for a proposal for a Supply Chain Orchestration Control Tower serving one of its FMCG manufacturing customers operating in Indonesia and the Philippines. Sardar's framing, from the WhatsApp exchange of 23 June 2026: the Control Tower connects Plan with Deliver in real time and executes Deliver; the data exists upstream and downstream but sits in silos; AI is required, agents subsequently; the work must be phased. His indicative business impact targets (over 85 percent reduction in manual issue resolution time, over 35 percent faster time to cash, 99.9 percent SLA compliance) are treated as the stretch end of the value case, not as commitments.

## A2. Scope decisions taken in working sessions

- Execution, not planning. The tower takes the plan as given. It does not re-forecast and does not re-decide the plan. Planning capability (SIMCEL) stays a scoped option, outside the core.
- Deliver is kept whole for this proposal. We do not split it into Order and Fulfill. The working scenario: supply planning delivers a plan detailed to SKU, node and week; the Deliver function converts it into released orders and executes them.
- The seam has three levels: the plan (Supply Planner), the released orders (Deployment Planner), and the actual shipments (3PL, YCH). There are two deviation points: exception adjustments at release, and execution reshaping at load building. Both are legitimate; the failure is that neither feeds back to planning with its reasons.
- The corrected silo statement, to be used everywhere: the ERP does record shipped and received quantities and dates. What it lacks is the reason behind each change, live arrival estimates against planned lead times, and the pattern that should correct the planning parameters. The tower adds that layer.
- The validation loop between the 3PL and the manufacturer exists contractually but runs on email and calls; it leaves no system trace. Making it a traced workflow, with the reason attached to each amended order, is a core tower function.
- Assumed plan granularity for this proposal: a weekly plan per SKU and per node (decision of 6 July, pending confirmation with Sardar).
- Decisions of 7 July, slide work: the tower's capability identity uses the see-understand-act-learn frame (recognized control tower frame in the Gartner-related literature), reconciled with the A3 phases through phase tags on each capability. SCOR DS terms (Plan, Order, Fulfill) are used as descriptive tags only, on the mechanism slide inputs; Deliver stays one workstream. Scope and objectives are two separate slides; objectives pending discussion. The FMCG and country context does not go on the scope slide; its landing place is to be chosen. Trend forecasting is scoped to execution trends (lead time drift, recurring patterns); the distinction from demand forecasting is made verbally, not on the slide.
- Decisions of 8 July, module block: the deck presents the tower as three modules (1. Connect Plan with Deliver, 2. Run Deliver: Transport, 3. Run Deliver: Warehousing) introduced by one connecting slide, then one slide per module on an identical skeleton. The mechanism slide stays the general slide for the whole tower and was revised to cover warehousing. Engine vocabulary (reconcile, predict, assess, recommend, learn) appears only on the mechanism and connecting slides, never on module slides, to keep one engine, not three. Module slide base callouts are consequence claims, not worked-example cross-references. Warehousing scope: the tower sits at the warehouse boundary and never operates the WMS; YCH decides the how inside its four walls. The HTML mockup is organized by how a person works, not per module: warehousing appears as panels inside the existing screens, plus a small module strip on the network overview bridging to the deck structure.

## A3. Workstreams and phases

Three workstreams, each moving through three phases. Phase boundaries are capability gates, not dates.

| Workstream | Phase 1: visibility | Phase 2: recommend | Phase 3: act |
|---|---|---|---|
| 1. Connect Plan with Deliver | Mirror plan, released orders and shipments; reconcile the three levels; trace the validation loop | Recommend deployment adjustments with costed options | Write back validated amendments |
| 2. Run Deliver: Transport | Live shipment status, multi-modal arrival estimates, exception detection and costing | Recommend re-plans with costed options and action deadlines | Execute approved re-plans within guardrails |
| 3. Run Deliver: Warehousing | Mirror warehouse milestones at both nodes (receipt, pick, pack, load, goods issue at the origin; goods receipt and stock available at the destination); readiness per released order against its cut-off; dock-to-stock and receiving-capacity view per DC | Detect readiness misses and receiving conflicts before they bind; recommend costed options (resequence against the cut-off, shift the receiving week, split the delivery) with action deadlines | Confirm approved adjustments to YCH's systems within guardrails (amended appointment, resequenced release); the tower never operates the WMS |

## A4. The worked example used on the slides

One SKU (sachet shampoo, high rotation), one lane (Cikarang NDC to Makassar DC, includes a sea leg), four weeks, plan of 10,000 units per week. Working assumption: one 40 ft container holds 6,000 units. All figures are illustrative; the client's real case-per-container figure and touch rates replace them in discovery.

| Line | Plan | Released / shipped | Reason |
|---|---|---|---|
| Week 32 (D3) | 10,000 on D3 | 12,000 released; 12,000 sailed D3 | Promo uplift at Makassar after the weekly run (+2,000); ships as exactly two full containers |
| Week 33 (D10) | 10,000 on D10 | 10,000 released; 12,000 sailed D8 | Sailing moved from D10 to D8 by the carrier; 2,000 pulled forward from the D17 order to fill two full containers; proposed by 3PL, validated by DP |
| Week 34 (D17) | 10,000 on D17 | 9,000 released; 6,000 sailed D19 | Inbound delay at the NDC (-1,000 at release); D17 ferry cancelled, next sailing D19; 6,000 ships as one full container, 1,000 rolls to D24 |
| Week 35 (D24) | 10,000 on D24 | 10,000 released; 11,000 sailed D24 | Includes the 1,000 rolled from D19; one container part-filled |

Totals conserve across levels: 40,000 planned, 41,000 released, 41,000 shipped. Two of four lines changed at release; three of four loads were reshaped in execution.

Reconciliation note for week 34, to keep any derived dataset consistent: the 9,000 released include the 2,000 already shipped in week 33's validated pull-forward; physically, 6,000 sail on D19 and 1,000 roll to D24 (2,000 + 6,000 + 1,000 = 9,000).

![Plan, released orders and actual shipments on a day axis](diagram_day_axis.png)

## A5. Slide inventory

Built (content-only layer for the pre-branded CEL master):

- Slide 1: A Sound Plan Degrades in Two Silent Steps. The three-row day-axis chart (plan, released orders, actual shipments) with reasons per transition, changed-count labels per row, and the corrected silo statement as base callout.
- Slide 2: A Solid Weekly Cycle, an Untraced Validation Loop. The three-lane workflow from the weekly planning run to the sailing. Steps 3 (load build) and 4 (fit check) are merged into a single step 3, Load Build and Fit Check, with two exits (fits, misfit); the validation loop is step 3a.
- Slide 3: The Tower Enters at Three Points, All in Phase 1. Duplicate of the workflow with three Control Tower touchpoint badges: CT1 mirrors released orders and amendments, CT2 turns the validation loop into a traced workflow, CT3 enriches the feedback into the next run. All three are Phase 1 behaviors.

- Slide 4: The Tower Executes the Plan, It Does Not Re-Plan (scope). Two columns. What the tower is: intro line "a real-time layer above the existing systems: connects them, replaces none of them", then four capability boxes on the see-understand-act-learn frame with phase tags (1. SEE, Phase 1; 2. UNDERSTAND, Phase 1; 3. ACT, Phases 2-3; 4. LEARN, from Phase 1). What the tower is not: not a planning system, not the parameter owner, not the book of record, not the 3PL's operator; SIMCEL line beneath. Base callout: the Deployment Planner and the 3PL already convert the plan into shipments; the tower makes that conversion visible, traced and validated, and feeds back what planning cannot see today.
- Slide 5: Availability Whole, Shipments Reliable, One Engine (mechanism). Three bands on one five-column grid. Inputs: the weekly plan (APS), released orders and amendments, execution events (warehouse and transport milestones from WMS and TMS, carrier and telematics feeds), costs and constraints (including DC receiving capacity), master data; SCOR DS tags (Plan, Order, Fulfill) on the first three, with the footnote. Engine: reconcile, predict (arrival and order readiness against lead times and cut-offs), assess, recommend, learn (drift per lane and per node); honesty line on where AI genuinely helps beneath. Outputs as the two halves: keep availability whole (Supply Planner and DP) and keep shipments reliable (DP and YCH, including order readiness, and lane and partner performance measured from the shared record). Base callout: disruption management as one loop. Revised 8 July to cover all three modules: this is the general slide for the whole tower, not a module slide.
- Slide 6: One Tower, Three Modules, One Loop (connecting slide). The five-step physical flow (weekly plan, released orders, ready at origin, on the lane, received and available) with a return arrow below it labeled "reasons, actuals and patterns back to planning"; module bands aligned to their flow segments, module 1 spanning plan and orders, module 3 appearing at both ends of the lane, module 2 between them, all in blue differentiated by number only; a full-width one-engine band repeating the five engine words from the mechanism slide; base callout tying the three modules to the worked example (promo uplift, cancelled ferry, inbound delay). Module band headers use the short names (Module 2. Transport, Module 3. Warehousing); full names live on the module slides.
- Slides 7 to 9: the three module slides on one shared transposed skeleton. Left rail: the module's draw from the shared input families, marked stable across the three phases. Three phase rows top to bottom (Phase 1 visibility, Phase 2 recommend, Phase 3 act), each with a NEW CAPABILITY cell and a NEW OUTPUT cell carrying an owner line in grey; Phase 2 and 3 wording is cumulative ("adds..."). No engine vocabulary on these slides. Base callouts are consequence claims:
  - Slide 7, Module 1 Closes the Loop the ERP Never Records: callout "Every validated deviation becomes planning input: reasons accumulate into patterns, and patterns become parameter corrections proposed to the Supply Planner, so the same deviation stops recurring."
  - Slide 8, Module 2 Turns Arrival From a Discovery Into a Decision: callout "Every disruption is costed while there is still time to act: units at risk, options priced, and the deadline after which each option expires, instead of an explanation after the goods are late."
  - Slide 9, Module 3 Guards Both Ends of Every Lane: callout "A deviation is caught where it is cheapest to fix: at the origin before the sailing closes, and at the destination dock before the shortfall reaches the plan." Boundary statements sit in the owner lines (the tower proposes, it does not operate the warehouse; the WMS remains YCH's system alone).

![The weekly cycle from planning run to sailing](diagram_workflow.png)

![The same cycle with the three Control Tower touchpoints](diagram_workflow_ct.png)

Agreed structure, not yet built:

- Objectives: split from the scope slide (decision of 7 July); content to be discussed before drafting.
- Phased approach: the workstream and phase matrix, honest phasing as the wedge; deliverables and team structure added per A8.
- Value case: mechanism-backed ranges (conservative, likely, stretch), Sardar's headline numbers placed at the stretch end.

Planned, pending confirmation:

- Systems and data-flow architecture: the existing landscape (planning system, ERP, 3PL warehouse and transport systems, batch document flows), where the tower connects, which existing links it reuses, and which new feeds it needs. Adapted from the Paragon-style layered landscape.
- HTML mockup of the tower interface: activated 7 July; working brief in A9, interface research in B8; to be built in a dedicated thread.

## A6. Assumptions to verify in discovery

| Assumption | Status | Consequence if wrong |
|---|---|---|
| Plan granularity is weekly, per SKU and per node | Working assumption | If planning stops at regional or monthly volumes, the tower originates more of the disaggregation; scope grows |
| The DP touches a low single-digit percentage of lines in a normal week | Extrapolation from forecast-error statistics | If the touch rate is high, the plan itself is weak and the story shifts from feedback to plan quality |
| One 40 ft container holds 6,000 units of the example SKU | Illustrative assumption | Numbers on the example slide change; the logic does not |
| Integration landscape is hybrid: batch document exchange with YCH, partial real-time, long tail of island carriers on file drops | Inference from industry practice | Phase 1 effort and duration depend directly on this; verify early |
| Supply Planner and Deployment Planner are distinct roles | Common pattern, org-dependent | If merged, the queue and watchlist design maps to one owner; process design changes, tower functions do not |
| Distribution of deviation reasons matches the general list in B3 | Synthesis of practice, not measured | Prioritization of tower features in Phase 2 follows the client's actual distribution |
| Data is complete and robust upstream and downstream (Sardar: "full data available, too much data") | Client claim, untested | Phase 1 connectivity effort and the value ramp depend directly on real data quality; test early in discovery |
| YCH's WMS emits milestone events at usable granularity and latency | Inference from industry practice, untested | If confirmations arrive as end-of-day batches, Phase 1 readiness monitoring degrades to next-morning reporting until the feed improves; the warehousing value story shifts from prevention to measurement |

## A7. Open question for Sardar

How far does the client's planning actually reach today: a genuine per-DC, per-SKU, time-phased replenishment plan (in which case the tower monitors and corrects at execution level), or aggregate volumes with the split into executable orders unowned (in which case the tower originates more). Our working assumption is the former, logged in A6; to be confirmed with Sardar.

## A8. Sardar's requirements register

Every need expressed in the WhatsApp exchange of 23 June 2026, in his words (condensed), with its coverage status in this file and its landing place in the deck. Purpose: nothing on this list may drop silently. Items marked not covered belong to the remaining slides (scope and objectives, mechanism, phased approach, value case, architecture).

| Group | Requirement (Sardar's words) | Coverage today | Landing place in the deck |
|---|---|---|---|
| Framing | CT connects Plan with Deliver, real time; executes Deliver | Covered: A1, A2, workstream 1 in A3 | Scope and objectives slide |
| Framing | All the data exists, upstream and downstream, but in silos; CT connects the two and then runs Deliver | Covered: A2, corrected silo statement | Slide 1 (built) |
| Framing | FMCG, SEA; Indonesia (285m) and Philippines (108m) | Covered: A1 | Context on the scope slide |
| Framing | Full data available; no time to be wasted on that; all value creation | Logged as a client claim in A6 | Discovery tests it before Phase 1 sizing |
| Framing | AI required, subsequently agents | Covered: A1 and the phase progression in A3 | Phased approach slide |
| Framing | Phased, not magic (agreed in the exchange) | Covered: A3 | Phased approach slide |
| Structure | Objectives, deliverables, scope, roadmap, structure | Partial: scope in A2, roadmap in A3; objectives, deliverables and team structure absent | Objectives on the scope slide; deliverables and team on the phased approach slide |
| Core tech | Cloud based platforms | Not covered | Architecture slide |
| Core tech | AI and ML | Partial: engine designed, not yet documented here | Mechanism slide |
| Core tech | Digital twins (his question mark) | Not covered in this file; deferred to Phase 3 | Phased approach slide, Phase 3 |
| Core tech | IoT and telematics | Not covered in this file | Mechanism slide, inputs |
| To cover | End-to-end visibility | Partial: implied by the A3 phase columns, not named | Mechanism and phased slides |
| To cover | Disruption management | Partial: workstream 2 in A3 | Mechanism slide |
| To cover | Automated execution | Partial: the Phase 3 act column in A3 | Phased approach slide |
| To cover | Agentic decision-making, when available | Covered in substance: A3 Phase 3 and slide 3 | Phased approach slide |
| Capability | Issue handling: alerts and manual triage moving to automated workflows and AI-powered resolution | Partial: workstream 2 in A3 | Mechanism slide |
| Capability | Visibility: transaction level, especially siloed between systems; end-to-end process context across systems | Covered in substance: workstream 1 Phase 1 in A3, and B5 | Slides 1 to 3 (built) |
| Capability | Decision support: real-time data, trend forecasting, prioritization based on impact | Partial: A3; trend forecasting and impact ranking not yet named | Mechanism slide |
| Capability | Partner performance: consistent measurement, scorecarding plus feedback loop | Not covered; politically delicate, YCH itself becomes a scored partner | Mechanism slide, outputs; handle with care |
| Capability | Resilience: designed to prevent disruption and repeat issues | Not covered in this file; recurring-pattern logic designed, not yet documented here | Mechanism slide |
| Anchor | Unified connectivity: API, EDI, MFT | Covered in substance: B6 | Architecture slide |
| Anchor | Real-time visibility | Partial: A3 | Mechanism slide |
| Anchor | Agentic resolution | Partial: A3 Phase 3 | Phased approach slide |
| Impact | Over 85 percent reduction in manual issue resolution time; over 35 percent faster time to cash; 99.9 percent SLA compliance; and others | Covered: A1, positioned as the stretch end, not commitments | Value case slide |
| Format | Direction only, free format | Accepted as the working format | Not applicable |

Register update, 7 July, after the scope and mechanism slides were built: AI and ML, IoT and telematics, end-to-end visibility, disruption management, issue handling, decision support (impact prioritization), resilience, real-time visibility, and partner performance are now covered on the built scope and mechanism slides. Partner performance is worded as lane and partner performance measured from the shared record, factual and symmetric. The context row (FMCG, Indonesia, Philippines) is not on the scope slide by decision; landing place to be chosen. The objectives row now points to the pending dedicated objectives slide.

Register update, 8 July, after the module block was built: the three-module structure gives disruption management and issue handling their concrete home (one exception queue across plan, transport and warehouse deviations, shown on all three module slides), and resilience its mechanism (the recurring-pattern and parameter-correction loop, now the module 1 callout). The warehousing workstream, previously undeveloped, is fully specified in A3 and on slide 9. Remaining uncovered items are unchanged: cloud platforms and unified connectivity (architecture slide), digital twins (phased approach slide, Phase 3), objectives, deliverables and team structure (objectives and phased approach slides), and the value case.

## A9. Mockup working brief (activated 7 July)

Purpose: a clickable, non-functional HTML mockup of the tower interface, in CEL visual style, embeddable in ATOM (single self-contained HTML file, no external dependencies, no backend). All numbers synthesized and labeled illustrative. Geography: Indonesia first; the Philippines appears as a phase 2 toggle or greyed region. The worked example of A4 (sachet shampoo, Cikarang NDC to Makassar DC, W32 to W35) is carried into the mockup as the featured storyline so the deck and the demo tell one story.

Personas and default lens: the Deployment Planner is the primary user; a role switch shows the Supply Planner view (parameters, structural exceptions) and the YCH view (proposals, execution). Phase honesty: Phase 1 behaviors (see, understand, trace) are shown live; Phase 2 recommendations appear marked as preview; Phase 3 execution appears as concept only.

Screen inventory (to be confirmed screen by screen before build):
1. Network overview: Indonesia map with DCs and lanes, live shipments, headline indicators (plan adherence, on-time arrival, open exceptions, units at risk), alert strip.
2. Plan versus actual: the three-level reconciliation (plan, released orders, shipments) per SKU, DC and week, with the reason attached to each transition; the living version of built slide 1. Differentiator.
3. Exception queue: deviations ranked by impact (units and cost at risk), action deadline, owner, and status workflow (detected, options costed, decided, executed, fed back).
4. Validation loop: the traced 3PL-manufacturer thread on a container-fill misfit, with costed options (hold, LCL, part-filled container, pull forward), the DP decision, and the reason recorded. Differentiator.
5. Shipment and lane detail: milestones, position, predictive arrival against planned lead time, deviation flag; drill-down target from map and queue.
6. Learning and parameters: lead time drift per lane (planned versus actual), recurring reshaping patterns, repeat issues, proposed parameter corrections for the Supply Planner, lane and partner performance panel.

Interface research grounding is in B8.

Content pack for the mockup thread, produced 8 July: CT_warehousing_mockup_content.md. It carries the warehousing module's contribution to each of the six screens, the phase honesty mapping (Phase 1 live, Phase 2 preview badge, Phase 3 concept badge), the week 34 warehousing storyline day by day with the reconciliation check, vocabulary for labels, the boundaries the mockup must not cross (nothing that operates the warehouse, no scoreboard styling on YCH metrics), and the WMS milestone assumption. The mockup data model must respect the week 34 reconciliation note in A4.

---

# Part C. Transport Control Tower Working File (YCH Internal, Indonesia)

Opened 17 August 2026. This track is distinct from Part A: the client is YCH itself, the scope is its Indonesian road transport operation, and the tower is co-built (CEL designs and directs, YCH builds). Knowledge from Part B applies where marked.

## C1. The engagement

CEL proposed a Transport Control Tower for YCH's Indonesian transport operations (proposal of 14 August 2026, submitted for Sardar's review). Shape of the plan: a Blueprint of weeks 1 to 3 (scope, sequencing and baseline), then Release 1 covering the See and Decide capabilities over 16 weeks, then Act after a parallel run. This is the capability-gated structure of A3 applied to this track: the Blueprint is phase 0, and phase boundaries are gates, not dates.

**The dates, settled 20 August 2026 (D21).** Week 1 is the week of Monday 24 August 2026. Week 16 therefore runs Monday 7 to Sunday 13 December, and the Release 1 gate means the work is delivered, so it sits at the end of that week: **Friday 11 December 2026**. Version 7 of this file said kickoff was targeted for 31 August, which would have put the gate a week later; that wording is withdrawn. Release 1 has been communicated to YCH as ambitious, and the realistic December scope remains an open discussion (see C6 for the position).

The call of Monday 17 August (YCH senior managers and technical staff, not Sardar) had three exit targets: the requirements list accepted as Blueprint input, team names and roles, and the room's recommendation to proceed with the perimeter and kickoff intact. Scope, commercial terms and dates stay with Sardar.

**The workshop of Friday 21 August 2026**, two sessions (morning: the collaboration in detail; afternoon: sustaining the solution), produced the decisions recorded in C17 and the structures below.

**Teams, streams and phases (from the Teams, Streams and Phases slide, 23 August).** Two streams. Product and Platform, led by Pierre: the CEL team, one extra developer, half a DevOps, the first Y3 developer, and Lana. Data and Integration, led by Thibaud (technical) and Youssef (functional): one extra developer, half a DevOps, the second Y3 developer, fed by MileApp. Phases: Blueprint 3 to 4 weeks, Development 10 to 12 weeks, QA 2 weeks, Go-live 1 week plus hypercare. **Two open tensions, carried rather than smoothed:** the phase durations sum to 16 to 19 weeks against a 16-week gate at 11 December, and the collaboration model between the Y3 developers and the CEL team is not settled.

**The IP correction (from the Friday morning session).** YCH, through Sardar, owns the control tower code. The proposal wording said otherwise; that was a drafting error, and the updated proposal to Sardar carries the correction.

**Sites in scope.** Two distribution centres, 7.0 km apart by straight line:

| Site | Nature | Coordinates |
|---|---|---|
| Cikarang | In-factory distribution centre, at the customer's plant | -6.2800536, 107.1135984 |
| Cibitung | Offsite warehouse, managed by YCH | -6.2436486, 107.0624416 |

The distinction matters beyond geography. YCH runs the warehouse at both sites: at Cikarang it is in charge of the finished goods from the conveyor that brings them out of the factory, through storage and picking, and Cibitung is a YCH warehouse throughout (C10.9). So the staging floor and the loading are YCH's at both, though they sit with warehouse operations rather than with transport. Any dock argument must say which site it is about, because the two differ in size and in rhythm rather than in ownership.

**Capacity at each site**, as stated by YCH on 20 August for Cikarang and assumed for Cibitung:

| Site | Outbound docks | Staging lanes |
|---|---|---|
| Cikarang | 23 (stated by YCH) | 15 (stated by YCH) |
| Cibitung | 12 (assumed) | 8 (assumed) |

---

## C2. The YCH requirement list

YCH reverted to the proposal with a requirements slide, "Transport Control Services MVP": seven process rows (1. Transport planning, 2. Transporter admin, 3. Dock management, 4. Loading, 5. In-transit visibility, 6. POD management, 7. Dashboard and analytics) carrying 22 blocks, numbered 1.1 to 7.2 plus two cash blocks (cash disbursement, disbursement settlement). The cash blocks are treated separately for now. On 20 August block 7.2, dock utilization, was deleted, its work absorbed into KPI Engineering and the performance report. So of the 22 numbered blocks, two cash blocks are set aside and 7.2 is gone: **the working requirement list is 19 blocks**. Blocks are referred to by their number and nothing else: 7.1, never B7.1 (D24). The word census, used in earlier versions of this file for this list, is retired: it is **the YCH requirement list**.

**The confirmation rule (23 August).** Only the numbered blocks 1.1 to 7.2 are confirmed requirements, because they come from the client. Everything else on the programme board, the tower's own features, is **CEL-proposed and reviewed by nobody yet, Pierre included**. The board and this file mark that distinction rather than blur it.

**The 8 series is internal (23 August).** Numbers of the form 8.x that appear on the programme board are CEL-internal keys for tower features that have no YCH block to point at. They are never client-facing and never printed on a slide.

Two successive readings of that slide exist and both are kept:

**The lane reading (first version of the slide).** Every block falls in one of three lanes. A, the tower itself (visibility, exceptions, KPIs), already covered and scheduled in the proposal. B, the execution backbone YCH already runs (TMS, dock, loading), which the tower connects to. C, new components (transporter bidding, driver apps, ePOD, cash), each getting a build, buy and sequence decision inside the Blueprint, weeks 1 to 3. Discipline: nothing is called out of scope; everything has a lane and the Blueprint assigns it. Known caution points from the call preparation: the KPI dashboard (A) depends on a POD path that is a C decision, so Release 1 computes OTIF on whatever POD path exists at that date (SAP postings and manual capture included) and improves as C components land; the GPS tracking block bundles computation (tower) with acquisition (a per-carrier-segment sequencing item); B classifications are unverified claims until the Blueprint inventories what actually runs, and a B block that turns out not to exist moves to C, which strengthens the Blueprint argument; and the requirements list version accepted as Blueprint input should be frozen explicitly.

**The builder reading (second version of the slide).** YCH annotated each block with its intended builder: Y3 (YCH's internal IT) in purple, MileApp in red. Y3 carries dock management, loading and the dashboard row (eight blocks); MileApp carries transport planning, transporter admin, in-transit visibility, POD management and cash (the rest). Lilian (YCH) then asked for CEL's help on the Y3 blocks, as Y3 cannot absorb them all.

## C3. Builders and the CEL role rule

| Actor | Role |
|---|---|
| Y3 | YCH's internal IT team. Builds the tower and the Y3-assigned execution blocks |
| MileApp (MA) | Indonesian field-operations platform (profile in B10). Treated as selected; some modules could in principle be reassigned, but the window is short |
| CEL | Designs and directs the tower; can design tools that Y3 builds, sized at Blueprint |

The role rule, stated once and used everywhere: CEL designs what Y3 builds; MileApp is configured, not designed by CEL; the tower reads from all of it. CEL owns no transactional software.

**Amended 23 August.** Y3 and YCH do the MileApp setup; CEL does not work with MileApp on configuring their modules. CEL's only MileApp-facing work is **defining the data the tower needs to receive**: the fields, the events, the timing. Whether CEL talks to MileApp directly for that, or goes through Y3, is open (C9). The CEL design offer that applied to the Y3 execution blocks lapses on the blocks that moved to MileApp (see C4): what remains of it is the tower itself and block 7.1. This is a commercial change and belongs in the updated proposal to Sardar.

## C4. The architecture and the block mapping

**Two layers, not three, from 20 August 2026 (D22).** EXECUTE (transactional systems, each owned by its builder) and CONTROL TOWER (one instance reading everything below: the live record, the exception queue, the management readout). The Optimize and Measure layer is dissolved: dock utilization went into KPI Engineering and the performance report, and route and load optimization went back to Execute where its builder sits. The tower-versus-tools argument is unchanged: each tool sees its own slice and raises its own alerts; only the tower holds one record across all of them, correlates and alerts with a deadline, and gives management one truth.

| Block | Title | Builder | Layer | CEL design offer |
|---|---|---|---|---|
| 1.1 | Shipment orders | MA | Execute | no |
| 1.2 | Route and load optimization | MA | Execute | no; assignment to confirm at Blueprint |
| 1.3 | Trip and truck allocation (bidding) | MA | Execute | no |
| 2.1 | Transporter job acceptance | MA | Execute | no |
| 2.2 | Transporter truck assignment | MA | Execute | no |
| 2.3 | Driver QR entry | MA | Execute | no |
| 3.1 | Outbound staging and dock assignment | MileApp, unconfirmed | Execute | lapsed (C3) |
| 3.2 | Truck entry | MileApp, unconfirmed | Execute | lapsed (C3) |
| 3.3 | Truck register to RP (dock-in) | MileApp, unconfirmed | Execute | lapsed (C3) |
| 4.1 | Start loading | MileApp, unconfirmed | Execute | lapsed (C3) |
| 4.2 | Truck dock-out | MileApp, unconfirmed | Execute | lapsed (C3) |
| 4.3 | Truck dispatched | MileApp, unconfirmed | Execute | lapsed (C3) |
| 5.1 | GPS, ePOD, manual update | MA | Execute | no |
| 5.2 | ETA, ATA and exceptions | MA | Control Tower | set aside (see C5) |
| 5.3 | Exception reporting | MA | Control Tower | set aside (see C5) |
| 6.1 | Truck at distributor | MA | Execute | no |
| 6.2 | ePOD capture or manual update | MA | Execute | no |
| 6.3 | Returns and exceptions | MA | Execute | no |
| 7.1 | KPI dashboard | Y3 | Control Tower, inside End to End Visibility as the operational performance dashboard (D40) | yes |

Block 7.2, dock utilization, was deleted on 20 August (D22). Block 4.1, start loading, remains a requirement and its timestamp is still recorded; the tower simply stopped measuring from it (D27).

**On the Release 1 stack slide the Gate, Staging and Dock Execution box (blocks 3.1 to 3.3 and 4.1 to 4.3) is drawn dashed**: builder MileApp, unconfirmed, and not committed for Release 1. Y3 will not build these blocks in Release 1 (D49). The tower's staging area monitoring screen exists only if this module goes live, and that dependency is recorded on the feature itself (D50).

## C5. The ETA and exception doctrine (blocks 5.2 and 5.3)

YCH's slide assigns ETA, ATA and exception computation to MileApp; the tower claims exception management. The reconciliation, which is the agreed position and appears as one footnote on the requirement list slide:

- MileApp computes ETAs, ATAs and shipment-level exceptions (its ETA method, per YCH's own slide, is point-to-point distance based, with ATA captured by geofence).
- The tower captures, correlates and alerts. Planners never log into MileApp; everything they need is in the tower.
- Single alerting authority: MileApp's notifications serve drivers, transporters and end customers; alerts to YCH decision-makers come from the tower only, because only the tower holds the context (the order, the customer window, what else is late on the lane, the owner, the deadline). Detection can be duplicated cheaply; alerting must not be, or alert fatigue follows (B8's documented failure mode).
- More context: the tower correlates MileApp events with what MileApp cannot see (SAP orders and documents, dock events, other transporters, sea freight and manual-update shipments).
- The challenge function: the tower measures its feeds, MileApp included (ETA accuracy against actuals, feed latency, GPS coverage rate), factually and symmetrically, in the same spirit as the partner-performance wording rule of A8.

Set aside by decision of 17 August: the possibility that the tower computes ETAs and exceptions itself from raw positions. Not claimed on any slide, not raised with YCH for now.

## C6. Delivery: two workstreams, data-first

The plan is presented as one tower and two workstreams under it, on one time axis from signature:

- The TCT workstream (CEL designs and directs, Y3 builds): Blueprint weeks 1 to 3 (define the tower: exception set, KPI set, scope of the live record; derive the data needs; map them to sources), then build and connect, then CT v1 live mid-December, then continuous enrichment.
- The tools workstream (Y3 builds, CEL can design, sized at Blueprint; MileApp configured): sequenced at Blueprint per tool, then the gate and dock builds and the MileApp rollout; each go-live adds a feed to the tower. No committed dates on this lane beyond the Blueprint sequencing.

The mid-December position: it is held by scoping v1 to the data that exists, not by waiting for any build below. The tower starts on SAP orders, documents and returns, manual milestone updates, and gate and dock timestamps where recorded; arrivals start computed and marked as computed, and become observed as GPS lands. Working assumption: no GPS or telematics is live in YCH Indonesia today (to verify). The pattern is the same observed-versus-computed honesty already built into the YCHBEACON mockup.

**The source of truth doctrine (Friday 21 August, D45).** MileApp is the transactional single source of truth for phase 1. The tower accumulates cross-system visibility data and becomes the operational reference over time. Two consequences taken with it: **the tower archives everything from day one**, transactions, exceptions, decisions, because the improvement and AI features have nothing to learn from otherwise; and **latest data is truth for the MVP**, historical versioning deferred to a later evolution.

## C7. Slide inventory, this track

**Superseded 23 August.** The deck below was the CEL working deck up to 20 August. The live client-facing deck is now Pierre's, four slides: **The YCH Transport Control Tower Digital Stack, Release 1** (two layers; three pillar boxes with six sub-boxes: Live status and Operational Performance Dashboard under End to End Visibility, User-based Exception List and Recommendation and Resolution Engine under Exception Handling, Reports and Advanced Analytics and Recommended Initiatives and Actions under Continuous Improvement; two bands, AI Integration and Pipeline Engineering; the Gate, Staging and Dock Execution box dashed, MileApp, blocks 3.1 to 4.3), **Teams, Streams and Phases** (two streams, four phases with durations, MileApp feeding Data and Integration, Lana footnoted in Product and Platform), **Proposed Milestone Sequence** and **Exceptions Across the Milestone Sequence** (both described in C17, D43 and D44).

Added 23 August evening: **CEL_TCT_Artefacts_RASCI_v1.pptx**, two content-only slides for the CEL master. Slide one, *Correct Is Written Before It Is Built, and Checked After*: the artefact workflow, workshops into specs and acceptance criteria into development into test scenarios and UAT into training, with the fortnightly accept-or-reject loop and reference data feeding the specification (Pierre reworked the connectors into a single Y junction after delivery). Slide two, *Every Artefact Carries One Accountable Name*: the full RASCI, seven artefacts produced by the Product and Platform stream and four received.

Added 24 and 25 August: **CEL_TCT_Launch_Pack_v1.pptx**, three slides: *Five Deliverables Sign the Blueprint on 18 September* (the checklist with a PIC per deliverable, three of five with Pierre), *One Team, Two Streams, One Seam* (the working agreement with Data and Integration, its four seam objects and the decision rights strip), and *Signed Friday, Launched Monday* (the launch runway to the 18 September gate). **CEL_TCT_Blueprint_Timeline_v1.pptx**, one slide: the Blueprint delivery timeline, twenty day columns from 24 August to 18 September, ten lanes, workshops as coded day markers with a key beneath. **YCH_TCT_Data_Contract_v1.xlsx**, the seam's first artefact, five tabs, jointly signed by Pierre and Thibaud. **CEL_TCT_Artefact_Starter_Pack_v4.docx**, the analyst team's teaching pack, one feature worked end to end with the exercise on a feature of each analyst's choosing.

Added 24 August: **CEL_TCT_Conflict_Resolution_v1.pptx**, one slide for Julien, *Eight Disagreements, Eight Decisions, One Version to Send*: the eight conflicts and three alignments between proposal v3 rev4 and this file, with Pierre's decision on each in red. Also **CEL_TCT_Analyst_To_Product_Owner_v1.pptx** and **CEL_TCT_Weekly_Preparation_v1.pptx**, the two internal slides on how the analyst team is being prepared, both built around Gemini-generated illustrations with the word clouds set as editable text.

The earlier CEL deck, kept for the record (delivered version v7), four slides:

1. The three-layer hierarchy: "Every Requirement Keeps a Builder; One Tower Reads Them All". Three bands (Control Tower, Optimize and Measure, Execute), nine grouped tiles with builder tags, role rule and tower argument as the base callout.
2. The two-workstream timeline: "The Tower Starts on Available Data; Each Build Adds a Feed". Tower band on top, TCT and tools lanes on one axis from signature, mid-December marker, base callout on the mid-December position.
3. Traceability, layout A (mirror grid): "Every MVP Block Has Its Builder and Its Layer". The seven process rows as YCH drew them, all 20 blocks with number, title, builder tag and layer tag.
4. Traceability, layout B (exploded bands): "The MVP Blocks Across the Three Layers of the Tower". The same requirement list sorted into the three layers.

Design decisions locked on this deck: builders shown as named tags (Y3, MA, CEL) in YCH's own legend colours (Y3 purple, MileApp red, CEL in CEL blue), left-aligned; block numbers as plain bold text, uncoloured; layer tags (CT, O&M, EXE) as rectangles on the right; each CEL tag is one deletable shape; all titles and subtitles in CEL-to-YCH voice, no meta-commentary. Open choice: layout A or B (or both) for the send to Sardar; recommendation on record is A, with B dropped.

## C8. Decisions taken, 17 August 2026

1. MileApp treated as selected; the Route and load optimization assignment stays open, worded softly ("assignment to confirm at Blueprint").
2. CEL's help on the Y3 blocks is shown without commercial terms; the standing phrase is "CEL can design, sized at Blueprint".
3. The "tower computes ETAs itself" option is set aside (C5).
4. The bidding block carries no invented timing; MileApp module sequencing is a Blueprint output.
5. The cash and disbursement blocks are excluded from the requirement list with an explicit footnote, so the count reads 20 of 20 placed.
6. Version convention for delivered files: the version number increments only on files delivered to Pierre; internal QA iterations do not consume numbers.

## C9. Assumptions to verify (this track)

| Assumption | Status | Consequence if wrong |
|---|---|---|
| No GPS or telematics live in YCH Indonesia today | Working assumption per decision of 17 Aug | If some exists, v1 arrivals are partly observed from day one and the value ramp improves |
| MileApp's API exposes positions and events at usable granularity | Plausible from its integration positioning (B10), unverified | The tower's capture of 5.2 and 5.3 degrades to MileApp's exportable summaries; the challenge function thins |
| The SAP to TMS interface and the routing capability exist as described in the B lane | Client slide claim, unverified | The block moves to the C lane at Blueprint; sequencing and Y3 capacity absorb it |
| Historical arrival and gate timestamps exist for the Blueprint baseline | Unverified | The weeks 1 to 3 baseline is partly measured during the Blueprint rather than retrieved from history |
| Y3 capacity is sufficient for the tower build plus the Y3 execution blocks | Doubted by Lilian for the execution blocks | CEL design support widens, sized at Blueprint; sequencing protects the tower build first |
| Requirements list frozen as Blueprint input in its current version | To confirm at acceptance | A later version reopens scope through the back door; process needed for additions |
| Cibitung has 12 docks and 8 staging lanes | Assumed 20 Aug; Cikarang's 23 and 15 were stated by YCH | The Cibitung screens misstate capacity; a one line correction |
| One delivery order per trip | Simplification for the mockup | The coordinator table needs a one to many order to trip model, which changes its shape |
| The six escalation thresholds (PB-P9 to PB-P14) | Assumptions, set by CEL | The queue fills with noise or the warning arrives too late to act on; the values are meant to be tuned in the room |
| The cause list of five families and twenty causes | CEL draft, shaped as in B12 | Recorded reasons cannot be counted against YCH's own taxonomy and have to be remapped |
| The builder of block 3.1, outbound staging and dock assignment | Superseded 23 August: the whole gate, staging and dock module is MileApp, unconfirmed (D49) | If it lands elsewhere or late, the staging area monitoring screen moves with it |
| A pick completion event exists in the warehouse system | Unverified; the staging screen needs it | Picking progress collapses to lane status; done times become inference |
| Who builds the scanning station (QR check in, dock in, dock out, check out) | Raised Friday afternoon; probably not Y3 | The milestone chain at origin has no capture point in Release 1 |
| MileApp data retention, rate limits, token lifetime, sandbox, transport flow field definitions, webhook signing | Six parked questions from the API review (B14) | Retention decides whether the tower needs its own warehouse from week one |
| CEL talks to MileApp directly for the data contract, or via Y3 | Open (C3) | Changes who sits in the integration meetings and how fast questions close |
| YCH's real list of areas for the ship-tos | The areas on the coordinator table are invented per ship-to | The table's grouping is wrong until replaced |
| Who Mrs. Lee Kiow is, and whether she is the channel for the six MileApp questions | Named on the deck's MileApp readiness risk. The spelling Lee Kiao was a meeting-notes mis-transcription, closed 25 August; her role is still being identified by Pierre's team | The six MileApp questions stay held, and every rung 1 entry on a MileApp milestone in the data contract stays a guess |
| The two commercial slides removed from the sharable deck | Slides 13 and 14 are absent, and slide 5 cites assumption 2, slide 14 | Anyone reading the sharable version cannot find the assumption the fencing rests on |
| Two people named Dat on the team slide | Slide 12 lists Dat twice with different roles; slide 11 names one | A name is wrong on a client-facing page |
| Who approves a change to the playbook | The Continuous Improvement loop proposes rules; a coordinator approving rules they then follow is self-marking (D79) | Decided in principle as the supervisor role from the escalation ladder; the workflow itself is confirmed in workshop W4 with YCH |
| Does CEL interact with FFI directly at all | Raised 23 August; the training chain is CEL trains Y3, Y3 trains YCH, and FFI's place in workshops and UAT is unknown | Changes who sits in the criteria workshops and who signs UAT; for Sardar or Lilian soon |
| Which project management tool the engagement actually uses | Azure DevOps agreed as an action item, environment not yet created, owner not yet named by YCH | Until it exists the plan lives as the plan file with JSON export; the board's contents move to Azure DevOps at Blueprint (D61) |
| Phase durations against the gate | Blueprint 3 to 4 plus Development 10 to 12 plus QA 2 plus Go-live 1 sums to 16 to 19 weeks; the gate is week 16 | Either a phase compresses or the gate moves; for Sardar, not for the team |

## C10. Decisions taken, 19 August 2026

7. Outbound only in the YCH requirement list, and to be re-checked. All six dock and loading blocks (3.1 to 4.3) describe a truck arriving empty, loading and leaving; there is no goods receipt or put-away block. But YCH is accountable for finished goods inbound off the conveyor at Cikarang, so inbound exists operationally even though the MVP list ignores it. Either the requirement list is incomplete or inbound is deliberately outside the tower's Release 1 scope. Question for Sardar, not a settled decision.
8. The collaboration surface is internal. Transporters and drivers will not log into the tower. Carrier and driver portal adoption is poor across the industry, and the working channel in this market is phone and WhatsApp. What an outside party says is logged by the YCH person who spoke to them, with the time, the name and the channel. No screen assumes an outside party types into the tower.
9. The staging floor and the loading are YCH's at both sites. YCH is in charge of the finished goods at Cikarang from the conveyor that brings them out of the factory, through storage and picking, and Cibitung is a YCH warehouse throughout. They sit with warehouse operations rather than with transport, so a staging change is an internal request between YCH functions, not a request to the customer. This corrects the version 6 wording, which placed them with the plant and was wrong.

   *Amended 20 August (D26 and D27).* The original wording of this decision also said the tower measures the gap between dock-in and loading started. It no longer does: crews are not modelled at all and the tower measures dock-in to dock-out. The ownership statement stands; the measurement statement is withdrawn.
10. Offline map tiles are not available. The OpenStreetMap tile policy forbids prefetching or bulk downloading tiles for later offline use, and requires visible attribution with no service guarantee. Any map that must work without a network has to be drawn from public-domain geometry rather than tiled.

## C12. Network shape and flow, 19 August 2026

**Site types.** Four, each with its own icon on both the geographic and the schematic map: factory, master DC, overflow DC, supply point. Pasar Rebo is a factory. Cikarang is the master DC, inside the factory perimeter. Cibitung is the offsite overflow DC. The remaining locations are supply points, that is local DCs.

**D18, the flow.** Pasar Rebo feeds Cikarang and Cibitung. Cikarang sends its overflow to Cibitung, and Cibitung does not send back to Cikarang (assumed, to be confirmed). Cibitung ships onward to other facilities as transfers, and to customers as last mile. YCH manages every facility to facility transfer. YCH does not manage every last mile.

**D19, the shuttle is its own trip.** The volume moved from Cikarang to Cibitung is not yet assigned to a customer or a supply point (assumed, strongly believed), so it cannot be modelled as a leg of a customer trip. It is a trip in its own right, which also keeps the nine milestone journey intact on every screen.

**D20, the dock screen shows one site at a time**, with a switch between Cikarang and Cibitung. Both sites use the same event model and the same measures, so the comparison is like for like.

**Ship-to aggregation.** Ship-to points change every day, so they are aggregated to the supply point that serves them and carried as a count split between modern trade and general trade. Facilities never change and are drawn as themselves. The supply point list in the mockup is Invented and must be replaced with YCH's own.

**D37, no relay between supply points (20 August).** Every supply point is replenished from a distribution centre. A relay from Surabaya to Makassar was declared briefly and then removed as unnecessary complication; the Makassar container now sails from Tanjung Priok, and the standard sea transit parameter was renamed accordingly.

**Ports and crossings (20 August).** A container does not sail out of a distribution centre and a truck does not drive to Sulawesi. Every lane is held as a run of legs, each one road or sea, and the point where the load changes vehicle is a named port or ferry terminal drawn on both maps: Tanjung Priok for Jakarta, Belawan for Medan, Soekarno-Hatta for Makassar, Bitung for Manado, Palaran for Samarinda, the Merak to Bakauheni ferry for south Sumatra, and Ketapang to Gilimanuk then Padangbai to Lembar for Lombok. The practice behind those choices is in B13. Every lane time in the mockup is an assumption for YCH to replace with its contractual transit.

## C11. Mockup build record

The interactive mockup for this track is `YCH_TCT_vN.html`, **current delivered version v0.59**, displayed in the product as ATOM TCT. A separate file, `YCH_TCT_Mockup_Build_Record_vN.md`, holds the build decisions, the data model, the personas and the parameter register.

**That build record is stale at version 1 and must be rewritten.** It still describes loading crews, dock doors, an eighteen door site, the waiting versus loading split and the old three-layer board. Where the two files disagree, this one wins: decisions D21 to D36 above are the current position.

That file also carries a Known, Assumed and Invented register for every load-bearing fact in the mockup. Nothing tagged Invented is a claim about YCH's operation, and nothing tagged Assumed has been verified. The mockup deliberately anticipates matters this engagement has not settled. The routing rule between the two files: a decision enters this working file only if it would still be true had no mockup been built.

## C13. Decisions taken, 20 August 2026

Taken with YCH across the first day of workshop discussion, and applied to the mockup in four phases.

**D21. The dates.** Week 1 begins Monday 24 August 2026. The Release 1 gate marks the work delivered and sits at the end of week 16, Friday 11 December 2026. Traded away: the 31 August kickoff written in version 7.

**D22. The Optimize area is dissolved and 7.2 deleted.** KPI and dock utilization work merge into KPI Engineering and the performance report. Route and load optimization moves into Execute. Traded away: the third layer on the stack slide, which no longer matched how the work is organised.

**D23. The tool set and its codes.** Six Execute tools, E1 to E6: Order Backbone, Route and Load Optimization, Carrier Engagement, Outbound Staging Assignment, Gate and Dock Execution, Delivery Execution. Seven Control Tower tools, CT1 to CT7: End to End Visibility, Exception Handling, Performance Report, Cost Engineering, KPI Engineering, Pipeline Engineering, Guarded Execution. The O series no longer exists, and any earlier note citing O1, O2 or the old CT numbering is stale. Guarded Execution is kept although the stack slide does not show it, because the slide shows the near-term stack and Guarded Execution is Release 2.

**D24. A requirement is named by its number.** 7.1, not B7.1. The letter was an internal key and it leaked onto the screen.

**D25. Modules are called features.** Everywhere, including the export.

**D26. Crews are removed entirely.** Loading crews were never raised in the workshop as a parameter. The problem at Cikarang is staging floor, dock bays and the coordination between the people who hold them. Traded away: the crew count as a lever, and the whole of the original exception 2, which argued from crews and had to be rewritten.

**D27. The tower measures dock-in to dock-out.** The waiting versus loading split is dropped from every screen. YCH's own position: knowing the time between dock-in and dock-out is enough, and a gap between dock-in and loading is rare enough not to model. Block 4.1 stays a requirement and the timestamp stays in the record.

**D28. There is no door.** The warehouse has doors and they do not matter. What matters are the outbound staging lanes, S1 upward, and the loading bays, called docks, D1 upward. In the tower, D is a dock and S is a staging lane; See and Decide remain project vocabulary and do not collide with them in the product.

**D29. Dock assignment is a sub-step of staging assignment.** Both acts sit in block 3.1 and both are the coordinator's. A dock is sometimes given at the same time as a lane when docks are free, but more often after the picking finishes. The systems do not force the sequence.

**D30. The journey milestones.** Checked in, staging assigned, dock assigned, docked in, docked out, checked out, then position, arrival and proof of delivery. Start loading is no longer a milestone. Door assigned becomes staging assigned, truck at gate becomes checked in, dispatched becomes checked out.

**D31. Two user types.** The control tower coordinator, who is the merge of the warehouse planner and the transport planner and is the tower's main user, and the supervisors, transport and warehouse, who own what happens on the ground. Everything the tower hands over goes to one of the two supervisors.

**D32. The dock timeline is built on expected check-in, not on advance booking.** A dock is given when the truck is there, so a planned bar starts from the expected check-in plus the run to a dock, and is as long as the vehicle class takes to load. Advance booking still happens occasionally and is kept on screen as the exception.

**D33. Waves are shown, not enforced.** YCH works its outbound in waves and the mockup shades them behind the planned bars. Nothing holds a truck back for its wave: a truck whose lane is ready can be called at any time, which is what the dock exception recommends.

**D34. Companies and people are held per tool.** A tool can carry more than one company, in order, and the first is the lead: it is answerable and it gives the bar its colour. Each company carries the number of people it puts on the tool. CEL leads every Control Tower feature; Execute keeps the builder YCH annotated on its own slide. The plan can then be read as a weekly headcount per company, which is the resourcing question the timeline gets asked.

**D35 and D36** are stated in C15, where they sit with the thresholds they govern: an acknowledgement holds an exception back only while a revised time stands, and no exception closes without a cause and a note. **D37**, no relay between supply points, is stated in C12 with the rest of the network shape.

---

## C14. The warehouse model at Cikarang

This is what the first workshop day actually changed, and it is the part most likely to be argued with.

**The objects.** An order, a truck, a staging lane and a dock. The coordinator works the order; the other three attach to it as the shift goes on.

**The sequence, most often but not always.** The driver checks in. Picking is triggered and a staging lane is assigned, which is why a lane can be allocated before any pallet stands in it. The pick runs into the lane. When it completes, the coordinator gives the truck a dock and calls it forward. The systems allow other sequences and the tower does not force one.

**Lane statuses.** Open, the lane is empty and can be assigned. Allocated, a pick is running into it. Ready, the pick is complete and the pallets stand waiting for a truck.

**An order can be in any of these states**: no truck assigned, truck assigned, checked in, picking, staged and waiting for a dock, at a dock, loaded, checked out. The coordinator's table is one row per order, ordered by what is most at risk rather than by number, because an order with no truck at eleven in the morning is a different problem from a truck standing at a dock.

**Why the floor is the constraint.** Cikarang has 23 docks and 15 staging lanes. On the shift the mockup shows, 18 docks stand empty while 13 of the 15 lanes are occupied and two of those hold picks that finished hours before their truck was due. That is the argument the tower makes now, and it replaces the crew argument entirely: docks are not scarce, staging floor is, and the sequencing between picking and calling trucks forward is what fills it.

**One delivery order per trip** is a simplification. In reality an order carries many lines and a truck can carry several orders. To correct at the workshop.

**Channels.** Four, carried on every trip for reference and driving nothing yet: MT, deliveries to modern trade stores around Jabodetabek, smaller vehicles with many drops and many SKUs; GT, similar but larger quantities to fewer distributors; SP, replenishment to a regional supply point, the largest vehicle available; and export, containers leaving the country.

---

## C15. Escalation, the resolution record, and the KPI rule

**OTIF sits at two levels (D67).** OTIF by channel is the level 1 KPI, the customer-facing truth. On-time and in-full are its level 2 components, reported separately, because a short pick is a warehouse or supply failure and a late arrival is a transport failure, and blending them hides which one happened. Both readings are correct and both are published; the proposal's single blended line and this file's separation are not in conflict once the levels are stated.


**Two thresholds, not one.** A warning appears on the coordinator's table at the first threshold. The tower raises an exception at the second. Both are parameters, so the workshop can move them rather than argue with a colour.

| What is watched | Warning | Exception |
|---|---|---|
| Truck past its expected check-in with nothing at the gate | PB-P9, 60 min | PB-P12, 240 min |
| A finished pick standing in a lane with no truck against it | PB-P10, 120 min | PB-P13, 240 min |
| Loading past its expected finish | PB-P11, 15 min | PB-P14, 45 min |

All six are assumptions. The expected finish is dock-in plus the median loading time for the vehicle class (PB-P1), never an observed value.

**Taking it on holds the clock, but only with a revised time (D35).** The coordinator can take a warning on themselves and the tower will hold the exception back, but only while a revised expected time stands. An acknowledgement with no new time is a statement that somebody knows, not that anything has changed, and it does not stop the clock. This was Pierre's own formulation and it is the rule the screen enforces.

**Nothing closes without a reason (D36).** An exception cannot be closed until a cause is picked from the list and a note is written in the coordinator's own words. This is the only way the tower ever accumulates a reason it can count, and it is why the tower is worth using in a single-company operation where the discussion thread will see little use.

**The cause list.** Five families, each with exactly one owner: Planning (control tower), Warehouse (warehouse operations), Transporter, Ship-to (customer), External (nobody). Twenty causes underneath, picked in two steps. The shape follows the practice described in B12; the list itself is CEL's draft and is to be replaced by YCH's own.

---

## C16. The programme board model

The plan is now discussed on a board rather than on a Gantt in a deck, so its own vocabulary is part of the engagement. Since 23 August evening the plan and the mockup are **two files** (D54): the mockup, YCH_TCT_vN.html, carries the tower's seven screens; the plan, YCH_TCT_PLAN_vN.html, carries the board, the timeline, the data flow and the value views. Separate storage, so neither can overwrite the other. Current versions: mockup v0.94, plan v2. The two still share one code base; dead code has not been stripped.

- **The hierarchy and its vocabulary (D53)**: Area (Control Tower or Execution), then **module** (CT1 to CT6) or **system** (E1 to E6), then **sub-module** (Control Tower only, the six boxes of the stack slide), then **feature** on both sides. The client's numbered blocks 1.1 to 7.2 are called features, their preference. The grouping into systems E1 to E6 is CEL-proposed and unvalidated. The word tool is retired.
- **Modules and systems**: twelve, coded E1 to E6 and CT1 to CT6 (D40, superseding D23's tower list). A module never spans two areas.
- **Features**: fifty-nine. Labels after D52: **Release 1 forty-three, Release 2 nine, Not committed six, Later one** (verified against plan v2, 23 August evening). The board and timeline open on Release 1; the release cards and a switch drive the filter. The nineteen YCH requirement blocks plus the tower's own; only the nineteen are client-confirmed, the rest are CEL-proposed pending review (C2).
- **Two relations, deliberately separate.** Depends on is project order and drives the timeline. Feeds is a data relation and drives the data flow view.
- **Companies and headcount per module** (D34), which produce a weekly headcount per company under the timeline. **Execution carries no headcount at all** (D56): its features belong to MileApp and its columns and steppers do not render.
- **Notes** (D55): a free text box on areas, modules, systems, sub-modules and features, saved with the board and carried in the exports.
- **Presentation conventions**: a module draws as a thin capped summary rail, a feature as a full rounded bar, colour meaning builder only; execution weeks are labelled on the chart as CEL assumptions.
- **Upgrade rule**: a stored board from an older structure is discarded outright when a new file version loads, so **export the board before opening a new version** if local edits matter. The merge that silently resurrected deleted content in v0.85 era boards is fixed.
- **Release labels**: nothing labelled Release 1 may finish after the gate. Four features breached that rule in the version before this work and were either resequenced or relabelled.

---

## C17. Decisions taken, 21 and 23 August 2026

Taken across the Friday 21 August workshop (two sessions) and the working session of Sunday 23 August, and applied to mockup v0.86.

**D38. The tower's public structure is three pillars.** End to End Visibility, Exception Handling, Continuous Improvement, with six sub-boxes as drawn on the Release 1 stack slide. **Staging area monitoring is a highlight inside End to End Visibility, not a separate module, and the operational performance dashboard sits inside End to End Visibility too.** Traded away: the separate Outbound Staging and Dock Monitoring tool created on 21 August, folded back in.

**D39. The dashboard says how it is going; the analytics say why.** Block 7.1 is the operational performance dashboard, the cockpit sense of right now and recently, and it sits in End to End Visibility. Reports and advanced analytics, the dive into the data, sit in Continuous Improvement. One word, one job.

**D40. The tower tool set and its codes, superseding D23's tower list.** Six Control Tower tools: CT1 End to End Visibility (fourteen features, including the staging area monitoring screen, the dock views and block 7.1), CT2 Exception Handling, CT3 Continuous Improvement, CT4 AI Integration, CT5 Pipeline Engineering, CT6 Guarded Execution (Release 2). The Execute tools E1 to E6 are unchanged. Cost Engineering, KPI Engineering and Performance Report no longer exist as tools: cost is deleted (D41), KPI folded into CT1 End to End Visibility, the performance report content moved into CT3 Continuous Improvement.

**D41. Cost is out of the tower entirely.** No cost tool, no cost model feature, no amounts on the option cards, no exposure tiles, no rate card references anywhere on screen. The options stay factual and comparable without money; the prefilled options feature is renamed accordingly. Traded away: the indicative cost layer built into the mockup through v0.85, and the cost sections of the exception panels.

**D42. Continuous Improvement has features.** In CT3 Continuous Improvement, all Release 1: the moved performance report content (clean and unclean deliveries, performance with drill-down, the transporter scorecard by lane), **ask the tower in plain language** (this is what Lana does today), **recurring cause analysis**, and **rule and threshold proposals** (the tower proposes, a person accepts or rejects, nothing changes on its own). The **resolution record** is Release 1 in CT2 Exception Handling: no exception closes without a cause and a note, and the reasons accumulate.

**D43. The recommendation split.** The old guardrails and audit trail feature splits in two. **Recommendation record**, Release 1, in CT4 AI Integration: every recommendation the tower makes anywhere, the situation, what the person chose, what happened after; one record serving all three pillars and the training material for the improvement features. **Guardrails on autonomous action**, Release 2, stays in CT6 Guarded Execution. The recommendation engines themselves stay inside their pillars. CT4 AI Integration also carries **the Lana connection**, Release 1: the wire between the tower and Lana, so nothing is rebuilt from scratch for the MVP.

**D44. The milestone sequence (Proposed Milestone Sequence slide).** Thirteen milestones across five stages, planning, at origin, in transit, at destination, return: order received (SO or STO), route planned (DO), truck confirmed, pick completed (staging), truck queue in (Vietnam only), truck checked in, truck docked in, truck docked out, ex-warehouse, in transit, arrived at ship-to, POD completed, return order received. Two spanning states run underneath: SO or STO created through reconciled, and the delivery order with route and load validated. **The customer sees roughly six of the thirteen; YCH sees the full set**: internal means YCH-visible, not customer-visible. Truck queue in existing in Vietnam only is the first concrete instance of per-country configuration (D48). Milestones track at **order level, not truck level**, since one truck carries several orders at different stages.

**D45. MileApp is the transactional single source of truth for phase 1.** The tower accumulates cross-system data and becomes the operational reference over time; it archives everything from day one; latest data is truth for the MVP, versioning deferred. Stated in full in C6.

**D46. The SAP data model covers three scenarios**, configurable per country and customer: one sales order to one delivery order to one transport order; the STO cross-dock case creating two delivery orders; and consolidation, several sales orders or delivery orders into one transport order.

**D47. Returns and traceability.** One or two optional milestones for the partial rejection return case. Batch, SKU and expiry are stored in the tower for contamination and recall scenarios, even where the main screens do not surface them.

**D48. Azure, and reach as a design requirement.** Hosting on Azure. **Multi-customer and multi-country is a design requirement, not a rollout promise**: nothing is said to any audience about which country is next.

**D49. Y3 does not build the gate, staging and dock blocks in Release 1.** Blocks 3.1 to 3.3 and 4.1 to 4.3 carry MileApp as builder, unconfirmed, drawn dashed on the stack slide. Consequence recorded in C3 and C4: the CEL design offer on those blocks lapses.

**D50. One staging screen, with its dependency written down.** The staging area monitoring screen (lanes, what stands in each, picking against it) is one feature, in CT1 End to End Visibility, Release 1, **existing only if the gate, staging and dock module goes live**. If that module slips, this screen slips with it, and that is recorded on the feature rather than discovered in November.

**D51. The exception seed list (Exceptions Across the Milestone Sequence slide).** Seventeen illustrative exceptions placed against the journey stages: three in planning, four at origin, four in transit, five at destination, one on returns. Carried as the working exception list for the December scope discussion, marked illustrative as the slide itself says.

---

## C18. Decisions taken, 23 August 2026, evening session

**D52. The Not committed label.** A fifth release label, Not committed, violet, for work the client has not committed to for Release 1: on the plan, drawn, and outside delivered scope. Blocks 3.1 to 3.3 and 4.1 to 4.3 carry it, extending D49. Consequence: Release 1 is forty-three features, not forty-nine, which is the truer number for a plan CEL answers for.

**D53. The hierarchy and the vocabulary.** Area, then module (Control Tower, CT1 to CT6) or system (Execution, E1 to E6), then sub-module (Control Tower only), then feature on both sides. The six sub-modules are the stack slide's boxes: Live status and Operational performance dashboard under End to End Visibility; User-based exception list and Recommendation and resolution engine under Exception Handling; Reports and advanced analytics and Recommended initiatives and actions under Continuous Improvement. Block 7.1 keeps its client name, operational performance dashboard, one feature, deliberately not split: which counters it shows is specification, not plan. The systems grouping is CEL-proposed and unvalidated; the client's 1.1 to 7.2 are features, their word.

**D54. Two files.** The mockup (YCH_TCT_vN.html, the tower's screens) and the plan (YCH_TCT_PLAN_vN.html, board, timeline, data flow, value) are separate deliverables with separate storage. The mockup stays a self-contained demo artefact; the plan may grow project management behaviour without risking it.

**D55. Notes on everything.** A free text note on areas, modules, systems, sub-modules and features, kept with the board and in the exports: where the reason for a decision lives until it earns a place in this file.

**D56. Execution is somebody else's work.** No CEL or Y3 headcount anywhere in Execution, no crew columns, no steppers, no value and effort. Its features matter for what they emit into the tower. Every execution date on the plan is a CEL assumption, stated on the chart itself: no schedule has been given by YCH or MileApp.

**D57. The team, two pods, end to end.** Pod A, one senior and two juniors: CT2 Exception Handling and CT3 Continuous Improvement, one chain from exception to resolution record to improvement. Pod B, one senior and two juniors: CT1 End to End Visibility and the data seam with Data and Integration. Pierre: CT4 AI Integration and arbitration; CT5 Pipeline Engineering is mostly the other stream's, fed definitions by Pod B; CT6 Guarded Execution is Release 2 and parked, Pod A inherits it. A pod owns its modules through every phase: specs, criteria, workshops, test scenarios, UAT sessions, training material. Two transversal chores: a Pod B junior keeps the UAT calendar, a Pod A junior chases master data. Nobody on the team writes code, and the framing is stated positively: the scarce skill is knowing what correct looks like.

**D58. The artefact set and its RASCI.** Produced by the stream: functional specs (the mockup plus written behaviour), acceptance criteria per feature (the testable layer of the functional spec), reference data and definitions, the data contract (accountable jointly with Thibaud), test scenarios and UAT scripts, UAT sign-off orchestration (YCH signs), and training material. Received: technical specs and integration documentation, master data and MileApp flow field definitions, and the sprint increments, accepted or rejected against criteria written in advance. Acceptance criteria are drafted by the pods and corrected in workshops with YCH operations and Y3, one module at a time, roughly four in Blueprint. Recorded on the two slides of C7.

**D59. The training chain.** CEL trains Y3; Y3 trains YCH, who run the operation. The December training artefact is train-the-trainer material with Y3 as the audience. Whether CEL touches FFI at all is an open question (C9).

**D60. Two kinds of specification.** Functional, what the system does seen from the user: the Product and Platform stream's, and largely existing as the mockup. Technical, how it is built, architecture, data model, APIs: Thibaud, Youssef and the developers'. We read technical specs and never write them. QA splits the same way: developers test that the code works, the stream defines and orchestrates the test that the product is right, YCH signs.

**D61. No project management software gets built.** Azure DevOps is the agreed environment (workshop action item; YCH owns the organisation, names a DevOps owner, CEL takes Basic seats). Until it exists, the plan lives as the plan file with JSON export and import as the official route, versioned beside this file. The hierarchy maps onto Azure DevOps directly: area path, epic, feature, user story. Structure changes still require migration rather than merge until the shape settles, expected at the end of Blueprint.

**D62. Ferry against ship, and the sea lanes.** The distinction is not distance but whether the load changes vehicle: at a seaport it is craned off and a different truck collects it; at a ferry ramp the same truck rides across, Merak, Gilimanuk and Lembar among them. The map's port tooltips carry the two wordings. The drawn sea lanes follow the pilotage channels: Karimata strait east of Belitung for the Java Sea to Singapore run, the middle of the Malacca strait, Belawan entered from seaward down the port channel, the Singapore strait threaded between Singapore and Batam, and every eastbound sailing leaving Jakarta bay north of the Muara Gembong headland. Every changed leg is sampled against modelled land and crosses none. The plant and the MDC at Cikarang are one place, the MDC being the in-plant warehouse; the plant appears on the schematic flow view only.

---

## C19. Reconciliation with proposal deck v3 rev4, 24 August 2026

Julien issued proposal v3 rev4 (sharable version, slides 13 and 14 removed). It was read against version 10 of this file. Eight conflicts, eleven internal checks raised by the reading, and ten additions the deck carries that this file did not. Pierre's decisions below; the eight conflicts and three alignments are also on the conflict resolution slide (C7).

### Conflicts resolved

**D63. Blueprint sign-off is 18 September.** The deck commits it as the second payment gate and describes it as weeks 1 to 3; 18 September is in fact week 4 of the engagement. The date stands as written; the week label is loose and is not worth correcting in front of the client.

**D64. Release 1 is 11 December.** Stated on The Offer on One Page. The timeline chart draws the Release 1 line at the 14 December column; the chart is wrong and is corrected, not the date.

**D65. The tower sees and decides.** Kept, against this file's earlier wording of reads and recommends. It is the language used since the first workshop and it is Lewis's own. It means decision support: the tower does not act by itself. It holds only because the same slide states read-only tower, humans act, so the two lines travel together wherever either is reused.

**D66. Thirteen milestones, not nine.** The risk table's "3 of 9 operational milestones" is a typo carried from the MileApp API analysis (B14), which predates the agreed sequence. Thirteen stands.

**D67. OTIF at two levels.** Recorded in C15.

**D68. The gate, staging and dock builder stays TBD, decision by week 3.** Client-facing wording unchanged. Internally the same six blocks carry the Not committed label (D52) and MileApp as unconfirmed builder (D49); the two vocabularies describe the same thing and neither is exposed to the other audience.

**D69. The milestone list comes from the Exceptions Across the Milestone Sequence slide**, not from Annex B of the proposal, which lists transporter job accepted and truck and driver assigned and predates Friday's agreement. Annex B is corrected to match.

**D70. The order at origin is corrected.** Truck confirmed, then truck queue in (Vietnam only), then truck checked in, then pick completed (staging), then truck docked in, truck docked out, ex-warehouse. Picking starts once the truck is on site, which is how Cikarang runs today. This supersedes the ordering in D44.

### Alignments

**D71. Data Pipeline** is the name of the transversal band, replacing Pipeline Engineering, on the slide and on the plan.

**D72. The timeline lanes are corrected**: the KPI engineering lane is removed, since block 7.1 folded into End to End Visibility (D53), and the CI Recommendation lane is renamed Continuous Improvement.

**D73. One exception catalogue, on the journey-stage axis.** The deck's seventeen exceptions are grouped by system, this file's seventeen by journey stage. The journey-stage axis wins, because the tower's screens follow the journey and the client has already seen that cut. Merged result: **twenty-two exceptions for Release 1** across the five stages, being this file's sixteen non-predictive, the deck's five that this file lacked (zone or master data no longer exists; cross-dock order missing the SO, DO and job linkage; truck fill rate under 85 per cent or over 100 per cent; no transporter accepts the trip; staging or dock overbooked), and truck late against ETA kept alongside the predicted version. Where the deck merges and this file splits, the split is kept: GPS lost, off-route and unnecessarily long stop stay three separate exceptions, because each needs its own playbook rule and owner. One line is deliberately not split: **wrong truck type or different truck shows up** stays a single exception. The predictive exceptions (predicted late arrival, milestone anomaly detection, dock congestion forecast) are held separately for Release 2 and are not part of the twenty-two.

### Adopted from the deck

**D74. Ten additions, taken into this file as they stand:**

1. **The feed ladder.** Every milestone declares three rungs: API or webhook as target, file-drop ETL as standard fallback, manual entry as floor. The tower ships complete whatever MileApp's pace; as an API lands the feed climbs a rung, the screens do not change, the data quality does. This is now the answer to the MileApp readiness risk, and it supersedes the softer disclaimer language previously planned for the proposal.
2. **The Committed Set.** What is signed for on 11 December, acceptance at demonstration level, each line shown working. Everything else scoped stays in the build plan, best effort in Release 1 or scheduled for Release 2, never a condition of the gate.
3. **Fencing, extending D50.** The staging screen, the dock timeline and the gate queue exist only if the gate, staging and dock module lands, and they are excluded from acceptance. Milestones 6 and 8 of the sequence are fenced with them.
4. **The seven KPIs**, agreed in session with operations and Lilian: throughput; order lead time; truck turnaround time; OTIF by channel; POD pending or missing; trucks allocated against committed; trips with ATA later than ETA. Definitions frozen in the Blueprint, each with its formula, source feed and ladder rung. This is the content of block 7.1, the operational performance dashboard, which until now had none.
5. **Signature by Friday 28 August** locks the price and the 11 December gate; after it the gate moves day for day.
6. **Three value drivers with formulas**: POD to cash, turnaround to capacity, OTIF and exceptions to penalties. The illustrations are assumed values, labelled as such, and must not be quoted as YCH figures until the operations baseline exists.
7. **The named pod**: Vu on UI and front end, Vinh on senior build and daily review, with Minh and Dat elastic. Dung and Duy are named as the senior data and business analysts on the core team.
8. **The IP position, refined.** YCH owns the tower: code, data and documentation. CEL's methodology stays CEL's. The AI layer stays SIMCEL's, served under subscription, pointing at YCH's own endpoint the day YCH runs its own models.
9. **Release 2 in 2027**, gated on Release 1 evidence, at YCH's decision. This file's Release 2 features starting in week 20 are consistent with that.
10. **The five Blueprint deliverables**: solution architecture note; data-source map and quality baseline; operations baseline of the seven KPIs as-is; staging module decision pack; exception playbook v1. These are what 18 September signs off.

**D75. The commercial terms are not taken into this file.** Payment terms, change control, cancellation notice, DPA and contract form live in the proposal and in Julien's hands. This file records only that they exist.

### Not adopted, and why

The deck's grouping of exceptions by system (D73), Annex B's milestone list (D69), and the nine-milestone count (D66). The word Pipeline Engineering is retired in favour of Data Pipeline (D71).

---

## C20. The AI in Release 1, and the decisions of 25 August 2026

**D76. The three AI use cases are gate-committed.** The proposal commits all three to be demonstrated on 11 December, which makes them the only Release 1 features that cannot quietly slip. They map onto this file's features as follows.

| Use case in the deck | Feature here | What it means |
|---|---|---|
| Exception arrives summarised, with prefilled resolution options | D4 prefilled options, plus AI summarisation on arrival | D4 gains an AI layer it did not previously have (D77) |
| Ask the tower in plain language | S12 ask the tower | Now gate-committed, not merely Release 1 |
| Recurring causes surfaced and rules proposed | D16 recurring cause analysis, fed by D15 resolution record and S18 recommendation record, connected through S19 Lana | The whole chain is critical path, S19 included |

**D77. Where prefilled options come from: the playbook produces them, the AI adds at most one.**

- D2, the playbook rules, generates the options as designed: deterministic, auditable, identical for identical situations. If the playbook holds three options for that exception type, those three appear.
- The AI may add **one more, its single best**, and only when it has one. Not a ranked list, not a rewrite of the playbook's options. Where the playbook offers three, the coordinator sees four.
- The AI's proposal is drawn from patterns in operational data and in the coordinators' own resolution notes, which is the same material CT3 Continuous Improvement already reads.

*Worked example.* Trip TR-4127 to Surabaya is late against its ETA. The playbook offers hold the dock slot, re-sequence the following load, notify the ship-to. The AI has seen eleven similar Cikarang afternoon delays where the coordinator's note recorded a recovery by swapping to the 16:00 dock rather than holding, so it adds a fourth option, swap to the 16:00 slot, marked as AI.

**D78. Two speeds, one loop.** The slow route: the AI surfaces a pattern in Continuous Improvement as a proposed playbook change; a human approves it; it becomes a playbook rule and is thereafter deterministic, and the AI no longer needs to propose it. The fast route: with nothing yet approved, the AI still proposes its best option live on the exception, so the value is visible from day one instead of after months of accumulation. Both routes run at once and the design depends on neither being switched off.

**D79. The supervisor approves playbook changes.** A coordinator approving rules they then follow is self-marking, so approval sits with the supervisor role already defined on the escalation ladder. The workflow itself, whether approval is per rule or batched, and whether YCH wants a periodic review on top, is confirmed with YCH in workshop W4, Continuous Improvement (C9).

**D80. Every option displays its origin.** On screen, each option states whether it came from a playbook rule or from the AI. Two reasons, both binding: the December demonstration has to show the AI's contribution rather than assert it, and a disputed decision months later has to be traceable to what produced the option. This extends the existing rule that observed and computed values are always distinguished.

**D81. The discovery canvases belong to the workshops, not to analyst preparation.** The empathy map and the order journey strip were removed from the analyst starter pack: they are one-off discovery tools, they are best filled by the people whose day it actually is, and they produce corrections rather than artefacts. They run once, with YCH operations in the room, at the first criteria workshop. The Continuous Improvement pod owns bringing them.

**D82. The wait week is spent pre-drafting Blueprint deliverables.** Internal work is unlimited; client-touching work waits for the signature. The analyst exercise, the exception playbook register, the KPI definition sheets, the data-source map skeleton and the operations baseline template are all built before signature, so the three Blueprint weeks are spent correcting drafts with YCH rather than writing from blank pages. Recorded on the launch pack slides (C7).

**D83. The milestone sequence is under revision.** Pierre with Dung and Duy are proposing an updated milestone list and sequence. Until it lands, D44 as corrected by D70 remains in force and is not edited here. When the revision arrives it supersedes both, and the Milestones tab of the data contract moves in the same pass: the two must never disagree, since the contract is what the Data and Integration stream builds from.

---

## C21. The milestone sequence, confirmed 25 August 2026

**D84. The sequence is settled, and it supersedes D44 and D70.** Confirmed with YCH on the Proposed Milestone Sequence slide. Thirteen milestones in five stages:

| # | Milestone | Stage | Customer sees it |
|---|---|---|---|
| 1 | Order received (SO or STO) | Planning | Yes |
| 2 | Route planned (DO) | Planning | No |
| 3 | Truck confirmed, with the truck number | Planning | No |
| 4 | Truck queue in | At origin | No |
| 5 | Truck checked in | At origin | No |
| 6 | Pick completed, staging area | At origin | Yes |
| 7 | Truck docked in | At origin | No |
| 8 | Truck docked out | At origin | No |
| 9 | Ex-warehouse | At origin | Yes |
| 10 | In transit | In transit | Yes |
| 11 | Arrived at ship-to | At destination | Yes |
| 12 | POD completed | At destination | Yes |
| 13 | Return order received | Return | No |

Milestones 1, 2, 3 and 13 are the additions to the earlier list. Milestone 4, truck queue in, applies in Vietnam only and is not expected at the Indonesian sites. Milestones 6 and 8 stay fenced with the gate, staging and dock module and are outside the December acceptance.

**D85. POD completed means captured, not verified.** The proof exists at the ship-to and has landed in the system. Verification, that it is legible, complete and matches the delivery so billing can run, is a check inside the tower and not a milestone. Consequence: the POD KPI counts what is captured and not yet verified, and the definition of a clean delivery rests on verification rather than on this milestone.

**D86. Return order received is Release 2.** It is drawn on the sequence so the chain is complete, and it sits outside the Release 1 committed set, consistent with requirement block 6.3 carrying the Release 2 label.

**D87. Three milestones were considered and deliberately left out.** Staging area assigned, loading started and loading completed. Staging assigned and dock assigned are floor states on the coordinator table rather than milestones; pick completed is the staging milestone on the chain. Loading started and loading completed are covered by docked in to docked out, which is the span the site works to.

**D88. The coordinator sets the waiting order by hand.** Trucks that have checked in and have no staging lane yet carry a letter, A, B, C, set by the coordinator in the Orders on the floor table. Letters rather than numbers, because every other figure on that row is already a number. Giving a letter that is taken **inserts and shifts**: the holder and everyone below move down one place, so there are never duplicates or gaps. When a lane is assigned the truck leaves the waiting list, its letter is released, the rest close up, and the letter it held is kept on the order so Continuous improvement can later ask whether the sequence the floor set was the sequence the floor followed. A truck that already holds a lane cannot be re-sequenced.

The four reason tags built in v0.99, priority customer and the rest, were removed: they answered a different question and were not asked for.

---

---

# Part B. Knowledge Base

Compiled from working sessions and web research (SAP documentation, practitioner literature, logistics integration sources). Plain English throughout; system-specific vocabulary is avoided or defined at first use.

## B1. Where the plan stops

In the SCOR reference model, Deliver covers order management, warehousing and transportation, through to invoicing. The boundary with Plan: planning produces the intent, Deliver schedules and manages the execution of individual movements against that intent.

Large FMCG planning does not stop at national monthly volumes. Distribution requirements planning (DRP) computes, for each SKU and each stocking location, when and how much to move, from time-phased forecasts, safety stocks and lead times. The output is a time-phased replenishment plan per SKU and per node: a quantity contract over a period. What planning does not produce is the firm, executable order: that conversion, against the physical reality of the day, is the first act of Deliver.

A single calculation underlies it: for each location and SKU, demand to cover, minus stock on hand, minus stock in transit, equals the net requirement, time-phased over lead times. Stock positions are inputs to the plan calculation, not a separate check afterwards. What execution adds is not a different calculation but a different tempo: the plan runs in weekly batch; execution corrects against actuals continuously.

## B2. The weekly cycle: horizon, release, tolerance, alerts

The rolling horizon. In week 1 the Supply Planner plans weeks 2 to 5. In week 2 he re-plans weeks 3 to 6. Changes to the outer weeks are invisible to execution: nothing has been handed over yet, and the next run silently overwrites the old proposals. This covers most of the horizon.

The release window. Orders are handed to execution some days before departure, because execution needs lead time: picking scheduled, ferry slot booked before cut-off, truck ordered. This creates a short window of orders that are released but not yet departed. Inside that window reality can still move, but the planning calculation may no longer touch the orders. This window is the only place where alerts exist.

Tolerance and automatic release. Within a defined tolerance (for example, within 10 percent on quantity and 2 days on timing), proposals release to execution unchanged and unreviewed. The tolerance routes review, not change: the system never modifies quantities on its own. Outside tolerance, the line lands in the Deployment Planner's queue for a human decision.

Alerts. When reality moves against an already released order, the system raises one of three suggestions to the Deployment Planner: move the order earlier, move it later, or cancel it. Every actual change is a human act at DP level. The Supply Planner is not in the daily loop; he owns the parameters the automation runs on (safety stocks, lot sizes and rounding, planned lead times, tolerance settings), works the structural exceptions (recurring excess or shortage that signals a wrong parameter, not a wrong order), arbitrates allocation when supply is short, and feeds the monthly planning cycle.

Watchlists. Promotion item-locations carry the highest forecast error, so both roles watch them, at different horizons: the Supply Planner before the promo (is the uplift forecast sensible, is safety stock temporarily raised), the Deployment Planner during it (daily depletion against plan, ready to amend released orders). Role split is org-dependent; many companies merge the two roles.

## B3. Why released orders deviate from the plan: the common reasons

Synthesis of practice, not a measured ranking. Reasons 1 and 2 dominate and are episodic; reason 5 recurs on essentially every multi-container lane; the rest are occasional.

1. Demand moved since the run: promo over- or under-performance, a large unexpected order, a distributor pull-forward.
2. Supply moved since the run: production shortfall, delayed inbound to the NDC, stock found blocked (damage, quality, expiry).
3. Management overrides on allocation: the standard priority rule is in the system; the exception to it is a person (protect a launch region, serve a key account).
4. Transport reality known at release: ferry schedule changed, vessel fully booked, trucks short in peak; quantity or timing adjusted before releasing an order that cannot physically execute.
5. Load economics, proposed by the 3PL: fill a container by pulling volume forward, or trim to avoid a costly part-load; validated by the DP and reflected in the released order.
6. Destination constraints: the receiving DC cannot take the volume that week (storage full, receiving capacity booked, stock count planned).
7. Master data corrections caught in flight: a wrong lead time or stale minimum quantity corrected on the individual order while the parameter fix waits for the Supply Planner.

In a mature planning setup, allocation arbitration, rounding to pallet multiples, and checking against stock genuinely free to ship are already inside the published plan. They are deviation reasons only where the planning system is weak. Since the client's planning is described as sound, the proposal should not build its story on them.

## B4. The 3PL boundary and the validation loop

The 3PL's scope is contractual and narrow: it executes warehousing, load building, transport, returns. It decides the how (which container, which SKU mix fills the cube, which ferry, which truck), not the how much. The firm order comes from the manufacturer; the 3PL receives it. Any deviation touching replenishment quantity or timing requires validation on the manufacturer side; the contract defines which changes each party may make at its own discretion.

The everyday trigger of the validation loop is the container-fill misfit. Example: the week's orders for one destination come to 2.5 forty-foot containers. Every option touches cost or timing: hold the remainder for the next sailing (timing), ship it as less-than-container-load (roughly, below 13 to 15 cubic meters LCL is cheaper, above it a full container wins; LCL also adds 3 to 7 days through consolidation), run a third part-filled container (cost), or adjust quantities by pulling forward or trimming (a deployment decision). Industry practice: the 3PL compares and proposes, the manufacturer decides. Today that round-trip runs on email; the tower's job is to make it a traced, real-time workflow where the proposal is visible, costed, validated by the right owner, and reconciled with the plan, with the reason attached to the amended order.

## B5. What the ERP records, and what it lacks

The transactional record is sound. When goods leave the NDC, a goods issue posts and the quantity moves to stock in transit; when the destination DC receives, a goods receipt posts and the stock becomes available there. Open orders, in-transit quantities and receipts are all visible to the next planning run. Shipped and received quantities and dates are therefore eventually known, accurately.

Four things are missing, and they define the tower's added layer:

- The arrival date on an in-transit line is a plan, not a fact: the system schedules the expected receipt from a configured transit time, and a cancelled ferry does not update it.
- The reason never posts: the ERP records that an order was amended, not why, by whom it was proposed, or which options were costed and rejected; that trail lives in email.
- The pattern never corrects the parameters: actual lane lead times and systematic load reshaping are derivable from the transaction history, but nobody computes them and feeds them back into the planning master data.
- Latency and granularity: 3PL confirmations typically arrive through scheduled batch interfaces, and the physical detail (which container, which vessel, current position) stays in the 3PL's operational systems.

The one-line version: planning eventually sees what moved; it does not see why it moved, when it will really arrive, or what the pattern implies for its parameters.

## B6. Integration between the manufacturer and the 3PL

Three connection methods, by decreasing maturity: API (live system-to-system exchange, immediate), EDI (structured electronic documents exchanged in scheduled batches; the long-established standard between enterprises), and MFT (managed file transfer: scheduled, secured file drops with delivery confirmation and retry; the floor for partners that can manage nothing better). A real archipelago network ingests all three.

Why batch persists even where real-time exists: the translation tables and contracts behind each document connection were paid for long ago and work daily (switching cost is concrete, the benefit diffuse); compliance teams prefer discrete, timestamped, archivable documents they can open during a dispute or recall; high-volume shippers trust scheduled files at peak, where failure is visible and recoverable as one file rather than thousands of silent individual misses; and migrating dozens of partners, each with its own format quirks and IT backlog, is a project nobody funds as a whole.

The resulting industry split is fit for purpose, not a compromise. Documents that change a state (an order commits money, a confirmation transfers custody, an invoice claims payment) need completeness, ordering and archivability: batch documents with acknowledgments deliver that. Status data (position, dock event, revised arrival) is perishable: its value is in being current, and losing one update costs nothing because the next supersedes it. Perishable data needs speed and tolerates loss; state-changing data needs certainty and tolerates delay. This is also why the live layer usually bypasses the ERP: the ERP is the book of record, and position pings do not belong in the book of record.

Working inference for this client (to verify in discovery): batch document exchange between the ERP and YCH's systems for orders and confirmations, partial real-time capability where YCH's platforms support it, and a long tail of island carriers connected down to scheduled file drops.

## B7. Glossary

| Term | Plain definition |
|---|---|
| Lane | One origin-destination pair, for example Cikarang NDC to Makassar DC. Lead time on a lane: elapsed time from goods leaving the origin to goods received and usable at the destination. |
| DRP | Distribution requirements planning: the weekly calculation that turns forecasts, stock positions, safety stocks and lead times into a time-phased replenishment plan per SKU and per location. |
| Released order | A plan proposal confirmed and handed to execution. The planning calculation may no longer change it automatically; changes go through the Deployment Planner. |
| Deployment Planner (DP) | The role that converts plan proposals into released orders, works the exception queue, and validates quantity or timing changes proposed by the 3PL. |
| Tolerance window | The policy defining how close a proposal must be to the previous plan to release automatically without human review. It routes review, not change. |
| Goods issue / goods receipt | The warehouse postings recording that goods left the origin (issue) and arrived at the destination (receipt). Between the two, the quantity shows as stock in transit. |
| Allocation (fair share) | The rule distributing scarce stock across competing locations when supply is short. In a mature setup it is applied inside the plan; the exception to the rule is a management decision. |
| POD event | Proof of delivery: the record confirming a shipment was delivered (scan, photo, signature, status message). Closes the visibility loop and triggers invoicing. |
| MFT | Managed file transfer: automated, secured, monitored exchange of data files on a schedule, with encryption, delivery confirmation and retry. The low-maturity end of connectivity. |
| EDI | Electronic data interchange: structured business documents (orders, shipping confirmations, invoices) exchanged between companies in scheduled batches under a long-established standard. |
| FCL / LCL | Full container load versus less than container load. LCL shares a container with other shippers, costs more per unit above roughly 13 to 15 cubic meters, and adds 3 to 7 days through consolidation. |
| Expedite | A shipment rushed faster than the normal process at premium cost (air freight, dedicated truck, priority handling) to recover a service or availability problem: money spent to buy back time. |
| Service recovery | Actions taken to protect the customer-facing service level when reality threatens it, even at the cost of deviating from the plan. Rational; the failure is when the deviation stays invisible to planning. |
| Plan adherence | The degree to which execution follows the plan in volume, mix and timing. Hitting total volume while missing the weekly mix still drives stockouts and overstock. |
| Stock free to ship | Stock physically on hand minus what is already reserved or promised elsewhere; the only stock the plan may commit. |
| APS | Advanced planning system: the software hosting forecasting and the weekly replenishment calculation (common instances: SAP IBP, Kinaxis, Blue Yonder, o9). Some companies run this inside the ERP's planning module instead; a discovery question. |

## B8. Control tower interface patterns (web research, July 2026)

What the market converges on, for the mockup to meet expectations: a personalized dashboard of key metrics and events with exception management and smart alerts (IBM); alerts, diagnostics and prescriptive recommendations in one hub, with the impact of each exception quantified so criticality is assignable (Solvoyo); information prioritized by financial impact, showing the value at risk rather than the bare delay, with a small set of pre-calculated resolution options per problem (FanRuan gallery guidance); a map of at-risk deliveries with predictive arrival per shipment, milestone tracking, and lane metrics (Shippeo); and the loop of surfacing the exceptions that most affect cost and service, recommending, executing with human approval, and feeding outcomes back (Portcast). A common failure mode to avoid: a tower that only pulls data into a dashboard improves visibility but leaves the follow-up manual (Caliber guide); the mockup must therefore show workflow states, owners and deadlines, not only charts.

What our tower shows that the commercial platforms do not: the three-level reconciliation of plan, released orders and shipments with conservation of totals and a reason per transition, and the validation loop as a traced workflow. These two screens carry the proposal's differentiation; the rest is expected furniture done in CEL style.

## B9. The warehouse boundary: what the tower watches, and never touches

The principle mirrors the 3PL boundary of B4, applied to the four walls. YCH operates the warehouse: its WMS decides picking sequence, labor, slotting and dock doors, and that scope is contractual. The tower sits at the warehouse boundary and watches the milestones that determine whether a released order becomes the planned shipment. It mirrors, anticipates, proposes, and in Phase 3 confirms approved adjustments back to YCH's systems (an amended appointment, a resequenced release). It never operates the WMS. If a design element implies the tower commands the warehouse, the element is wrong.

Four watched objects define the module:

- Order readiness at the origin: the status of each released order against its sailing cut-off (inbound received, picked, packed, loaded, goods issue posted). The worked example's week 34 contains the failure mode: an inbound delay that cuts the release. Today that signal travels by call; from WMS milestones the tower detects it and costs the consequence before the cut-off passes.
- Dock-to-stock at the destination: the elapsed time from physical arrival to stock available in the system. The goods receipt posting closes the in-transit line, but the latency between arrival and availability is computed by nobody today. It is the warehouse twin of lead time drift per lane: derivable from the shared record, feeding the learning loop and, where systematic, a parameter correction proposed to the Supply Planner.
- Receiving capacity as a constraint feed: a destination DC that cannot take the week's volume (storage full, receiving slots booked, stock count planned) is a real deviation reason (B3, reason 6) that today enters the loop informally. The tower makes it a visible constraint, so a re-plan option that shifts volume into a week the DC cannot receive is priced as infeasible rather than discovered at the dock.
- Stock integrity: blocked stock events (damage, quality, expiry) and inventory discrepancies at either node, surfaced as exceptions with units at risk, because they change what is genuinely free to ship.

What the market does in this area, from web research (July 2026): control towers integrate WMS data alongside ERP, TMS and carrier feeds for cross-system visibility and exception management, complementing rather than replacing the execution systems. The most relevant capability sits at the handoff points, not inside the four walls: warehouse, yard, dock and appointment scheduling coordinated with inbound arrival data so loads are handled within their windows, and the WMS-TMS seam (pick complete triggering dispatch, confirmed weights feeding vehicle assignment), a boundary these systems were not designed to manage in real time between shipper, 3PL and carrier. Mature 3PL operations already report order status, receiving performance, cycle counts and operational trends; the tower's role is to read those signals from the shared record, not to generate them.

The political dimension, to handle with the same care as partner performance in A8: readiness and dock-to-stock metrics score YCH's own operation directly. The wording everywhere is factual and symmetric (measured from the shared record), never scoreboard styling.

The load-bearing assumption is logged in A6: all of this presumes WMS milestone events at usable granularity and latency. Industry practice (B6) suggests batch confirmations are common; if pick and pack milestones arrive as end-of-day batches, Phase 1 readiness monitoring degrades to next-morning reporting until the feed improves, and the warehousing value story shifts from prevention to measurement. Discovery question, not a design change.

## B10. Builder landscape, Transport CT track (web research, August 2026)

MileApp (mile.app): an Indonesian no-code field-operations and last-mile platform. Publicly documented capabilities: real-time GPS tracking of field teams and fleets, live ETAs and customer notifications, route optimization, driver mobile apps, electronic proof of delivery, IoT integration (temperature, engine status, location; dashcam video), and operational dashboards. Referenced customers include Danone, Sampoerna, Tigaraksa, Orami and Sayurbox. Reading for our purposes: shipment-level detection (ETA, alerts, plan versus actual) is native MileApp territory and should never be presented as a tower differentiator; the tower's ground is the cross-system record, network-level management and the measurement of feed quality (the doctrine in C5). MileApp's public material shows an integration-friendly platform; whether its API exposes raw positions and events at the granularity the tower would need is unverified and is a Blueprint check (C9).

Y3: YCH's internal IT team. No public profile; capacity and stack to be inventoried in the Blueprint.

## B11. Shipment-level detection versus network-level management

A reusable doctrine, generalized from the 5.2 and 5.3 case (C5), and consistent with B5 and B8:

- Detection is commodity. Any competent execution platform computes an ETA and raises a threshold alert on its own shipments. Claiming detection as a tower differentiator invites the answer "our platform already does that", and the answer is correct.
- Management is the tower's ground: one record across systems, correlation with orders and commitments, ranking across the network, a named owner and a deadline per exception, and a recorded outcome. The tower is the single workspace; users do not log into the sensing platforms.
- One alerting authority. When two systems alert the same people on the same event, both get ignored (alert fatigue, B8). The execution platform notifies its operational actors; the tower alerts the decision-makers.
- Measure the sensors. The tower scores its feeds (accuracy, latency, coverage) factually and symmetrically, which both improves the data and keeps every vendor honest without a scoreboard.

The one-line version, usable with any client: the platform sees its shipments; the tower sees the operation.

## B12. Delay cause taxonomies (web research, August 2026)

Road freight has no single published cause code standard. Adjacent industries do, and they agree on the shape rather than on the codes:

- Air freight uses IATA's AHM730 delay code table, in place since the 1980s: eighty-odd two-digit codes across nine categories, extended with sub-codes in AHM731. Its purpose is not description alone; the codes attribute cause and responsibility, and they underpin station-level service agreements and penalty clauses.
- UK rail uses a delay attribution guide of lettered codes grouped by responsible party, with a formal process for disputed attribution.
- Manufacturing downtime practice recommends three to five mutually exclusive top-level categories and no more than two or three levels of nesting, on the ground that a deeper taxonomy becomes a burden to log accurately in the moment and stops being logged honestly.

The OTIF literature, when it splits root causes, returns to the same short list: planning, warehouse, carrier, customer and external. The reason given is worth repeating to YCH: without event-level timestamps and an agreed taxonomy, every function can plausibly claim it was not them.

What we take from this for C15: a small mutually exclusive top level, one owner per family, two levels deep, and a cause that attributes responsibility as well as describing the event.

## B13. Indonesian domestic port and ferry practice (web research, August 2026)

- Ten ports carry most of Indonesia's domestic container traffic, among them Tanjung Priok (Jakarta), Tanjung Perak (Surabaya), Belawan (Medan), Makassar and Bitung. Surabaya and Makassar act as the domestic transhipment centres for the east.
- Belawan sits about 12 km from Medan and is the gateway for northern Sumatra. Bitung is the gateway for North Sulawesi, from which goods are distributed onward to Manado. TPK Palaran is Samarinda's container terminal, connected to Surabaya and Jakarta.
- Java to southern Sumatra freight moves by truck across the Merak to Bakauheni roll-on roll-off ferry rather than by container ship, and truck waiting at those terminals can run to days at peak. Java to Lombok crosses twice, Ketapang to Gilimanuk and then Padangbai to Lembar.

General-industry patterns, not client measurements. Used in the mockup to route each lane over ground that exists; every transit time attached to those routes is still an assumption.

## B14. MileApp API findings (web research, 23 August 2026)

Read: the documentation index at docs.mile.app (the llms.txt index, which lists every page and OpenAPI specification) and the registration pages. Not read, because the individual pages were unreachable from the index: authentication, webhook retry policy, data retention. Everything below about what exists is verified from the index; token lifetimes, rate limits and retention are unverified and parked as questions (C9).

**Good news.** Nine public OpenAPI specifications (task, routing, flow, data, auth, tools, file, import and export, webhooks): clients can be generated, nothing reverse engineered. Webhooks cover almost exactly the tower's events: task created, assigned, finished; trip started, finished; routing finished, dispatched; so the tower can be fed rather than polling. Read endpoints exist for everything the tower reads, including task tracking, location history, routing results, flow field definitions, master data, and a task gallery holding photographed proof of delivery. Bulk and background export with logs. Personal access tokens, MFA, SSO with Azure AD, an ISO 27001 claim, and a published data retention policy page.

**Risks, worst first.** MileApp is task-shaped, not trip-shaped: its unit is a task running a configurable flow, so trips, orders and most milestones are derived, and the trip number must be written into a flow field or the journey line has holes. Only three of the nine operational milestones come from MileApp; the rest come from the gate and dock systems. Flows are no-code and built by YCH supervisors, so field names are theirs: renaming a field silently empties a milestone rather than raising an error; the defence is the flow versions endpoint, compared daily, raising an exception when the shape of the data changes. Retention is unknown and decides whether the tower builds its own history warehouse from week one, which the archive-everything doctrine (D45) now requires anyway. The field app works offline and syncs later, so events arrive late, in bursts, out of order: every timestamp distinguishes when it happened from when it was heard. The webhook receiver must answer in under a second, deduplicate, catch up after an outage, and alarm when the feed goes quiet. The API can write (create, update, assign, dispatch): the tower's credential is read-only by role, so the read-never-command doctrine is enforced by MileApp's permissions rather than by discipline.

## Sources

Web research consulted during working sessions, July 2026: SAP Help Portal and SAP community documentation (planning run mechanics, stock transfers, exception handling), SAPinsider and practitioner articles (exception management, tolerance configuration), supply chain practitioner literature (DRP and deployment practice, lead time management, plan adherence), and logistics integration sources (Cleo, NetSuite, DataDocks, DCL Logistics and others on EDI, API and 3PL integration practice). Specific quantitative claims retained: SKU-level forecast accuracy of 55 to 65 percent in volatile conditions with 5 to 20 percent improvement from demand sensing; FCL/LCL break-even around 13 to 15 cubic meters; LCL adding 3 to 7 days. These are general-industry figures, not client measurements.

Added 7 July 2026: ASCM SCOR Digital Standard documentation and secondary literature (Deliver split into Order and Fulfill; process definitions), Gartner-related control tower definitions and capability descriptions (see-understand-act-learn frame, tower as a layer above execution systems), and control tower and transport visibility interface sources for the mockup (IBM, Solvoyo, Shippeo, Portcast, Caliber, FanRuan, Locus and others): dashboard, exception queue, impact-ranked alerts, predictive arrival, and collaborative resolution patterns.

Added 17 August 2026, for the Transport CT track (Part C, B10, B11): MileApp public product documentation and customer references (real-time tracking, ETAs, route optimization, ePOD, IoT integration); telematics and fleet-platform API integration practice (positions and geofence events exposed through APIs and webhooks as the common pattern); control tower implementation practice consulted for the overall plan discussion (discovery and design as a distinct opening phase; wave-based rollout sequenced by dependency, data before analytics, process before automation, integration before write-backs; pilot-then-scale patterns). General-industry patterns, not client measurements.

Added 20 August 2026, for the Transport CT track (B12, B13): IATA AHM730 and AHM731 delay code documentation and secondary literature; UK rail delay attribution guide material; manufacturing downtime reason code practice; OTIF root cause literature (planning, warehouse, carrier, customer and external splits, and the event-level timestamp argument); Indonesian domestic container shipping and port sources (Tanjung Priok, Belawan, Makassar, Bitung, TPK Palaran) and Java to Sumatra roll-on roll-off ferry practice at Merak and Bakauheni. General-industry patterns, not client measurements.

Added 8 July 2026, for the warehousing module (B9): control tower and logistics practice sources on warehouse visibility and the warehouse boundary: WMS data integrated alongside ERP, TMS and carrier feeds for cross-system exception management; warehouse, yard, dock and appointment scheduling coordinated with inbound arrival data; the WMS-TMS integration seam; inbound control tower practice (container appointments, labor scheduling and downstream capacity managed as one process); and 3PL operational reporting (order status, receiving performance, cycle counts, trends). General-industry patterns, not client measurements.
