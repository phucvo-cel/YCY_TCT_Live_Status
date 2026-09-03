# Part B. Knowledge Base

Compiled from working sessions and web research (SAP documentation, practitioner literature, logistics integration sources). Plain English throughout; system-specific vocabulary is avoided or defined at first use.

Split from `CT_Working_File_and_Knowledge_Base_v13.md` (v13) for narrow loading; the full change log and cross-file map live in [CT_Index.md](./CT_Index.md).

## Contents

- L27: B1. Where the plan stops
- L35: B2. The weekly cycle: horizon, release, tolerance, alerts
- L47: B3. Why released orders deviate from the plan: the common reasons
- L61: B4. The 3PL boundary and the validation loop
- L67: B5. What the ERP records, and what it lacks
- L80: B6. Integration between the manufacturer and the 3PL
- L90: B7. Glossary
- L111: B8. Control tower interface patterns (web research, July 2026)
- L117: B9. The warehouse boundary: what the tower watches, and never touches
- L134: B10. Builder landscape, Transport CT track (web research, August 2026)
- L140: B11. Shipment-level detection versus network-level management
- L151: B12. Delay cause taxonomies (web research, August 2026)
- L163: B13. Indonesian domestic port and ferry practice (web research, August 2026)
- L171: B14. MileApp API findings (web research, 23 August 2026)
- L179: Sources

---

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
