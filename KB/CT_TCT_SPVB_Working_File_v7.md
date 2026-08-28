# YCH Transport Control Tower, SPVB Vietnam

## Working File

Project reference, version 1, opened 27 August 2026. This file covers the Transport Control Tower for the road transport operation YCH runs for Suntory PepsiCo Vietnam Beverage (SPVB) in Vietnam. Client contact: Sardar Ahmed.

**Lineage.** This file is forked from `CT_TCT_Working_File_v14.md`, which carried the same engagement under its previous scope (Indonesian operation, dairy shipper). On 27 August 2026 YCH informed CEL that the country is Vietnam and the shipper is Pepsi, confirmed by Pierre as SPVB, the beverage entity only. The parent file is retired as the geographic record and stays untouched; its decisions D1 to D88 are inherited here by reference, with the exceptions listed in V7. All programme dates, teams, streams, commercial structure and doctrine carry over unchanged. New decisions in this file carry the VD prefix so the two series never collide.

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
| Supply point Can Tho | Local DC, Mekong Delta | Invented | 10.034, 105.788 |
| Supply point Nha Trang | Local DC, south central coast | Invented | 12.249, 109.190 |
| Supply point Quy Nhon | Local DC, south central coast | Invented | 13.782, 109.219 |
| Supply point Hanoi | Local DC, north | Invented | 21.028, 105.834 |
| Supply point Hai Phong | Local DC, north coast | Invented | 20.844, 106.688 |
| Supply point Bac Ninh | Local DC, north, near the SPVB Bac Ninh plant | Invented | 21.107, 106.089 |

Administrative naming follows the post-merger map of July 2025: Binh Duong is now part of Ho Chi Minh City, so Thuan An is written as "Thuan An, Ho Chi Minh City" wherever an address appears, and the province list behind the supply points uses the 34-province map.

**VD3. SPVB is named on screen.** Site labels, order headers and the shipper field carry "SPVB", with "Suntory PepsiCo Vietnam Beverage" spelled out once on the network screen. Rationale: matches the precedent of naming the client on the parallel pitch, and YCH itself named the shipper. If Sardar restricts the audiences that may see the name, the string is centralised and swaps in one edit.

**VD4. The two-warehouse structure is kept.** Master DC in-plant at Hoc Mon, offsite YCH DC at Thuan An, a shuttle between them modelled as its own trip (inheriting D19), and the dock screen switching one site at a time (inheriting D20). The whole structure is tagged Assumed: it mirrors the previous scope's pattern and is kept so the screens survive intact, not because YCH has described the Vietnamese operation. Straight-line distance between the two sites is about 13 km; the road leg is assumed at 25 km and 50 minutes.

**The flow (inheriting D18, re-anchored, all Assumed).** The Hoc Mon plant feeds MDC Hoc Mon and YCH DC Thuan An. MDC Hoc Mon sends overflow to Thuan An and Thuan An does not send back. Thuan An ships onward to the supply points as transfers (channel SP) and to customers as MT and GT deliveries around greater Ho Chi Minh City. YCH manages every facility to facility transfer; YCH does not manage every last mile. No relay between supply points (inheriting D37): the north is served direct on the long lane.

**Capacities, all Invented until stated.** MDC Hoc Mon: 23 outbound docks, 15 staging lanes. YCH DC Thuan An: 12 outbound docks, 8 staging lanes. The Hoc Mon figures are the ones the mockup's floor arithmetic already runs on, carried over from the previous scope where they were the one stated capacity; here nothing is stated, so both sites are Invented and the first question in V8 asks for both.

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

**New parameters, both assumptions.** PB-P15, warning when a truck stands between queue in and checked in for more than 45 minutes. PB-P16, exception at 180 minutes. They join the parameter table alongside PB-P9 to PB-P14 and are workshop-movable like the rest. Both measure the yard wait, which is now a sequenced queue under VD6, so a truck exceeding PB-P15 while holding queue number Q1 is a different signal from one exceeding it at Q6: the first says the gate is blocked, the second says the queue is simply long.

## V6. Exceptions and KPIs

The 22-exception catalogue of D73 carries unchanged in definition: nothing in it was geography-bound. Two content notes for the mockup pass: the long-haul exception panel that previously argued from a sea leg with a computed arrival now argues from the north road lane, with GPS lost as the emphasised feed gap and the rail and coastal alternatives named in the tooltip only; and the queue stage adds no 23rd exception in v1, because PB-P15 and PB-P16 cover it inside the existing warning and exception model. The 7 KPIs of D74 item 4 carry unchanged; OTIF stays split at two levels per D67.

## V7. Decision inheritance register

Carried unchanged, by reference to the parent file: the doctrine pair (sees and decides; read-only tower, humans act, D65), the tool set CT1 to CT6 and E1 to E6 (D40, D23), the two-layer architecture (D22), the milestone sequence and its definitions (D84 to D88, with VD5 and VD6 above), the thresholds and closure rules (D35, D36, PB-P1 to PB-P14), the AI decisions (D76 to D80), the plan and hierarchy decisions (D52 to D61), the reconciliation outcomes (D63 to D75), and the channel model MT, GT, SP.

Re-anchored to the new geography, structure kept: D18 the flow, D19 the shuttle, D20 the dock switch, D37 no relay (all in V2).

Retired or re-opened: the parent file's site facts and capacities (its C1 and C14 numbers do not transfer; the floor-is-the-constraint argument is kept as an argument shape with every number Invented); the Indonesian port, ferry and sea-lane material, including the drawn pilotage channels (D62's sea content) and the port research section, replaced by VB1; the working assumption "no GPS or telematics live today", which was made for the previous country and must be re-asked for YCH Vietnam; and every reference to the previous shipper, replaced by SPVB or by the unnamed shipper-side role where the person is not yet known.

## V8. Assumptions to verify, and the questions for YCH

The question list for the next YCH meeting. Everything V2 to V6 assumes is asked here.

Network and sites
1. Which SPVB sites are in the scope YCH operates: all six plants (Hoc Mon, Can Tho, Quang Nam, Bac Ninh, Dong Nai, Tay Ninh) or a subset? Which warehouses does YCH run for SPVB: in-plant, offsite, both? Is the Thuan An DistriPark part of this scope?
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
