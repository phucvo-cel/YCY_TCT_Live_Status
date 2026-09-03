# Part C. Transport Control Tower Working File (YCH Internal, Indonesia)

Opened 17 August 2026. This track is distinct from Part A: the client is YCH itself, the scope is its Indonesian road transport operation, and the tower is co-built (CEL designs and directs, YCH builds). Knowledge from Part B applies where marked.

Split from `CT_Working_File_and_Knowledge_Base_v13.md` (v13) for narrow loading; the full change log and cross-file map live in [CT_Index.md](./CT_Index.md).

## Contents

- L33: C1. The engagement
- L65: C2. The YCH requirement list
- L79: C3. Builders and the CEL role rule
- L91: C4. The architecture and the block mapping
- L121: C5. The ETA and exception doctrine (blocks 5.2 and 5.3)
- L133: C6. Delivery: two workstreams, data-first
- L144: C7. Slide inventory, this track
- L163: C8. Decisions taken, 17 August 2026
- L172: C9. Assumptions to verify (this track)
- L200: C10. Decisions taken, 19 August 2026
- L209: C12. Network shape and flow, 19 August 2026
- L225: C11. Mockup build record
- L233: C13. Decisions taken, 20 August 2026
- L269: C14. The warehouse model at Cikarang
- L289: C15. Escalation, the resolution record, and the KPI rule
- L312: C16. The programme board model
- L328: C17. Decisions taken, 21 and 23 August 2026
- L362: C18. Decisions taken, 23 August 2026, evening session
- L388: C19. Reconciliation with proposal deck v3 rev4, 24 August 2026
- L441: C20. The AI in Release 1, and the decisions of 25 August 2026
- L473: C21. The milestone sequence, confirmed 25 August 2026

---

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

