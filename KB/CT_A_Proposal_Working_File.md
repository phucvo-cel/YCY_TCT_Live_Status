# Part A. Proposal Working File

Track 1 working file: Supply Chain Orchestration Control Tower for one of YCH's FMCG manufacturing customers (Indonesia and the Philippines). Split from `CT_Working_File_and_Knowledge_Base_v13.md` (v13) for narrow loading; the full change log and cross-file map live in [CT_Index.md](./CT_Index.md).

## Contents

- L19: A1. The opportunity
- L23: A2. Scope decisions taken in working sessions
- L34: A3. Workstreams and phases
- L44: A4. The worked example used on the slides
- L61: A5. Slide inventory
- L92: A6. Assumptions to verify in discovery
- L105: A7. Open question for Sardar
- L109: A8. Sardar's requirements register
- L145: A9. Mockup working brief (activated 7 July)

---

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

