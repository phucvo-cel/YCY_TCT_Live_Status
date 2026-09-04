# YCH Transport Control Tower, SPVB Vietnam

## Working File

Project reference, version 1, opened 27 August 2026. This file covers the Transport Control Tower for the road transport operation YCH runs for Suntory PepsiCo Vietnam Beverage (SPVB) in Vietnam. Client contact: Sardar Ahmed.

**Lineage.** This file is forked from `CT_TCT_Working_File_v14.md`, which carried the same engagement under its previous scope (Indonesian operation, dairy shipper). On 27 August 2026 YCH informed CEL that the country is Vietnam and the shipper is Pepsi, confirmed by Pierre as SPVB, the beverage entity only. The parent file is retired as the geographic record and stays untouched; its decisions D1 to D88 are inherited here by reference, with the exceptions listed in V7. All programme dates, teams, streams, commercial structure and doctrine carry over unchanged. New decisions in this file carry the VD prefix so the two series never collide.

Change log, v13 to v14 (2 September 2026): VD41 and VD42 added, the transporter dropped as a rule audience and the typography embedded in the mockup. New section V11 records the build machinery, the title the importer keys on, the staleness of the mockup guide, and the mockup record from v0.17 to v0.24. Mockup released at v0.24.

Change log, v12 to v13 (29 August 2026): VD37 to VD40 added. Execution modules 3 and 4 are built by Y3 in Vietnam and by MileApp in Indonesia. The user list and the seven KPIs recorded as agreed with YCH. Supply point retired as a term in favour of DC. Client-agnostic design written down as a requirement, with the deployment path to the other two SPVB warehouses.

Change log, v11 to v12 (29 August 2026): Bắc Ninh confirmed out of Release 1 scope (VD36). The two Ho Chi Minh City warehouses renamed to DOP and OPMT across the mockup, delivered as YCH_TCT_SPVB_v16.html. Ways of working for specifications written for the analyst team, held outside this file.

Change log, v10 to v11 (28 August 2026): the YCH scoping alignment meeting folded in, section V10. What YCH stated now replaces what the mockup assumed on sites, sequence, dates and module scope. VD32 to VD35 added. Three earlier decisions are amended by it: VD2 the network anchor, VD4 the two-warehouse structure, and V8 question 1.

Change log, v9 to v10 (28 August 2026): VD29 to VD31 added. Every rule now carries an owning role, an escalation and an audience list. The Playbook page rebuilt around one rule list and two views. The rule panel and the editor merged.

Change log, v8 to v9 (28 August 2026): the playbook editor built, phase A1. VD25 to VD28 added: the editor's shape, the piped against computed data distinction, where scoring lives, and client-agnostic design as a standing aim. PB-P19 added to the parameter register.

Change log, v7 to v8 (28 August 2026): VD23 and VD24 added, the option timeline drops the part of the journey that is the same on every option, and the panel version tag now matches the filename.

Change log, v6 to v7 (28 August 2026): VD22 added, the panel is resizable by its edge, its option cards hold one height, and the option cycle answers the keyboard as well as the arrows.

Change log, v5 to v6 (28 August 2026): PB-04 folded into PB-11, so all twenty-two rules are on the agreed catalogue. The exception panel rebuilt around the options. VD18 to VD21 added. The Y3 MileApp lead is recorded as Mrs. Lee Kiow.

Change log, v4 to v5 (28 August 2026): the twenty-two exceptions written out as a list for the first time, section V9, and the mockup's catalogue aligned to it. VD14 to VD17 added: names keep their diacritics, one AI block per exception panel, the conditional baseline card, and the option timelines.

Change log, v3 to v4 (27 August 2026): the content pass recorded. VD11 to VD13 added: the Lana portrait, the version numbering split between the file and the screen, and the option selector deferred to its own phase. The Vietnamese interface dictionary is deferred with no date, at Pierre's instruction.

Change log, v2 to v3 (27 August 2026): the build state recorded after phases 1 to 3. VD7 to VD10 added: the ATOM shed as the distribution centre icon, the ATOM lighthouse in the header, the CARTO key on the basemap tiles, and the stable document title. The duplicate parameter code PB-P9 found in the register and resolved, the fill rate moving to PB-P17. Two trips added for the yard queue.

Change log, v1 to v2 (27 August 2026): network extended from seven nodes to eleven to match the mockup's structure (a second factory at Dong Nai, a central hub at Da Nang, six supply points), site capacities aligned to the figures the mockup's floor arithmetic runs on, and the frozen example restated in the units the mockup uses. VD6 rewritten. The yard queue is now hand-sequenced too, with queue numbers Q1, Q2, Q3, alongside the floor waiting letters A, B, C of D88 (Pierre, 27 August 2026). Two new parameters, PB-P15 and PB-P16, restated against the new design.

Change log, v1 (27 August 2026): file created. Scope change to Vietnam and SPVB recorded (VD1). Network anchor, shipper naming and warehouse structure decided (VD2, VD3, VD4). Milestone 4, truck queue in, activated for this scope (VD5). Waiting-letter default proposed (VD6). Frozen worked example VN-TR-2214 written (V4). Vietnamese freight research added (VB1), replacing the retired Indonesian port and ferry section.

---

# Part 1. Working File

## V1. The engagement and the scope change

The engagement structure is unchanged from the parent file: Blueprint to a sign-off on 18 September 2026, Release 1 gate on Friday 11 December 2026, the two streams (Product and Platform under Pierre; Data and Integration under Thibaud and Youssef), the Y3 build team, the pods of D57, and the Committed Set logic of D74. The proposal signature deadline of Friday 28 August 2026 stands; the proposal wording must be checked against this scope change before signature (open item, V8).

**VD1. The scope is Vietnam and the shipper is SPVB.** Country: Vietnam. Shipper: Suntory PepsiCo Vietnam Beverage, the beverage joint venture, and not PepsiCo Foods Vietnam, the snacks entity. Source: YCH via Pierre, 27 August 2026. Level of detail: YCH has given the country and the shipper only; sites, flows and volumes are not yet stated, so everything below the entity level in this file is Assumed or Invented until YCH confirms it. The mockup is deliberately pre-adapted ahead of those confirmations.

**MileApp remains the main transactional data source** (Pierre, 27 August 2026). The source of truth doctrine D45 and the feed ladder of D74 item 1 carry unchanged. One caveat is recorded rather than hidden: MileApp's public references are Indonesian and its Vietnam deployment is unverified (VB3), so "MileApp live at the SPVB scope today, or to be rolled out" is a Blueprint verification item, not an assumption of readiness.

**People.** Sardar Ahmed remains the sole commercial contact. The shipper-side operations expert role, held by Lilian on the previous scope, has no confirmed holder for SPVB; who plays it, and whether CEL interacts with SPVB directly, are open questions (V8).

## V2. The network

**VD2. The network anchor.** The mockup's network is anchored on the real footprint of the two companies, with every operational detail tagged:

| Site | Nature | Tag | Coordinates (approximate, for the map only) |
|---|---|---|---|
| SPVB Plant Hoc Mon | Factory, Ho Chi Minh City | Known to exist (VB2); its place in YCH's scope Assumed | 10.884, 106.593 |
| MDC Hoc Mon | In-plant master DC at the Hoc Mon plant | Assumed: mirrors the structure YCH ran on the previous scope | 10.884, 106.593 |
| YCH DC Thuan An | Offsite DC, the YCH-Protrade DistriPark, Binh Hoa Ward, Thuan An | Known to exist and be YCH's (VB2); its role in SPVB flows Assumed | 10.925, 106.713 |
| Plant Dong Nai | Second factory, Bien Hoa area | Known to exist (VB2); its place in YCH's scope Assumed | 10.945, 106.842 |
| HUB Da Nang | Central hub | Invented | 16.061, 108.213 |
| DC Can Tho | Local DC, Mekong Delta | Invented | 10.034, 105.788 |
| DC Nha Trang | Local DC, south central coast | Invented | 12.249, 109.190 |
| DC Quy Nhon | Local DC, south central coast | Invented | 13.782, 109.219 |
| DC Hanoi | Local DC, north | Invented | 21.028, 105.834 |
| DC Hai Phong | Local DC, north coast | Invented | 20.844, 106.688 |
| DC Bac Ninh | Local DC, north, near the SPVB Bac Ninh plant | Invented | 21.107, 106.089 |

Administrative naming follows the post-merger map of July 2025: Binh Duong is now part of Ho Chi Minh City, so Thuan An is written as "Thuan An, Ho Chi Minh City" wherever an address appears, and the province list behind the supply points uses the 34-province map.

**VD3. SPVB is named on screen.** Site labels, order headers and the shipper field carry "SPVB", with "Suntory PepsiCo Vietnam Beverage" spelled out once on the network screen. Rationale: matches the precedent of naming the client on the parallel pitch, and YCH itself named the shipper. If Sardar restricts the audiences that may see the name, the string is centralised and swaps in one edit.

**Amended by the scoping meeting, see V10.** The two sites below are now named by YCH as DOP and OPMT / Sóng Thần, and the mockup's names are the ones to change.

**VD4. The two-warehouse structure is kept.** Master DC in-plant at Hoc Mon, offsite YCH DC at Thuan An, a shuttle between them modelled as its own trip (inheriting D19), and the dock screen switching one site at a time (inheriting D20). The whole structure is tagged Assumed: it mirrors the previous scope's pattern and is kept so the screens survive intact, not because YCH has described the Vietnamese operation. Straight-line distance between the two sites is about 13 km; the road leg is assumed at 25 km and 50 minutes.

**The flow (inheriting D18, re-anchored, all Assumed).** The Hoc Mon plant feeds MDC Hoc Mon and YCH DC Thuan An. MDC Hoc Mon sends overflow to Thuan An and Thuan An does not send back. Thuan An ships onward to the supply points as transfers (channel SP) and to customers as MT and GT deliveries around greater Ho Chi Minh City. YCH manages every facility to facility transfer; YCH does not manage every last mile. No relay between supply points (inheriting D37): the north is served direct on the long lane.

**Capacities, all Invented until stated.** MDC Hoc Mon: 23 outbound docks, 15 staging lanes. YCH DC Thuan An: 12 outbound docks, 8 staging lanes. The Hoc Mon figures are the ones the mockup's floor arithmetic already runs on, carried over from the previous scope where they were the one stated capacity; here nothing is stated, so both sites are Invented and the first question in V8 asks for both.

## V10. What YCH stated at the scoping alignment meeting

Source: YCH scoping alignment meeting summary, received 28 August 2026. This section is Known, not Assumed, and it overrides anything earlier in this file that conflicts with it.

**VD32. The network is three warehouses, and the first release is one of them.** YCH operates three SPVB-exclusive warehouses in Vietnam.

| Site | What YCH says it is | In the mockup today |
|---|---|---|
| DOP | In-plant warehouse in Ho Chi Minh City, about 25 km from OPMT | Drawn as MDC Hóc Môn, the in-plant master DC |
| OPMT, also called Sóng Thần | On-premises modern trade warehouse, also serving as the HCM DC | Drawn as the offsite DC at Thuận An |
| Bắc Ninh | One warehouse in the north | Drawn as SP Bắc Ninh, a supply point |

Two things line up by luck and are worth keeping: the 25 km between the two HCM sites is exactly the shuttle distance the mockup assumed, and Sóng Thần is the industrial park beside the YCH-Protrade DistriPark the network was anchored on. What has to change is the naming: DOP and OPMT / Sóng Thần replace MDC Hóc Môn and Thuận An on every screen, and Bắc Ninh is promoted from an invented supply point to a stated warehouse. Which HCM warehouse goes first is not yet confirmed and is now the single most useful answer YCH can give us.

**VD33. The first three months cover one HCM warehouse only.** The implementation starts with one HCM warehouse and expands to the remaining sites afterwards. Consequence for the mockup: the eleven-node network is the target state, not the Release 1 state, and the deck and the working file carry the phasing rather than the screens showing an emptier network. That is the doctrine already recorded for degradations and phasing.

**VD34. Two modules are out of scope for Vietnam.** Modules 2.4 and 6.4, both cash-management related, are excluded. To check against our own catalogue before the workshops: which rules, if any, read feeds from those blocks. Responsibilities are to be distributed across YCH, Y3 or MileApp and CEL, and existing SPVB and FFI standards are to be reused rather than designing Vietnam independently.

**VD35. System readiness is uneven, and the feed ladder is the answer.** What YCH stated by function:

| Function | Readiness |
|---|---|
| Transport planning | MileApp available |
| In-transit visibility | MileApp available |
| POD management | MileApp available |
| Transporter administration | Not in MileApp yet, needs development, potentially several weeks |
| Dock management | YCH or Y3 capability exists, customisation may be needed |
| Loading management | YCH or Y3 capability exists, customisation may be needed |

Two consequences for what is already built. First, PB-11, no transporter accepts the trip or none is assigned before the cut-off, reads acceptance data from block 2.1, which sits in the function that does not exist yet; the rule stays in the catalogue and its feed is marked as pending development. Second, the recommendation scorecard's acceptance metric depends on the same gap, so the transporter shortlist is demonstrable but not yet computable from live data.

**The dates, replacing anything earlier in this file.** Vietnam implementation runs September to December 2026, with the first site live by January 2027 at the latest. FFI Indonesia follows from January to March 2027, targeting go-live in April 2027. The 31 August start is not feasible; kick-off could begin the following week, subject to YCH and MileApp alignment. MileApp is not yet implemented in Vietnam, so YCH and Y3 must align before formal kick-off, and YCH Vietnam is currently taking over a warehouse, which constrains their resources.

**What this changes in our own plan.** The Blueprint sign-off and Release 1 gate dates recorded in V1 came from the previous scope and now sit inside a different implementation window. They are not restated here as facts; they are flagged as needing confirmation with Julien and Sardar against the September to December window.

**VD36. Bắc Ninh is out of Release 1, and Y3 deploy it themselves.** Only one of the two Ho Chi Minh City warehouses is in Release 1 scope, so Bắc Ninh is not. Y3 plan to deploy the control tower there on their own and will ask CEL for support when they need it (Pierre, 29 August 2026). Consequence for the mockup: Bắc Ninh stays on the network as a destination, since trips still run north, but it is not a site the tower operates in Release 1 and the dock screen does not offer it.

**The mockup carries the real site names as of 29 August 2026.** DOP is the in-plant warehouse at Hóc Môn and OPMT, also called Sóng Thần, is the on-premises modern trade warehouse and HCM DC. Delivered in YCH_TCT_SPVB_v16.html, replacing the invented MDC Hóc Môn and Thuận An throughout.

**Open against this section.** Which of the two Ho Chi Minh City warehouses is first, DOP or OPMT. Not yet known (Pierre, 29 August 2026).

## V3. Lanes and modes

Vietnam is one landmass, so the archipelago layer of the parent file (sea lanes, ports, ferry crossings, the ferry against ship distinction of D62) is retired entirely. What replaces it, grounded in VB1:

| Lane | Mode | Distance (approx) | Assumed transit | Note |
|---|---|---|---|---|
| Hoc Mon plant to Thuan An DC | Road | 25 km | 50 min | The shuttle, its own trip |
| Thuan An DC to Can Tho | Road | 180 km | 4 h 30 | The worked example lane |
| Thuan An DC to Nha Trang | Road | 430 km | 9 h | Driver rest not modelled |
| Thuan An DC to Da Nang | Road | 940 km | 22 h, overnight rest included | |
| Master DC to Hanoi, Bac Ninh and Hai Phong, the north lane | Road, with rail and coastal sea as named alternatives | 1,730 to 1,830 km | 51 to 53 hours | See VB1; the alternatives appear in the lane tooltip, not as drawn legs |
| Master DC to Quy Nhon | Road | 650 km | 14 h | |

Every distance and transit above is an assumption for YCH to replace with its contractual figures, exactly as the parent file said of its own lane times. The north lane is drawn as road in v1 of the mockup; if YCH says the corridor actually runs by rail (the Song Than railhead sits beside the Thuan An DC) or by coastal sea via Hai Phong, the lane is redrawn with a transfer point, using the same load-changes-vehicle rule the retired ferry section used.

## V4. The frozen worked example

One example carries every screen, panel and AI illustration.

**Trip VN-TR-2214** (all values Invented). 1,120 cases of Pepsi 390ml PET, which is 28 pallets at 40 cases to the pallet, from MDC Hoc Mon to SP Can Tho, delivering to Nam Can Tho Distribution, a general trade distributor in the Mekong Delta. Transporter: Truong Phat Van Tai JSC. Vehicle: 61C-214.85, a wingbox 20 ft. Illustrative times, the morning the mockup shows: truck queue in 06:10, checked in 06:30, pick completed 07:20, docked in 07:40, docked out 08:45, ex-warehouse 08:55, arrived at ship-to 13:10, POD completed 13:35, against a delivery window of 12:00 to 15:00. The mockup renders these as offsets from the live clock, so the wall clock moves and the intervals do not.

**The SKU set** (Invented, four items as before): Pepsi 390ml PET, case of 24; 7Up 320ml can, case of 24; Sting 330ml PET, case of 24; Aquafina 500ml, case of 24. Beverage loads are weight-limited before they are volume-limited, so the load fields show tonnes alongside pallets and the fill-rate exception (deck addition, D73) reads against weight.

**The registry skeleton** (all Invented): three transporters, Truong Phat Van Tai JSC, Song Hau Trans Co Ltd and Dai Viet Logistics JSC; plates in the 61C and 50H series with the dot format (61C-214.85); thirteen ship-to points, split MT and GT as before; channel mix roughly half MT and GT around greater Ho Chi Minh City, the rest SP transfers and the north lane. The export channel is omitted from v1 of the mockup until YCH confirms it exists in this scope (V8); if confirmed, the port is Cat Lai or Cai Mep.

**The AI worked example (re-anchoring the illustration under D77).** Trip VN-TR-2214 is late against its ETA into Can Tho. The playbook offers hold the dock slot at the ship-to window, re-sequence the following load, notify the ship-to. The AI has seen eleven similar afternoon delays out of Thuan An where the coordinator's note recorded a recovery by swapping to a later dock slot, so it adds a fourth option, swap to the 15:00 slot, marked as AI. The mechanics of D77 (playbook produces the options, the AI adds at most one, every option labelled with its origin per D80) are unchanged.

## V5. Milestone 4 goes live

**VD5. Truck queue in is active in this scope.** D84's thirteen-milestone sequence carries unchanged, and its per-country flag flips: milestone 4, truck queue in, applies in Vietnam, so it is a live milestone on every journey line, between milestone 3, truck confirmed, and milestone 5, truck checked in. The wording "(Vietnam only)" is retired from screens: in a Vietnam-scoped product it is noise. The fencing of D74 item 3 carries: milestones 6, pick completed, and 8, truck docked out, stay fenced with the gate, staging and dock module and outside the December acceptance. What queue in physically is at an SPVB site (a yard gate event, a marshalling area, a paper log) is unknown and is asked in V8.

**VD6. Two hand-set sequences, one for the yard and one for the floor.** Decided by Pierre, 27 August 2026, overturning the first draft of this decision, which had left the yard unsequenced. The coordinator sets the order twice, at two different moments, on two different screens:

- **The yard queue order, numbers Q1, Q2, Q3.** Trucks that have queued in (milestone 4) and have not yet checked in (milestone 5) carry a queue number set by the coordinator, deciding which truck is called to the gate next. Shown on the Yard queue table.
- **The floor waiting order, letters A, B, C.** Trucks that have checked in and hold no staging lane carry a letter, deciding which truck takes the next lane that frees. Shown on the Orders on the floor table. This is D88 unchanged.

Both sequences use the same insert and shift mechanic of D88: giving a position that is already taken pushes its holder and everyone below down one place, so there are never duplicates or gaps; when a truck leaves the list, the rest close up and its position is kept on the order so Continuous improvement can compare the sequence the coordinator set against the sequence the floor followed.

**Why two symbol types rather than one series.** A truck moves from the yard list to the floor list during its morning, so a single A, B, C running across both would be ambiguous about which list a position refers to. Numbers with a Q prefix for the yard, letters for the floor, keeps one symbol meaning one thing. Assumed, not stated by YCH: revisit in the gate, dock and staging workshop, alongside question 9 in V8, what queue in physically is at an SPVB site and whether the coordinator can in practice call trucks forward from the yard.

## V9. The twenty-two exceptions, written out

Until now the catalogue existed as a count and a merge rule: decision D73 said twenty-two exceptions across five journey stages and described how the two source lists were merged, but nobody had written the twenty-two lines down. They are written here, from the Exceptions Across the Milestone Sequence slide and the five the proposal deck added, and the mockup's playbook now carries all of them.

**Planning, seven.** Order data incomplete (PB-13). Route plan not respected (PB-14). Wrong truck type at warehouse (PB-15). Zone or master data no longer exists (PB-08). Cross-dock order missing its SO, DO or job linkage (PB-09). Truck fill rate below 85 per cent or above 100 per cent (PB-10). No transporter accepts the trip, or none is assigned before the cut-off (PB-11, absorbing the former PB-04 per VD18).

**At origin, four.** Truck arrives late at gate (PB-16). Dock waiting exceeds threshold (PB-02). Loading duration exceeds expected time (PB-17). Excessive time to check-out (PB-18). Staging area or dock overbooked (PB-12) also sits at this stage.

**In transit, four.** Truck late against ETA (PB-01). Route deviation (PB-19). GPS signal lost (PB-03). Unnecessarily long stop (PB-07).

**At destination, five.** Abnormal queuing time at destination (PB-20). Missing or late POD (PB-05). Invalid or illegible POD (PB-21). Partial or total delivery rejection (PB-06). Damage and loss (PB-22).

**Returns, one.** Return not raised on time (PB-23).

**The three predictive exceptions stay out**, per D73: predicted late arrival, milestone anomaly detection and dock congestion forecast are Release 2.

**No rule sits outside the catalogue.** PB-04, no truck assigned before the dispatch cut-off, was carried beyond the agreed list until 28 August, when it was folded into PB-11 (VD18). Twenty-two rules, twenty-two agreed exceptions.

**Built in phase 4, the content pass.** The delay on the frozen example now happens where the lane runs: VN-TR-2214 loses three hours on National Route 1 between Tan An and Vinh Long, and the decision thread and the evidence trail say the same. The arrival exception on VN-TR-4098 and its thread no longer speak of quays, berths, vessels or a shipping line agent: the contacts are the SP Quy Nhon site coordinator and the Song Hau operations desk, and the story is an arrival nobody logged. Performance, its worst-lane and worst-transporter tables, and the Lana suggested questions were already on the Vietnamese network from phase 1 and were checked rather than rewritten. Continuous improvement remains the agreed shell with its two named sub-modules. The Vietnamese interface dictionary is deferred with no date.

**Built in phase 4b.** The playbook screen now shows, on every rule, the journey stage it belongs to and the workshop exception it implements, with a tile counting how many of the rules are on the agreed catalogue (twenty-two of twenty-three) and how many are carried beyond it (one, PB-04). The exception panel carries the option row, the conditional baseline and the option timelines of VD16 and VD17, with the running example VN-TR-2214 landing 2 h 20 min late if nobody acts, 25 minutes inside the window if Trường Phát is instructed within the hour, one hour inside for the urgent part if the load is split, and unloaded the same day against a moved 16:00 slot on the option Lana proposes.

**Built in phase 3.** The yard queue is on the dock operations screen: a card listing the trucks standing in the yard with their queue numbers and how long they have stood, a Yard column on the Orders on the floor table beside the existing Waiting column, a tile counting them, and the queue-in milestone at the head of the journey line on every trip. Two trips were added to carry it, VN-TR-4168 and VN-TR-4170, both Invented. A truck queued in no longer appears on the Drivers to call list, because it is on site: that list is for trucks that have not arrived at all.

**A truck cannot hold both a queue number and a letter.** At check-in the queue number is released, the yard list closes up, and the truck joins the floor list without a letter until the coordinator gives it one. A truck that already holds a staging lane cannot be re-sequenced, inheriting D88.

**VD7. The distribution centre icon is the ATOM shed.** The master DC and the offsite DC now draw with the pitched roof and open door used by the other ATOM tools, the offsite DC keeping the broken outline that already told the two apart. The factory icon was already identical across the tools. Reason: one icon family across ATOM Beacon, ATOM Horizon and ATOM TCT, so a reader who has seen one map reads the next without relearning it.

**VD8. The header carries the ATOM lighthouse.** Taken byte for byte from the other ATOM tools rather than redrawn, amber `#EF9D17` on white, 32 by 32 pixels, to the left of the wordmark.

**VD9. The basemap tiles carry the CARTO key.** Without the key the tiles are stamped as needing one at some zoom levels, which would show in a demo.

**VD10. The document title is stable, and the version moves elsewhere.** The title is now `ATOM TCT SPVB` with no version in it, because the import script that gathers the ATOM tools tells them apart by title. The version moves in two places that still increment on every delivery: the filename, and a meta tag plus the build tag in the corner of the screen. Traded away: part of the house rule that the filename and the internal title move together. The rule's purpose, that a file on screen can be matched to a file on disk, is kept by the build tag.

**A defect found and fixed while building.** The parameter register carried two entries under the code PB-P9, the minimum truck fill rate and the late check-in warning, so every screen asking for the late check-in threshold was handed 85 per cent as though it were 85 minutes. The fill rate is now PB-P17 and PB-P9 means one thing again. This is the register's own rule, one code one parameter, applied to itself.

**VD11. Lana carries her own portrait.** The supplied Lana image replaces the placeholder in the copilot button, the copilot panel header and every place the copilot is named, so the copilot looks the same in ATOM TCT as in the other ATOM tools.

**VD12. The file version and the mockup version are two different numbers.** The filename increments on every delivery, `YCH_TCT_SPVB_v4.html`. The version on screen, bottom left, is the mockup's own build number and reads v0.03, matching the convention the mockup used before the scope change. The meta tag carries the same v0.03. The title stays the bare `ATOM TCT SPVB` per VD10. Reason: the import script keys on the title, the delivery record keys on the filename, and the screen shows how far the mockup itself has come, three different questions with three different answers.

**VD13. The option selector is rebuilt in its own phase.** ATOM Beacon presents resolution options as a horizontal card row: a chip on each card reading BASELINE, PLAYBOOK or PROPOSED BY LANA with Lana's face in it, the selected card expanded with its blurb and its outcome lines, the others collapsed to chip, name and the two figures a reader compares, and arrows at both ends. ATOM TCT currently stacks its options vertically. Bringing the two together is phase 4b, specified before it is built, because the two tools differ in what the figures under an option are: Beacon compares incremental cost against value unserved, and TCT has no money on an option yet, so what sits in that position has to be decided rather than copied.

**VD14. Vietnamese names keep their diacritics in the English interface.** Sites, transporters, ship-to points, personas and drivers are written as they are written in Vietnam: Hóc Môn, Thuận An, Cần Thơ, Đà Nẵng, Quy Nhơn, Bắc Ninh, Hải Phòng, Trường Phát Vận Tải JSC, Nam Cần Thơ Distribution, Tuấn L. and the rest. One exception: Ho Chi Minh City is an English exonym and stays unaccented in the English interface; the Vietnamese interface will read Thành phố Hồ Chí Minh.

**VD15. One AI block per exception panel.** The collapsible block headed "what the tower makes of this" and the Lana summary block said the same thing on the exception that had both, and on the others the collapsible was the only AI text. The collapsible is removed and the Lana block now carries the summary where one exists and the narrative otherwise. Defect found in the merge and corrected: the two texts disagreed on trip VN-TR-2214, one saying the truck lands 95 minutes after the receiving window closes and the other 2 h 20 min. The impact tile says 2 h 20 min, so that figure stands and the other is gone.

**VD16. The baseline card is conditional, not universal.** A "Doing nothing" card is drawn on an exception only where two conditions hold: the exception has a deadline that expires, and a consequence that lands whether or not anyone acts. On the catalogue in V9 that is eight of the types. Where either condition fails, a master data defect or a missing proof of delivery for instance, the option row starts at the first option and no baseline is drawn, because a card reading "Doing nothing" against a data defect would teach the viewer that the tower does not understand its own exceptions.

**VD17. The option row and the option timelines.** Resolution options are presented as ATOM Beacon presents them: a horizontal row of cards, the selected one expanded with the whole explanation and the rest collapsed to a chip, a name and the landing. The chip reads baseline, playbook with the rule code, or proposed by Lana with her face. The figure under every card is the landing against the receiving window, not money: cost is out of scope for this tower, and the decisions on this screen are about time. Above the row, where and only where the options genuinely differ in when the load lands, the tower draws one lane per option on a single shared time axis: what has already happened is solid and identical in every lane, what the option predicts is drawn in the computed style, the receiving window is a band and now is a line. The lane of the selected option is the only one at full weight. Where options differ in something other than time, a part refusal for instance, no chart is drawn. The explanation of what each option changes sits in the expanded card, not on the chart, because there is no room for it beside a lane.

Industry practice consulted before the design (28 August 2026): scenario comparison is conventionally drawn as stacked identical lanes on one shared time axis, with milestone shapes kept constant across lanes, a today marker, and vertical alignment so corresponding milestones form comparable columns. Parallel presentation of alternatives is also the established way to elicit trade-off reasoning rather than sequential review. General-industry patterns, not client measurements.

**VD18. PB-04 folds into PB-11.** The rule that fired when no truck was assigned before the dispatch cut-off is gone as a separate rule. PB-11 now reads: a released trip has no vehicle confirmed against it as the dispatch cut-off approaches, whether the offer went out and nobody accepted it or no offer was made in time. Both leave the same load with no truck, so they share one rule and one owner. Consequence: the catalogue is twenty-two rules and all twenty-two are on the agreed list, so the playbook screen no longer marks anything as carried beyond it.

**VD19. Four options, not five.** The exception carries a baseline, two playbook options and one from Lana. The option dropped is the re-tender of the time-critical part of the load to a second transporter. What was traded away: it was the only option that split a load, so it was the only one landing part of a shipment inside the window and part outside, which is a genuinely different shape on the timeline. What was bought: four cards fit the row without scrolling and each can be read.

**VD20. A screen field is a value, a label, or one short line.** Anything longer is a tooltip or sits behind a Read more. Applied to the exception panel: the detection trail is a strip of three circles with the sentence behind each in a tooltip, the impact tiles carry a figure and a few words with the arithmetic in a tooltip, and an option card carries only what is true of this trip. What the playbook says about an option is the same on every exception it fires on, so it is reference material and lives in a tooltip, not on the card. This is a writing rule, not a limit on the model: the option text in the real product is written once by the team and reused.

**VD21. The option row is the hero of the panel.** The row and its timelines sit above the fold, measured rather than assumed: on a 1500 by 1000 window the options begin 554 pixels into an 867 pixel panel body. Every card is visible at once with no horizontal scrolling; the selected card is wider, dark bordered and lifted, and its lane in the timeline is the only one at full weight. The arrows move the selection rather than scrolling the row. The panel opens on the first action rather than on Doing nothing, because a reader should land on something they can do. A narrow Add an option card closes the row, where a coordinator records an option the playbook did not offer and Lana did not propose; it is also what Continuous improvement reads when it proposes a new playbook rule. The Lana summary is clamped to two lines with a Read more that opens as a layer over the band beneath, so nothing below it moves.

**VD22. The exception panel is resizable, and its option row never moves.** The panel takes its width from a variable and carries the drag handle the other ATOM tools use on their panel edge: grab it and pull, floor 680 pixels so the option row stays readable, ceiling the window less 80 so the queue behind stays visible. Default width is now 980 pixels rather than 820. Every option card holds one fixed height, so choosing a different option no longer pushes or pulls the content below it: measured at 236 pixels on all four selections. The option lanes carry more space between them. The arrows step the selection, and so do the left and right keys while an exception panel is open; the Add an option card is not part of the cycle.

**VD23. The option timeline starts ninety minutes before now, not at the dock-out.** The journey already travelled is identical on every option, so drawing all nine hours of it spent two thirds of the width saying nothing. The axis now runs from ninety minutes before now to three hours past the close of the receiving window. A break mark at the left edge, with the departure time in its tooltip, says the drawing skips the earlier journey rather than pretending it did not happen. The caption under the heading is gone: what solid, striped, the green band and the red line mean now sits in the heading tooltip. The first and last axis labels are pinned inside the track so neither is cut off.

**VD24. Version tags match filenames, and a screen field never strands its tooltip.** The on-screen build tag carries the same number as the file: `YCH_TCT_SPVB_v10.html` reads v0.10. The information icon is glued to the word before it, so a line break can never leave it alone on a line of its own; checked by measuring every icon in the panel against the line of the text preceding it. On-screen labels are shortened where the full wording can live in the tooltip instead: the detection strip now reads Departed Hóc Môn, Speed dropped on Route 1, ETA crossed the window.

**VD25. The playbook editor is sentence rows, an option list and a scorecard, on one panel.** A rule is three things and they need three editors, but they are one thought, so they sit behind a segmented control in the same panel and nothing navigates away. The trigger is a list of conditions, each read as a sentence built from dropdowns, with one all-or-any control rather than hand-nested brackets; a rule that needs nesting is two rules. Every threshold is a chip pointing at the parameter register, so a number is never buried inside a rule. Below the rows, the rule is restated in plain English, because a supervisor approving a change should read English rather than a form. Industry practice consulted first: the documented rule builder pattern is a list of smart mini-forms that change with the rule type, with a single match-all or match-any control; spreadsheet-shaped editors are what non-technical authors are given elsewhere, but our twenty-two rules watch different feeds and would leave most cells empty. General-industry patterns, not client measurements.

**VD26. Test before save, and approval after it.** A rule cannot be saved until it has been run against the record: the editor reports how many exceptions it would have raised today and over thirty days, and lists the trips. Saving then sends the rule to a supervisor for approval, which is the workflow to confirm in workshop W4. Next phase: backtesting proper, the same run over three months and over the last ten exceptions of the type, showing what the options and the recommendation would have been each time and what the coordinator actually did.

**VD27. A recommendation is a scored shortlist, and its numbers are computed, not piped.** The recommendation editor is a pool, a set of exclusions, and weights that must total 100. The metrics behind it (on-time arrival, on-time delivery, damage and returns, share of trips given) are derived by the tower from milestones, returns records and acceptance events; they are not fields the pipeline delivers, so they belong to the KPI layer and to Advanced Analytics, not to the data contract. Some scores exist in no stored table and are computed only when the exception fires: spreading work across transporters is the worked example. On weights, there is no industry standard. Published examples differ, one common starting structure being on-time delivery 35 per cent, tender acceptance 30, claim rate 20 and committed volume 15, and the sources that publish such sets describe them as illustrative starting points to be set by business impact and agreed with the carrier-facing team. The tower therefore shows the weights and lets the client set them rather than asserting a set. Two refinements worth adopting later: score per lane rather than only per carrier, and weight recent performance more heavily than old.

**VD28. Client-agnostic as a standing aim.** The product should carry as little of one client's shape as possible. Where a client's operation differs, the difference should be something a user sets rather than something CEL rebuilds: thresholds, options, recommendations and their weights are already in that category through the editor. The open case is the milestone sequence itself, where truck queue in matters in Vietnam and did not in the previous scope. A milestone cannot simply be switched on, because something has to record it, so the configurable unit is the pair of a milestone and the feed that carries it. To design, not yet built.

**PB-P19, the worked threshold for the editor.** Truck late against its planned ETA before the gate exception is raised, 4 hours, measured to whichever of truck queue in and truck checked in is recorded first. Written with Pierre on 28 August 2026 as the rule the editor is demonstrated on, used by PB-16. An assumption, not agreed with YCH.

**VD29. Every rule carries an owning role and an audience list.** Who owns an exception and who can see it are properties of the rule, set once and inherited by every exception it raises. The owner is a role, not a person, so a rule survives a leaver: control tower coordinator, warehouse supervisor at the site, transport supervisor or transport planner. Beside it sits an escalation, to a second role after a number of minutes unopened. Visibility is a list of audiences, each marked internal or external, and every rule starts internal: an exception a transporter can read changes what a coordinator will write in it, so external visibility is a deliberate choice per rule. Rules a transporter must act on are the exceptions to that default. Industry practice consulted first: role hierarchies bolted on after the wireframes are approved are a common cause of enterprise applications failing adoption, and roles, permissions and approval chains are information architecture to settle before screens are drawn. General-industry patterns, not client measurements. The roles and audiences themselves belong in an administration screen, not built in this version, where they are defined once for the whole tower.

**VD30. The Playbook page measures the operation, not our progress.** The tiles are exceptions raised in 30 days, share closed inside the decision deadline, median time from raised to decided, and the type that fires most. How much of the playbook is written, and how many thresholds are still assumptions, is a Blueprint fact and now sits in one line under the page title, removable at go-live. The two tables are one: every rule in a single list grouped by journey stage, with columns for what it raises, what it watches, the owning role, the audiences, whether options are prefilled and how often it fired. Written and unwritten rules are the same object at different maturity, and a stage where nothing is written now stands out.

**VD31. One list, two views, and the panel is the editor.** The same page switches between by rule and by parameter. From a rule, the thresholds it uses are chips that open the parameter; from a parameter, the panel lists the rules that use it. Neither is a second table. Reading a rule and changing it are the same task, so the rule panel is the editor: a header carrying the code, the stage, the exception, the owning role and the firing count, then five tabs, Trigger, Ownership, Options, Recommendation and Test. The Open the editor button is gone.

**VD37. Who builds the execution modules differs by country.** In Vietnam, execution modules 3, gate, staging and dock, and 4, loading, are developed by Y3. In Indonesia the same modules come from MileApp (Pierre, 29 August 2026, from the client meeting). Consequence: the data contract records the builder per feed rather than one builder per module, and nothing in the tower may assume a single source across both countries. The mockup already tags blocks 3.x and 4.x as Y3 and the rest as MileApp, which is correct for Vietnam and will need revisiting when the product is re-skinned for FFI.

**VD38. The user list, as agreed with YCH.** Four audiences, replacing the four-role list this file carried before:
- **Control tower operator**, the main user. Merges the transport planner and the warehouse planner into one cross-functional, channel-dedicated role responsible for operations end to end.
- **Warehouse and transport supervisors and managers.** Have access and receive notifications of exceptions.
- **YCH country general manager.** A national dashboard, aggregated across clients rather than per shipper.
- **Shipper users.** Limited access, end to end order visibility only. SPVB in Vietnam, FFI in Indonesia. Whether SPVB has this access in Release 1 is open.

**VD39. The seven KPIs, as agreed.** Throughput, orders and volume per day and week by channel and site (capacity). Order lead time, confirmed to delivered as a distribution rather than an average, by channel (speed). Truck turnaround time, gate-in to gate-out per truck (asset utilisation). OTIF by channel, on time in full by MT, GT, DC transfer and export (reliability). POD pending or missing, deliveries without a verified proof of delivery, aged (cash). Trucks allocated against committed, the supply gap (transporter). Trips with actual arrival later than ETA, per transporter and lane (transporter). Targets are not set for any of them and must not be invented.

**VD40. Client-agnostic design is a requirement, not an aspiration.** The tower is built for SPVB in Vietnam and must deploy to the other two SPVB warehouses YCH operates, then to other shippers and other countries starting with FFI in Indonesia. Where an operation differs, the difference must be something a user sets rather than something CEL rebuilds: thresholds, rules, options and recommendation weights through the playbook editor; roles and audiences through an administration screen; and, the hard case, the milestone sequence itself, where the configurable unit is the pair of a milestone and the feed that carries it, since a milestone cannot exist without something recording it. Vocabulary follows the same rule: the term supply point is retired because it was FFI vocabulary, and local distribution centres are called DCs.

**New parameters, both assumptions.** PB-P15, warning when a truck stands between queue in and checked in for more than 45 minutes. PB-P16, exception at 180 minutes. They join the parameter table alongside PB-P9 to PB-P14 and are workshop-movable like the rest. Both measure the yard wait, which is now a sequenced queue under VD6, so a truck exceeding PB-P15 while holding queue number Q1 is a different signal from one exceeding it at Q6: the first says the gate is blocked, the second says the queue is simply long.

**VD41. The transporter is not an audience of a playbook rule.** Decision: the audiences on a rule are the four agreed users only, control tower operator, supervisors and managers, YCH country general manager, and SPVB the shipper. The transporter is not among them. Traded away: the internal and external marking from VD29 loses its only external case in Release 1, so every rule is internal and the distinction is inert until an administration screen introduces it. PB-11, no transporter accepts the trip or none is assigned before the cut-off, is a rule whose subject is a transporter who has not acted, and it can be read inside YCH but cannot be shown to that transporter. Revisit when transporter-facing notification is scoped. Decided by Pierre, 2 September 2026.

**VD42. The tower carries its own typography and not its own map tiles.** Decision: both font families are embedded in the mockup as base64 faces, so the file makes no network call for type. Traded away: the file grew from 853 KB to 1,449 KB, about 70 per cent. In exchange the interface renders identically on a client network that blocks unfamiliar domains. Leaflet and the basemap tiles stay external in the master, so a network-blocked room still loses the map. The ATOM import repoints Leaflet to a local vendored copy, so the live page does not have that problem. Note: DM Sans has no Vietnamese subset, so the accented letters in Truong Phat Van Tai JSC and Song Than render from Plus Jakarta Sans through the body fallback added in v0.21. Decided by Pierre, 2 September 2026.

## V6. Exceptions and KPIs

The 22-exception catalogue of D73 carries unchanged in definition: nothing in it was geography-bound. Two content notes for the mockup pass: the long-haul exception panel that previously argued from a sea leg with a computed arrival now argues from the north road lane, with GPS lost as the emphasised feed gap and the rail and coastal alternatives named in the tooltip only; and the queue stage adds no 23rd exception in v1, because PB-P15 and PB-P16 cover it inside the existing warning and exception model. The 7 KPIs of D74 item 4 carry unchanged; OTIF stays split at two levels per D67.

## V7. Decision inheritance register

Carried unchanged, by reference to the parent file: the doctrine pair (sees and decides; read-only tower, humans act, D65), the tool set CT1 to CT6 and E1 to E6 (D40, D23), the two-layer architecture (D22), the milestone sequence and its definitions (D84 to D88, with VD5 and VD6 above), the thresholds and closure rules (D35, D36, PB-P1 to PB-P14), the AI decisions (D76 to D80), the plan and hierarchy decisions (D52 to D61), the reconciliation outcomes (D63 to D75), and the channel model MT, GT, SP.

Re-anchored to the new geography, structure kept: D18 the flow, D19 the shuttle, D20 the dock switch, D37 no relay (all in V2).

Retired or re-opened: the parent file's site facts and capacities (its C1 and C14 numbers do not transfer; the floor-is-the-constraint argument is kept as an argument shape with every number Invented); the Indonesian port, ferry and sea-lane material, including the drawn pilotage channels (D62's sea content) and the port research section, replaced by VB1; the working assumption "no GPS or telematics live today", which was made for the previous country and must be re-asked for YCH Vietnam; and every reference to the previous shipper, replaced by SPVB or by the unnamed shipper-side role where the person is not yet known.

## V8. Assumptions to verify, and the questions for YCH

The question list for the next YCH meeting. Everything V2 to V6 assumes is asked here.

Network and sites
1. Answered in part at the scoping meeting (V10): three YCH-operated, SPVB-exclusive warehouses, DOP and OPMT / Sóng Thần in Ho Chi Minh City and one in Bắc Ninh, with one HCM warehouse first. Still open: which HCM warehouse is first, and which SPVB plants feed each warehouse.
2. Is there an in-plant master DC plus offsite DC pattern, or a different structure? Who owns the staging floor and loading at each site?
3. Docks and staging lanes per site, stated rather than assumed.

Flows and lanes
4. Plant to DC shuttles? DC to DC transfers? Does YCH run primary transport only, or also MT and GT last mile?
5. How do volumes move south to north (Ho Chi Minh City to Hanoi or Bac Ninh): road, coastal sea via Hai Phong, or rail via the Song Than railhead? Contractual transit times per lane?
6. Any export flow, and through which port (Cat Lai, Cai Mep)?
7. Returnable packaging: beverages mean returnable bottles, crates and pallets. Is reverse logistics in scope, and does that change milestone 13, return order received, currently Release 2?
8. Operating constraints that shape delivery windows: city truck bans and hours in Ho Chi Minh City and Hanoi, weight limits on the lanes used.

The queue, milestone 4
9. What is truck queue in physically at an SPVB site: where it is recorded, what triggers it, typical durations, and whether the coordinator sequences the yard (this confirms or overturns VD6).

Systems and data
10. MileApp in Vietnam: deployed today at the SPVB scope, or to be rolled out? Same Y3 team, and does Mrs. Lee Kiow lead the implementation there too? (The name is now settled: Mrs. Lee Kiow, per Pierre, 28 August 2026, superseding the earlier Lee Kiao and Lee Kyeok spellings.)
11. SAP: same instance as the previous scope or a separate SPVB instance? What gate and dock systems exist at the Vietnamese sites?
12. Any GPS or telematics live in YCH Vietnam today?

People and client relationship
13. Who are the coordinator and supervisor equivalents in Vietnam (the two user types of D31)? Who is the SPVB-side operations expert, the role Lilian held previously?
14. Does CEL interact with SPVB directly, and who from SPVB or YCH Vietnam sits in the criteria workshops and UAT?
15. May the SPVB name appear on client-facing material, and to which audiences?

Commercial and plan
16. Does the country change touch the proposal text and dates being signed, the eight-workshop plan, or the five Blueprint deliverables? Do the 22 exceptions and the 7 KPIs carry unchanged into the Vietnam scope?

---

## V11. The build machinery, and the mockup record

State rather than rules. What is true of the tooling around this project, and how the mockup has moved.

**The importer tells the SPVB build apart by its title.** `scripts/import-ych-mockup.mjs` recognises this build from its `<title>`, which reads `ATOM TCT SPVB`. The plain TCT rule excludes PLAN and SPVB with a negative lookahead. Renaming the title would make an SPVB build match the Indonesia rule and overwrite `public/data/ych/ych_tct.html`, which is a different client's tool. The title is therefore load bearing and must not be changed without changing the importer in the same edit.

**The mockup guide is stale and needs rewriting rather than patching.** `docs/ych-mockup-guide.md` documents two tools where the importer now knows six. It never mentions SPVB. It describes the fonts as fetched when they are embedded. Its version table still says v13. Anyone reading it today would be misled on every one of those points.

### The mockup record, v0.17 to v0.24

Taken from the changelog in `05. Product/00. Global/Mockup/README.md`, which is the record of what each version did.

| Version | Date | What it did |
|---|---|---|
| v0.24 | 2026-09-02 | Current master. Every field in the playbook rule panel shares one control style. The Match, Owner when it fires and Escalates to dropdowns, and the option and weight boxes, had three styles and the browser default between them. They now share one background, border, radius and padding, with only size and weight varying by job. The per cent signs beside the recommendation weights no longer wrap. |
| v0.23 | not released | Built and kept in Downloads. It never reached the drive, so there is no record of what it contained. |
| v0.22 | 2026-09-01 | Both font families embedded as base64 woff2, 21 faces, replacing the Google Fonts links from v0.21. File grew from 853 KB to 1,449 KB and makes no network call for type. |
| v0.21 | 2026-09-01 | Fonts were declared but never loaded, so both families rendered only where they happened to be installed. Added the Google Fonts stylesheet and put Plus Jakarta Sans behind DM Sans in the body stack. |
| v0.20 | 2026-08-31 | Repair only. The display font token read `"Plus Ho Chi Minh City Sans"`, which is not a font, so everything on `var(--font-display)` fell back to the system face. Fixed in ten places. Produced by renaming v0.19 in place, so v0.19 no longer exists as a file. |
| v0.19 | 2026-08-31 | Playbook rule side panel rebuilt as a data sheet. Each feed shows the fields the rule reads. Audiences reduced to the four agreed users, the transporter removed, which is VD41. Keyboard navigation across rules and stages. Options in the editor became editable, reorderable and removable. |
| v0.18 | 2026-08-31 | The changelog records only that it was superseded by v0.19 within the day and not kept on the drive. What it changed is not recorded anywhere. |
| v0.17 | 2026-08-31 | The changelog records only that it was superseded and not kept on the drive. What it changed is not recorded anywhere. |

**Two of these have no surviving content.** v0.20 was pruned from Working when v0.24 was released and never reached the site, so it exists only in Google Drive's trash. v0.16 was also pruned but did reach the site, at commit `da2cf0f`, so its content is recoverable from git. v0.17, v0.18 and v0.23 were never on the drive at all.

# Part 2. Knowledge Base

## VB1. Vietnamese domestic north-south freight practice (web research, 27 August 2026)

- The north-south axis is about 1,600 to 1,700 km between Ho Chi Minh City and Hanoi, and it is the country's dominant freight corridor. The North-South Expressway East, 2,063 km from Lang Son to Ca Mau, is under construction with completion expected across 2025 and 2026; road traffic on the corridor is described in logistics sources as chronically congested.
- Rail is a working alternative: Nippon Express Vietnam launched a daily north-south rail service in 2024 covering the 1,700 km between Hanoi (Yen Vien station) and Ho Chi Minh City (Song Than station) in about 48 hours, and Vietnam Railways runs multiple daily freight trains on the line. Song Than station sits in the same district as the YCH-Protrade DistriPark, which makes the rail alternative unusually close to the assumed origin.
- Domestic coastal container shipping runs Ho Chi Minh City to Hai Phong in about 4 to 5 days port to port, plus about a day to Hanoi; Hai Phong is the northern gateway, about 105 km from Hanoi, serving Bac Ninh among others. One trade source states there is no efficient coastal highway for heavy containers, which is why the mode choice on the north lane is a real question rather than a formality.
- Southern ports are Cat Lai and Cai Mep; they carry the export scenario if YCH confirms one.

General-industry patterns, not client measurements. Used to draw the v1 lanes and to phrase question 5; every transit time attached to a lane remains an assumption.

## VB2. SPVB and YCH Vietnam profiles (web research, 27 August 2026)

- Suntory PepsiCo Vietnam Beverage, the Suntory and PepsiCo joint venture, runs six factories: Hoc Mon (Ho Chi Minh City), Can Tho, Quang Nam, Bac Ninh, Dong Nai, and the newest plant at Huu Thanh Industrial Park, opened 2026 and named the Tay Ninh Plant after the 2025 provincial merger of Long An into Tay Ninh. The Tay Ninh Plant carries SPVB's first fully automated warehouse (about 43,000 pallets), which is why it was not chosen as the mockup anchor: an automated shipper-owned warehouse undercuts the premise that YCH runs the floor. Brands include Pepsi, 7Up, Sting, Mirinda, Mountain Dew, Revive, Aquafina, TEA+ and Lipton.
- YCH Vietnam: present since 2009; the YCH-Protrade DistriPark, a joint venture with Protrade Corporation, sits at Binh Hoa Ward, Thuan An (administratively Ho Chi Minh City since the 2025 merger of Binh Duong), behind the Song Than and Vietnam Singapore industrial parks, about 17 km from Tan Son Nhat airport, LEED-certified, with a stated capacity above 50,000 pallets and a growing presence in Hanoi. YCH Vietnam services F&B customers.

## VB3. Carried and caveated knowledge

Carried unchanged from the parent file's knowledge base: B8 control tower interface patterns, B9 the warehouse boundary, B11 shipment-level detection versus network-level management, B12 delay cause taxonomies. Carried with a caveat: B10 and B14, the MileApp profile and API findings, remain the platform record, and the caveat is that MileApp's public references are Indonesian and no Vietnam deployment was found in public sources as of 27 August 2026; its presence at the SPVB scope is a Blueprint verification item (question 10). The Indonesian port and ferry research is retired, replaced by VB1.

## Sources

Added 27 August 2026: Suntory PepsiCo Vietnam plant coverage (Vietnam News, The Investor, VIR, VietnamPlus); YCH Vietnam and YCH-Protrade DistriPark pages (ych.com, Binh Duong government and construction records); North-South Expressway East and Vietnam Railways references (Wikipedia); Nippon Express Vietnam north-south rail service announcement (nipponexpress-holdings.com); domestic coastal shipping transit statements (thamico.com, seafreightgo.com); MileApp public site and pricing pages (mile.app). General-industry patterns, not client measurements.
