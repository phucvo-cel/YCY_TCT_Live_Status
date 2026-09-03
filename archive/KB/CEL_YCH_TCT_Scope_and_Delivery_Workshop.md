# [CEL] - YCH - TCT - Scope & Delivery Workshop

**Source format:** PDF  
**Total slides:** 15

**Systematic omissions:** Repeated CEL and YCH logos, the repeated `Demand Supply Alignment` footer, slide numbers, and standard classification labels were omitted. The `BACK UP` divider and all following slides were excluded as requested.

## Slide 1: YCH TRANSPORT CONTROL TOWER

Indonesia first. Built with your team, directed by CEL.

Scope & Delivery Workshop

Julien Brun – Managing Partner  
Pierre Quentin – Senior Manager  
Aug 20 & 21, 2026

An AI-driven Transport Control Tower for YCH Indonesian operations, extendable to Vietnam and the Philippines, commercializable later at your decision.

**Visual alt text:** Cover slide with CEL and YCH branding over a space-themed background. The title is centered, with presenter details at lower left and the project description at lower center.

## Slide 2: Agenda

|  | Thu 20 Aug, morning | Thu 20 Aug, afternoon | Thu 21 Aug, morning | Fri 21 Aug, afternoon |
|---|---|---|---|---|
| Stage | 1. ALIGN | 2. DEFINE | 3. COMMIT | 4. SPECIFY |
| CONTENT | **1A Understand operations**<br>Process and plan-to-bill challenges<br><br>**1B Align expectations**<br>Control Tower requirements and CEL clarifications | **Control Tower solution**<br><br>Functional boundaries, orchestration, data sources and AI role | **Release 1 collaboration**<br><br>Scope, timeline, resources, delivery structure and governance | Ownership, hosting, scaling, data, support, VAPT and HADR |
| OUTCOME | • Shared view of the current transport process<br>• Agreed CT expectations<br>• Key questions clarified | • Agreed functional scope and boundaries<br>• Confirmed data requirements and source systems<br>• Defined role of AI | • Confirmed Release 1 scope and deliverables<br>• Agreed timeline and resources<br>• Defined delivery structure and governance | • Confirmed ownership and hosting model<br>• Agreed scaling, data and support requirements<br>• Defined security, resilience and HADR needs |

**Visual alt text:** Four-column workshop agenda progressing from alignment to solution definition, commitment, and specification. Each column pairs planned content with expected outcomes.

## Slide 3: The Requirements

Transport Control Services - MVP

Legend: Y3; MileApp

### TRANSPORT CONTROL TOWER

1. **Transport Planning** - MileApp
   - **1.1 Shipment orders (Sales order/s)**
     1. Upload order SAP to TMS.
     2. Auto Interface via API.
   - **1.2 Route and Load optimization**
     1. Data Order enrichment
     2. Auto routing with FFI parameters
     3. Auto Looping automatization process
   - **1.3 Trip / Truck allocation (Bidding)**
     - Open Bid to transporter which already setup in master (based on transporter ranking), notified by email

2. **Transporter Admin** - MileApp
   - **2.1 Transporter**
     - Transporter login to system and accept or deny the Job, if deny, system will auto email to next transporter based on ranking
   - **2.2 Transporter**
     - Transporter will confirm job acceptance per required window to assign truck and input the details driver, Vehicle No, and ETA in the portal. API to SAP.
   - **2.3 Driver**
     - After confirm, Driver will receive QR code to permit entry as part of security control.

3. **Dock Management** - Y3
   - **3.1 Staging area Assignment**
     - When cargo ready, Checker Loading team will inform to driver which number of loading dock
   - **3.2 Truck Entry**
     - Driver to show QR code for Security to scan and verify details.
   - **3.3 Truck Register to RP (Dock-In)**
     - Driver to register dock-in at assigned loading dock to Route Planner team, Route Planner coordinate to Data Entry staff to release for loading cargo.

4. **Loading** - Y3
   - **4.1 Start Loading**
     - RF team verify QR code prior to loading. Driver and Checker to jointly verify load.
   - **4.2 Truck Dock-Out**
     - Checker submit BPL completed loading while outbound documents (Gate-Pass, PO and DO SAP) being prepared.
     - Driver dock-out with outbound documents.
   - **4.3 Truck Dispatched**
     - Driver needs to report at Security to scan the barcode's Driver and verify load and outbound documents in place.

5. **In-transit visibility** - MileApp
   - **5.1 GPS tracking/EPOD/Manual Update**
     - Tracking will be based on driver mobile GPS or Truck's GPS and cargo's GPS (Sea freight), if both is not available, TPT's admin will update manual in the portal for Truck position
   - **5.2 ETA / ATA (Geofence) & Exceptions**
     - Based on point to point delivery distance, system will auto compute ETA (Original ETA) and capture ATA per agreed interval refresh till arrival at ship-to location.
   - **5.3 Exception Reporting**
     - System to capture actual truck arrival via GPS tracking to update ATA vs original ETA and to provide exception reporting.

6. **POD Management** - MileApp
   - **6.1 Truck at distributor**
     - When truck arrived, driver update in the apps that truck has been arrived, when start loading and finish loading driver will update in the apps. Or manual update by admin
   - **6.2 E-POD capture or manual update**
     - System will provide ePOD for delivery signoff or digital capture of hard copy signoff. Or manual update by admn where transporter w/o GPS
   - **6.3 Returns & Exceptions**
     - SAP return orders and unclean POD physical returns - please refer to extended workflow.

7. **Dashboard & analytics** - Y3
   - **7.1 KPI dashboard**
     - Dashboard reporting on OTIF and truck utilization.
   - **7.2 Dock utilization**
     - DMS will compute dock spin based on dock in and dock out of trucks.

### Cash flow side process

- **Cash Disbursement:** Manage cash disbursement
- **Disbursement Settlement:** Actual cash spend

**Visual alt text:** A left-to-right requirements matrix under a single `TRANSPORT CONTROL TOWER` header. Seven sequential operating stages run vertically from Transport Planning to Dashboard & analytics. Each stage contains numbered modules across three columns; red number markers indicate MileApp ownership and purple markers indicate Y3 ownership. Cash Disbursement and Disbursement Settlement appear as a separate right-side process.

## Slide 4: The YCH Transport Control Tower Digital Stack - Release 1

2 layers from execution to coordination

### CONTROL TOWER

| Capability | Components |
|---|---|
| END TO END VISIBILITY | Live status; Operational Performance Dashboard |
| EXCEPTION HANDLING | User-based Exception List; Recommendation and Resolution Engine |
| CONTINUOUS IMPROVEMENT | Reports & Advanced Analytics; Recommended Initiatives & Actions |

- AI INTEGRATION
- PIPELINE ENGINEERING

Data Flows

### EXECUTION

| Module | Platform | References |
|---|---|---|
| ORDER BACKBONE | MileApp | 1.1<br>6.3 |
| ROUTE AND LOAD OPTIMIZATION | MileApp | 1.2 |
| CARRIER ENGAGEMENT | MileApp | 1.3<br>2.1-2.3 |
| GATE, STAGING & DOCK EXECUTION | MileApp | 3.1-3.3<br>4.1-4.3 |
| DELIVERY EXECUTION | MileApp | 5.1-5.3<br>6.1-6.2 |

**Visual alt text:** Two-layer architecture. Five execution modules at the bottom send data upward through Pipeline Engineering and AI Integration into three Control Tower capability groups. Bidirectional arrows connect AI Integration with each capability group.

## Slide 5: Proposed Milestone Sequence

Legend: Proposed additions; Current milestones

`PLANNING → AT ORIGIN → IN TRANSIT → AT DESTINATION → RETURN`

Job level:

`Order received (SO or STO) → Route planned (DO) → Truck confirmed (truck number) → Truck Queue in (VN only) → Truck Checked in → Pick completed (Staging area) → Truck Docked in → Truck Docked out → Ex-Warehouse → In transit → Arrived at Ship-to → POD Completed → Return order received`

- `SO/STO created` at Order received.
- `DO - route & load validated` spans Route planned through Ex-Warehouse.
- `SO/STO reconciled` at POD Completed.

### Key for MVP

- **Customer:** Order received; Pick completed; Ex-Warehouse; In transit; Arrived at Ship-to; POD Completed.
- **YCH:** Order received; Route planned; Truck confirmed; Truck Checked in; Pick completed; Truck Docked in; Truck Docked out; Ex-Warehouse; In transit; Arrived at Ship-to; POD Completed.

**Visual alt text:** Horizontal milestone timeline grouped into five journey stages. Red nodes are proposed additions and blue nodes are current milestones. Order received, Route planned, Truck confirmed, and Return order received are proposed; all other milestones are current. A two-row matrix marks which milestones are key for Customer and YCH in the MVP.

## Slide 6: Exceptions Across the Milestone Sequence

Illustrative examples of deviations that the Control Tower can surface at different journey stages.

Legend: Proposed additions; Current milestones

`PLANNING → AT ORIGIN → IN TRANSIT → AT DESTINATION → RETURN`

`Order received (SO or STO) → Route planned (DO) → Truck confirmed (truck number) → Truck Queue in (VN only) → Truck Checked in → Pick completed (Staging area) → Truck Docked in → Truck Docked out → Ex-Warehouse → In transit → Arrived at Ship-to → POD Completed → Return order received`

### PLANNING

- Order data incomplete
- Route plan not respected
- Wrong truck type at warehouse

### AT ORIGIN

- Truck arrives late at gate
- Dock waiting exceeds threshold
- Loading duration exceeds expected time
- Excessive time to check-out

### IN TRANSIT

- Late arrival predicted
- Route deviation
- GPS signal lost
- Unnecessarily long stop

### AT DESTINATION

- Abnormal queuing time at destination
- Missing / late POD
- Invalid / illegible POD
- Partial / total delivery rejection
- Damage & loss

### RETURN

- Return not raised on time

**Visual alt text:** The same milestone timeline is aligned above five exception panels, placing example deviations under the journey stage where the Control Tower would surface them.

## Slide 7: AI Starts Where the Arithmetic Stops

The tower computes the facts. AI is for the judgement calls the facts do not settle.

### 1. IN THE MOMENT

What to do about this one, now

- Ranks the options for the case in front of the coordinator, against what worked the last time the same thing happened on the same lane.
- Predicts the miss before the clock says so: a lane running long, a wave that will not fit the docks, an arrival that will slip past the receiving window.
- Writes the situation in three sentences a supervisor can act on without opening five screens.

In the plan: D4 prefilled options, Release 1. D9 predicted late arrival and D12 dock congestion forecast, Release 2.

### 2. OVER TIME

The pattern nobody has time to look for

- Finds the combinations nobody thought to query: this transporter, this zone, this month, this hour of the day.
- Turns them into standing advice rather than a chart. Stop giving the Bekasi afternoon run to this transporter in the rainy season, it has missed six times in two years.
- Flags a trip whose shape does not look like the lane normally looks, before any threshold is crossed.

In the plan: D10 milestone anomaly detection, Release 2.

### 3. FROM WHAT WE WRITE DOWN

Reading the words, not just the numbers

- Every exception closes with a cause and a note in the coordinator’s own words. AI reads those notes, which no formula can.
- Groups them: the same three sentences are being written forty times a month, and every one of them says the pick started late.
- Proposes the threshold or the playbook rule that would have stopped them happening again.

In the plan: the resolution record, Release 1. S12 ask the tower in plain language, later.

### THE TOWER READS AND RECOMMENDS. IT NEVER COMMANDS.

Every recommendation is labelled as a recommendation, carries the reason and the numbers behind it, and waits for a person. 54 percent of supply chain leaders say that is exactly what they want from AI: the recommendation from the machine, the decision from the human.

**Visual alt text:** Three side-by-side panels distinguish immediate case recommendations, long-term pattern detection, and analysis of written resolution notes. A banner below states that AI recommends while people decide.

## Slide 8: Scope

- FFI Plant Cikarang
- FFI MDC Cikarang
- FFI Plant Pasar Rebo
- Powder
- SP YCH Cibitung
- SP YCH Samarinda
- SP YCH Manado
- SP YCH Makassar
- SP YCH Medan
- SP YCH Mataram
- SP YCH Surabaya
- FFI HUB Palembang
- Foreign Distributors
- 14 Ecom Distributors
- 285 GT Distributors
- 110 MT Direct-to-Stores & 209 MT to DCs
- 338,938 GT Outlets
- Present
- Future

**Visual alt text:** Supply network diagram. FFI Plant Cikarang and FFI Plant Pasar Rebo feed FFI MDC Cikarang, with `Powder` shown on the Pasar Rebo flow. The MDC connects to SP YCH Cibitung and a national chain of FFI HUB Palembang and SP YCH sites in Surabaya, Mataram, Medan, Makassar, Manado, and Samarinda. Downstream flows serve 110 MT Direct-to-Stores & 209 MT to DCs, 285 GT Distributors, 14 Ecom Distributors, 338,938 GT Outlets, and Foreign Distributors. Solid lines denote Present flows; a dashed line to Foreign Distributors denotes Future flow.

## Slide 9: The Working Tower Live in 16 Weeks, Automation at a Gate

| Block | Weeks | What exists at the end | CEL deliverable (format) |
|---|---|---|---|
| Blueprint & baseline | W1 to W3 | Architecture note, data-source map, skills mapping, the quantified baseline for Slide 3's three cost lines | Solution architecture + baseline pack (PDF + working model), Fri 18 Sep |
| See build | W3 to W9 | One live record on the ID perimeter, predictive arrival running; your developers building against CEL functional specs | Functional specs per module (docs), weekly build direction |
| Decide build | W8 to W16 | Exception queue live, deviations costed, worked weekly by ID planners | Exception and recommendation logic specs, adoption rituals, Release 1 evidence pack |
| G1 gate, ~mid-Dec 2026 | W16 | Decision point: release Act, and/or exercise the Vietnam option | Gate readout (criteria per engagement agreement) |
| Act release | W17 to W24 indicative | Guarded write-back after a four-week parallel run | Guardrail framework, audit design, G2 evidence pack |

**Timeline anchors:** YCH team mobilized Mon 24 Aug (access, environments, data extracts). Kickoff Mon 31 Aug. Release 1 gate mid-December 2026.

Assumption: the 16-week line assumes the team from Slide 11 full time from mobilization and data access in week 1.

**Visual alt text:** Five-row phased timeline. Blueprint & baseline, See build, and Decide build overlap; G1 is a decision gate at W16; the optional Act release follows from W17 to W24.

## Slide 10: Teams, Streams, and Phases

| Stream | Team |
|---|---|
| PRODUCT & PLATFORM* | Pierre<br>CEL Team<br>+ 1 Extra Dev<br>+ Devops (½)<br>Y3 (1) |
| DATA & INTEGRATION | Thibaud (technical)<br>Youssef (functional)<br>+ Extra Dev<br>+ Devops (½)<br>Y3 (2) |
| MileApp | MileApp |

|  | Phase 1: Blueprint | Phase 2: Development | Phase 3: QA | Phase 4: Go-live |
|---|---|---|---|---|
| Duration | 3-4 weeks | 10-12 weeks | 2 weeks | 1 week + (hypercare) |
| PRODUCT & PLATFORM* | Definition & Design | Application development | - Functional testing<br>- End-to-end test development | - Hypercare<br>- Troubleshooting |
| DATA & INTEGRATION | Build a prototype | MileApp/API integration development | Integration test development | Troubleshooting |
| Outputs | - Resource needs<br>- Functional specs<br>- Technical specs<br>- Prototype | - Alpha version<br>- Technical & integration documentation | - MVP Production Ready<br>- Knowledge base<br>- Signed-off UAT<br>- Automated test | - Training Workshop<br>- User Onboarding |

*Lana AI is included in the product and platform stream handled by CEL.

**Visual alt text:** Matrix showing two workstreams progressing through Blueprint, Development, QA, and Go-live. MileApp is connected to Data & Integration. Deliverables accumulate beneath each phase.

## Slide 11: Correct Is Written Before It Is Built, and Checked After

The Product and Platform stream's artefacts, from workshop to training

`WORKSHOPS → 1. SPECS AND ACCEPTANCE CRITERIA → DEVELOPMENT → 3. TEST SCENARIOS AND UAT → 4. TRAINING`

- **WORKSHOPS:** YCH operations and Y3 correct our drafts, one module at a time
- **1. SPECS AND ACCEPTANCE CRITERIA:** The mockup plus the testable definition of correct, per feature
- **DEVELOPMENT:** The developers build to the criteria; the technical specs are theirs, not ours
- **3. TEST SCENARIOS AND UAT:** Scripts from the criteria; YCH runs and signs
- **4. TRAINING:** Train the trainer: CEL trains Y3, Y3 trains YCH
- **2. REFERENCE DATA AND DEFINITIONS:** Parameter register, playbook rules, KPI formulas, cause families, milestone definitions
  - the definitions the developers cannot invent

every two weeks, each increment accepted or rejected against the criteria

**THE RULE THAT MAKES IT WORK** a developer question is answered the same day, in the daily window. The published failure of this model is a team waiting on the product side.

Open question for Sardar: does CEL interact with FFI directly at all. UAT is signed by YCH.

**Visual alt text:** Main delivery flow runs from workshops through criteria, development, UAT, and training. Reference data and definitions feed upward into the acceptance criteria, while every two-week development increment loops back for acceptance or rejection against those criteria.

## Slide 12: Every Artefact Carries One Accountable Name

Produced and received by the Product and Platform stream, across five parties

| Artefact | R, does it | A, answers for it | S, supports | C, consulted | I, informed |
|---|---|---|---|---|---|
| **Produced by the stream** |  |  |  |  |  |
| Functional specs, the mockup and written behaviour | Pods | Pierre | YCH ops, Y3 | Data and Integration | Sardar |
| Acceptance criteria, per feature | Pods | Pierre | YCH ops, Y3 in workshops | Developers | Data and Integration |
| Reference data and definitions | Pods | Pierre | YCH ops | Data and Integration | All |
| Data contract, fields, events, milestones | Pod B with Youssef | Pierre and Thibaud jointly | Y3 | MileApp via Y3 | Sardar |
| Test scenarios and UAT scripts | Pods | Pierre | Y3 | YCH ops | Data and Integration |
| UAT sign-off | Pods orchestrate | YCH | Y3 |  | Sardar |
| Training material, train the trainer | Pods | Pierre | Y3 |  | YCH |
| **Received by the stream** |  |  |  |  |  |
| Technical specs and integration documentation | Data and Integration | Thibaud |  | Us | Us |
| Master data and MileApp flow field definitions | YCH and Y3 | YCH |  |  | Us |
| Working software, each sprint | Developers | Thibaud |  |  | Us, we accept or reject |

R runs the work. A is the one name that answers for it. S does part of the work. C is asked before. I is told after.

## Slide 13: Project Team

### Structure

| Level | CEL | YCH |
|---|---|---|
| STEERING COMMITTEE | **Project Director**<br>Julien Brun | **Project Coordinator**<br>Lilian Tan / Tong Ping Hui |
| PROJECT MANAGEMENT | **Project Manager**<br>Pierre Quentin | **Project Manager**<br>Lewis Goh |
| PROJECT EXECUTION | CEL Analysts<br>SIMCEL Developers | Y3 Developers |

### Cadence

| Meeting | CEL Director | CEL Manager | CEL Analyst | YCH Coordinator | YCH Manager | YCH Developer | MileApp | Cadence / Timing |
|---|:---:|:---:|:---:|:---:|:---:|:---:|:---:|---|
| SteerCo | ● | ● |  | ● | ● |  |  | Monthly |
| Progress Meeting |  | ● | ● |  | ● | ● |  | Weekly, Thursday |
| Technical Meeting |  | △ | ● |  | △ | ● | △ | When needed |
| Visit / Process Review | △ | ● | ● | △ | ● | ● | △ | Project Kick-off |
| Gate Validation | ● | ● |  | ● | ● |  | △ | Mid December 2026 |

● Core attendees  
△ Join on request

**Visual alt text:** Three-level team structure pairs CEL and YCH roles with two-way coordination links at each level. The cadence matrix assigns core and optional attendance for five meeting types.

## Slide 14: YCH TCT Project Timeline

Release 1 - Cika  
Release 2 - Cibi

Weekly dates:

`31/08 → 07/09 → 14/09 → 21/09 → 28/09 → 05/10 → 12/10 → 19/10 → 26/10 → 02/11 → 09/11 → 16/11 → 23/11 → 30/11 → 07/12 → 14/12 → 21/12 → 28/12 → 04/01 → 11/01 → 18/01 → 25/01 → 01/02 → 08/02 → 15/02 → 22/02 → 01/03 → 08/03 → 15/03 → 22/03 → 29/03 → 05/04`

### BLUEPRINT

- Blueprint & baseline

### EXECUTION TOOL

- Order backbone (1.1, 6.3)
- Route and load optimization (1.2)
- Carrier engagement (1.3, 2.1 to 2.3)
- Outbound staging assignment (3.1)
- Gate and dock execution (3.2 to 4.3)
- Delivery execution (5.1 to 6.2)

### CONTROL TOWER

- End-to-end visibility
- Exception handling
- CI Recommendation
- Pipeline engineering
- KPI engineering
- AI engineering
- Guarded execution

### PROJECT GOVERNANCE

- Kickoff / Steerco
- Visit
- PMO Meetings

Legend: CEL; Y3; MileApp

**Visual alt text:** Gantt chart from 31/08 through 05/04. Blueprint and execution-tool builds occupy the first part of the schedule; Control Tower work overlaps them and extends through Release 2. Guarded execution is the final long activity in February and March. Vertical red lines mark `Release 1 - Cika` at 14/12 and `Release 2 - Cibi` at 18/01. Blue bars denote CEL, purple bars Y3, and red bars MileApp. Governance milestones and recurring PMO meetings run along the bottom.

## Slide 15: Eight Disagreements, Eight Decisions, One Version to Send

Proposal v3 rev4 against the working file, resolved 24 August. Decisions in red are Pierre's.

### Conflicts

| Ref | The point | Proposal v3 rev4 | Working file v10 | Decision |
|---|---|---|---|---|
| C1 | Blueprint sign-off | 18 September, described as weeks 1 to 3 | 3 to 4 weeks from 24 August, no date committed | Keep 18 September |
| C2 | Release 1 date | 11 December in the text, 14 December on the timeline chart | 11 December | Keep 11 December, as stated on The Offer on One Page. Correct the chart |
| C3 | What the tower does | Sees and decides | Reads and recommends | Keep sees and decides: it is decision support, and it is the client's own wording |
| C4 | Milestones fed by MileApp | 3 of 9 operational milestones | 13 milestones agreed 21 August | 9 is a typo. Keep 13 |
| C5 | OTIF | OTIF by channel, one blended KPI | On-time separated from in-full | No conflict: OTIF at level 1, on-time and in-full at level 2 |
| C6 | Gate, staging and dock builder | TBD, decision by week 3 | MileApp, unconfirmed | Keep TBD, decision by week 3 |
| C7 | Milestone list | Annex B lists job accepted and truck assigned | Sequence agreed 21 August | Use the sequence from Exceptions Across the Milestone Sequence |
| C8 | Milestone order at origin | Pick complete before truck check-in | Same | Swap: queue in, then checked in, then pick completed. Picking starts once the truck is on site |

### Alignments

| Ref | The point | Proposal v3 rev4 | Working file v10 | Decision |
|---|---|---|---|---|
| B1 | Name of the transversal band | Data Pipeline | Pipeline Engineering | Adopt Data Pipeline everywhere |
| B2 | Timeline lanes | KPI engineering and CI Recommendation shown as lanes | KPI folded into visibility; six modules | Remove the KPI engineering lane. Rename CI Recommendation to Continuous Improvement |
| B3 | Exception catalogue | 17 exceptions, grouped by system | 17 exceptions, grouped by journey stage | Merge on the journey-stage axis: 23 for Release 1, the predictive ones held for Release 2 |

**WHY C3 HOLDS TOGETHER** the same slide already states read-only tower, humans act. Decides describes the support, not the authority, and the two lines must stay together.

Not shown: ten additions from the proposal adopted into the working file, including the feed ladder, the Committed Set, the 7 KPIs and the signature deadline.

**Visual alt text:** Five-column decision log split into eight conflicts and three alignments. Each row compares Proposal v3 rev4 with Working file v10 and records Pierre's decision in red. A note below explains why `sees and decides` is retained while the tower remains read-only and humans act.
