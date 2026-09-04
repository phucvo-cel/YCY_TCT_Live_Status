# Transport Control Tower, SPVB Vietnam
## Product requirements document

CEL for YCH. Version 0.2, draft, 29 August 2026. Owner: Pierre.

This document says what the tower is for, who it serves, what is in Release 1 and what is deliberately out. It does not describe screens, which are the mockup; it does not hold scenarios, which are the specifications; it does not hold thresholds or field lists, which are the registers; and it does not hold decisions with what was traded away, which are the working file. Every specification should be able to point at a section here for its "why".

Status: assembled from the working file, the proposal, and the YCH scoping alignment meeting of 28 August 2026. Everything marked **[to confirm]** is not settled and must not be shown to the client as agreed.

Change from v0.1: the user list replaced with the one agreed with YCH; the seven KPIs replaced with the agreed set; local distribution centres called DC rather than supply point, which was FFI vocabulary; the client-agnostic aim written down; two paragraphs removed as out of place here.

---

## 1. What the tower is for

YCH runs transport and warehousing for Suntory PepsiCo Vietnam Beverage. Loads move from SPVB's plants through YCH-operated warehouses to modern trade retailer distribution centres, general trade distributors and local DCs across the country.

Today, the people who could still change an outcome usually learn about a problem after it has become one. A truck that will miss a receiving window is discovered when the distributor calls. A staging lane blocked by a finished pick is discovered when the next wave has nowhere to go. A delivery without proof is discovered at the billing run. In each case the information existed somewhere in the operation hours earlier, in a milestone that was recorded, a position that was reported, or a threshold that was passed, and nobody was looking at it in time.

The Transport Control Tower is the layer that looks. It reads the feeds the execution systems already produce, compares what it sees against what was planned, raises what has gone wrong or is about to, gives it to a named role with a deadline, and proposes what can be done about it. It does not replace the execution systems and it does not run the operation.

The value is time: the tower turns a problem discovered afterwards into a decision taken while it still matters.

---

## 2. Doctrine

These rules bind every screen and every rule in the product. When a specification cannot answer a question, it comes back here.

**The tower sees and decides; a person acts.** The tower reads, computes, ranks and recommends. It issues no commands into MileApp, the dock system, SAP or any other system. Where an option requires an action elsewhere, the tower names who executes it and where, and records what was decided.

**The 3PL keeps operational authority.** Nothing in the tower overrides the people running the warehouse or the transport. The tower's output is information and a recommendation, never an instruction.

**Observed and computed are never confused.** A value read from a feed and a value the tower calculated are shown differently, and a computed value always says what it was computed from. An estimate presented as a fact is a defect.

**Exceptions originate from the tower's own reading.** The tower detects from live feeds, ETA drift, carrier events and projected positions, rather than waiting for a 3PL to declare a problem.

**Every rule has an owning role and an audience.** Ownership is a role, not a person, so a rule survives a leaver. Visibility is a list, and every rule starts internal: an exception a transporter can read changes what a coordinator will write in it.

**One word, one meaning.** Where a word is doing two jobs, one of them is renamed. The glossary holds the agreed terms and is validated with the client, so CEL, YCH, Y3 and SPVB use the same words.

**The thresholds are visible and changeable.** No number is buried inside a rule. Every threshold sits in the parameter register with its status: measured, agreed, or assumption.

**The product is client-agnostic.** See section 5.

---

## 3. Who it serves

Roles, not names. The users register holds what each role needs from the tower, screen by screen; this section names them and says what their access is for.

**Control tower operator, the main user.** Merges the transport planner and the warehouse planner into one role: cross-functional, channel-dedicated, responsible for operations end to end. The exception queue, the decisions and the record are built for this person.

**Warehouse and transport supervisors and managers.** Have access, and receive notifications of the exceptions that concern them.

**YCH country general manager.** A national dashboard, aggregated across clients rather than for one shipper.

**Shipper users.** Limited access: end to end order visibility only. SPVB in Vietnam, FFI in Indonesia. **[to confirm: whether SPVB has this access in Release 1, and from when]**

---

## 4. Scope of Release 1

**In scope.**

- The thirteen-milestone journey, including truck queue in, which applies in Vietnam.
- The twenty-two exception types across the five journey stages, detected, ranked, owned and closed with a cause and a note.
- Prefilled options on the rules that have them, with every option carrying its origin.
- The three AI capabilities committed at the gate: the exception summary with prefilled options, ask the tower in plain language, and recurring cause analysis.
- Performance and the seven KPIs of section 7.
- The recommendation record: every recommendation, what the person chose, what happened next.

**Out of scope, deliberately.**

- **Guarded execution.** The tower never acts by itself in Release 1. That is CT6, Release 2.
- **Cost.** No cost model, no freight rates, no cost comparison between options. Decisions in Release 1 are about time and service.
- **The predictive exceptions**: predicted late arrival, milestone anomaly detection, dock congestion forecast. Release 2.
- **Bắc Ninh.** Only one Ho Chi Minh City warehouse is in Release 1. Y3 plan to deploy the tower to Bắc Ninh themselves and will ask CEL for support when needed.
- **Execution module 2.4 and module 6.4**, both cash-management related, excluded for Vietnam by YCH.
- **Writing into any execution system.** See the doctrine.

---

## 5. Client-agnostic by design

The tower is being built for SPVB in Vietnam, and it is not being built only for them. YCH runs three warehouses for SPVB, and the first release covers one of them; the same product must then go to the other two, and afterwards to other shippers and other countries, starting with FFI in Indonesia.

That has a design consequence, and it is a constraint rather than an aspiration. Where an operation differs between clients or countries, the difference must be something a user sets, not something CEL rebuilds. Concretely:

- **Thresholds, rules, options and recommendation weights** are set in the playbook editor by the client's own supervisors, not by us in code.
- **Roles and audiences** are defined once in an administration screen and chosen per rule.
- **The milestone sequence itself** is the hard case: truck queue in matters in Vietnam and did not in the previous scope, but a milestone cannot simply be switched on, because something has to record it. The configurable unit is therefore the pair of a milestone and the feed that carries it. To design.
- **Nothing in the product carries one client's vocabulary.** Local distribution centres are called DCs, not the shipper-specific word a previous scope used.

Where a feature can only exist for one client, it is a candidate for deletion rather than a feature.

---

## 6. The six tools

The Control Tower modules are CT1 to CT6, ours. The execution systems are E1 to E6 and the client's numbered features 1.1 to 7.2, built by others. We specify the first and cite the second.

**CT1 End to End Visibility.** What is moving, where it is, and what state it is in: trips and their milestones, the network, the yard, the staging floor and the docks, and the operational performance dashboard. Sub-modules CT1.1 Live status and CT1.2 Operational performance dashboard.

**CT2 Exception Handling.** The heart of Release 1. Detects an exception from the feeds, ranks it by deadline and exposure, gives it to a role, prefills the options where a rule is written, and records the decision with its cause. Sub-modules CT2.1 User-based exception list and CT2.2 Recommendation and resolution engine.

**CT3 Continuous Improvement.** What the record says over time: clean and unclean deliveries, performance with drill-down, the transporter scorecard by lane, recurring cause analysis, and rule and threshold proposals where the tower proposes and a person accepts. Sub-modules CT3.1 Reports and advanced analytics and CT3.2 Recommended initiatives and actions.

**CT4 AI Integration.** The layer under the three above: the Lana connection, and the recommendation record that serves all of them. Thibaud's stream.

**CT5 Data Pipeline.** The feeds, the data contract, and the KPI layer where the tower's computed measures are stored. Thibaud's stream.

**CT6 Guarded Execution.** Release 2. Where the tower would act rather than recommend, under guardrails. Deliberately empty for now, so the numbering has no hole.

---

## 7. The seven KPIs

Agreed with YCH. The KPI register holds the formulas, the sources and the status of each.

| KPI | What it measures | Definition |
|---|---|---|
| Throughput | Capacity | Orders and volume processed per day and per week, by channel and site |
| Order lead time | Speed | Confirmed to delivered, as a distribution rather than an average, by channel |
| Truck turnaround time | Asset utilisation | Gate-in to gate-out per truck; the lever behind fleet capacity |
| OTIF by channel | Reliability | On time in full by MT, GT, DC transfer and export; the customer-facing truth |
| POD pending or missing | Cash | Deliveries without a verified proof of delivery, aged; the revenue recognition blocker |
| Trucks allocated against committed | Transporter | What the client allocated against what the transporters committed; the supply gap |
| Trips with actual arrival later than ETA | Transporter | Late arrivals per transporter and per lane; time reliability, scored |

Targets are **[to confirm with YCH]** for every one of them. A tower reporting against invented targets is worse than one reporting against none.

---

## 8. Constraints and dependencies

**Who builds what, and it differs by country.** In Vietnam, execution modules 3, gate, staging and dock, and 4, loading, are developed by **Y3**. In Indonesia the same modules come from **MileApp**. The tower must not assume one source across both countries, and the data contract records the builder per feed.

**MileApp is the transactional source for the rest**, and it is not yet implemented in Vietnam. YCH and Y3 must align before kick-off.

**Readiness is uneven**, as YCH stated on 28 August 2026: transport planning, in-transit visibility and POD management are available in MileApp; transporter administration does not exist yet and needs development, potentially several weeks; dock and loading management exist as YCH or Y3 capability but may need customisation. Where a feed is not ready, the rules that depend on it are kept in the catalogue with the feed marked as pending, rather than dropped or assumed available.

**The feed ladder is the answer to readiness risk.** Every milestone can arrive three ways: an interface, a file drop, or a coordinator typing it in. A milestone with no automated feed is still a milestone; it is simply more expensive to keep true.

**Computed is not piped.** Measures the tower derives, such as on-time per driver, damage and returns, or share of trips given to a transporter, belong to the KPI layer, not to the data contract. Some are computed only when an exception fires.

---

## 9. Release and phasing

| What | When | Status |
|---|---|---|
| Vietnam implementation | September to December 2026 | Stated by YCH |
| First site live | By January 2027 at the latest | Stated by YCH |
| First scope | One Ho Chi Minh City warehouse, DOP or OPMT | Which one is **[to confirm]** |
| Then | The second HCM warehouse, then Bắc Ninh by Y3 | Stated by YCH |
| FFI Indonesia | January to March 2027, go-live April 2027 | Stated by YCH |
| Blueprint sign-off and Release 1 gate | Dates from the previous scope | **[to confirm against the new window, with Julien and Sardar]** |

The eleven-node network in the mockup is the target state, not the Release 1 state. Phasing lives here and in the working file, not as empty screens.

---

## 10. Open questions

| Question | Who answers | By when |
|---|---|---|
| Which Ho Chi Minh City warehouse is first, DOP or OPMT | Sardar, YCH | Before the Blueprint workshops |
| What truck queue in physically is at an SPVB site: where it is recorded, what triggers it, whether the operator can call trucks forward | YCH operations | Workshop on gate, dock and staging |
| Blueprint sign-off and Release 1 gate dates against the September to December window | Julien and Sardar | Before anything client-facing carries a date |
| Whether SPVB sees anything in the tower in Release 1, and what | Sardar | Before visibility rules are agreed |
| Targets for the seven KPIs | YCH operations | Blueprint |
| Who the control tower operators and supervisors are in Vietnam | YCH Vietnam | Before the criteria workshops |
| Whether any of the twenty-two rules read feeds from the excluded modules 2.4 and 6.4 | CEL, internal check | Before the workshops |
| Validation of the glossary with YCH and SPVB | Pierre with Sardar | Blueprint |

---

Sources: the working file for the decisions, doctrine, tools, milestones and exception catalogue; the YCH scoping alignment meeting summary of 28 August 2026 for the sites, phasing, module scope and readiness; the agreed user list and KPI table from the workshop material. Where this document and the working file disagree, the working file wins on facts and this document wins on framing.
