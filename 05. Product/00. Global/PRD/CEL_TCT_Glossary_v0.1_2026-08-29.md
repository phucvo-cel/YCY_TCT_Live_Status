# Glossary

CEL, YCH Transport Control Tower, SPVB Vietnam. Version 0.1, draft, 29 August 2026. Owner: Pierre.

One word, one meaning. This list exists so that CEL, YCH, Y3 and SPVB use the same words for the same things. It will be submitted to the client for validation; until then every entry is a proposal.

How to read the status column: **agreed** means the client has confirmed it; **proposed** means CEL is using it and it has not been put to the client; **to settle** means the term is genuinely ambiguous today and needs a decision.

---

## The load and its documents

| Term | Meaning | Status |
|---|---|---|
| Order | What the shipper asked for: a quantity of goods for one ship-to, with a requested date and a receiving window. Lives in the order backbone. | proposed |
| Trip | One vehicle movement from one origin to one or more destinations, with its own milestones. The unit the tower tracks. | proposed |
| Load | The goods physically on a vehicle for a trip. One trip carries one load; one load can serve several orders. | proposed |
| Shipment | Not used on its own, because it means the document to some people and the goods to others. Say order or load. | to settle |
| Line | One product on an order, with its quantity. A part refusal refuses lines, not the order. | proposed |
| Case | The selling unit counted on a load, for example a case of 24 bottles. | proposed |
| Pallet | The handling unit. A load is counted in cases and in pallets, and the two are not interchangeable. | proposed |
| Return | Goods coming back after a refusal or a damage record, raised as its own order. | proposed |

## Places

| Term | Meaning | Status |
|---|---|---|
| Plant | The shipper's production site. SPVB owns them. | proposed |
| Warehouse | A building YCH operates for the shipper. In Vietnam: DOP, OPMT and Bắc Ninh. | agreed with YCH at the scoping meeting |
| DOP | The in-plant warehouse in Ho Chi Minh City, about 25 km from OPMT. | agreed |
| OPMT, also called Sóng Thần | The on-premises modern trade warehouse, which also serves as the Ho Chi Minh City DC. | agreed |
| DC | A distribution centre holding stock for onward delivery. Used for local DCs the tower ships to. Replaces the word supply point, which was FFI vocabulary. | proposed |
| Ship-to | The place a delivery is made to: a retailer DC, a distributor, or a DC. The customer of the shipper, not of YCH. | proposed |
| Yard | The area on site where a truck waits before the gate processes it. Where truck queue in happens. | proposed |
| Gate | The controlled entry to the site. Where truck checked in happens. | proposed |
| Staging lane | Where a finished pick stands while it waits for a truck and a dock. | proposed |
| Dock | The door a truck loads at. | proposed |

## People and organisations

| Term | Meaning | Status |
|---|---|---|
| Shipper | The company whose goods move. SPVB in Vietnam, FFI in Indonesia. | proposed |
| Transporter | The company that carries the load. Also called carrier in some documents; use transporter. | proposed |
| Driver | The person driving. Scored separately from the transporter. | proposed |
| Control tower operator | The main user: cross-functional, channel-dedicated, responsible for operations end to end. Merges what used to be the transport planner and the warehouse planner. | agreed |
| Supervisor | Warehouse or transport supervisor, who owns exceptions on their site or their lanes and receives notifications. | proposed |
| Country general manager | Reads the national dashboard, aggregated across clients. | proposed |

## Time and the journey

| Term | Meaning | Status |
|---|---|---|
| Milestone | A recorded moment in a trip's journey. Thirteen of them, from order release to return. A milestone exists only when something records it. | proposed |
| Truck queue in | Milestone 4. The truck is on site and waiting; the gate has not processed it. Applies in Vietnam. | proposed |
| Truck checked in | Milestone 5. The gate has processed the truck and let it through. | proposed |
| ETA | Estimated time of arrival, computed. Always shown as computed, never as a fact. | proposed |
| ATA | Actual time of arrival, observed from a feed or entered by a person. | proposed |
| Receiving window | The period during which a ship-to will accept a delivery. Missing it is not the same as arriving late. | proposed |
| Deadline | On an exception, the last moment a decision still changes the outcome. Not the delivery time. | proposed |
| Dispatch cut-off | The last moment a trip can still be released for the day. | proposed |

## The tower itself

| Term | Meaning | Status |
|---|---|---|
| Exception | Something that has gone wrong or is about to, raised by a rule, owned by a role, carrying a deadline. Twenty-two types. | proposed |
| Warning | A threshold passed that is worth showing but does not yet carry a deadline or an owner. Below the exception line. | proposed |
| Rule | What turns a feed into an exception: what it watches, what makes it fire, who owns it, who sees it, and what options it prefills. Coded PB-01 upward. | proposed |
| Parameter | A threshold or standard a rule runs on, held once in the register and never written inline. Coded PB-P1 upward. | proposed |
| Option | A course of action the tower puts in front of the operator, always carrying its origin: playbook, baseline or proposed by Lana. | proposed |
| Recommendation | A ranked shortlist the tower produces inside an option, from a pool, some exclusions and weighted scores. | proposed |
| Baseline | The option of doing nothing, shown only where the exception has an expiring deadline and a consequence that lands by itself. | proposed |
| Cause | Why an exception happened, chosen from a fixed taxonomy when it is closed. Required. | proposed |
| Resolution record | What was decided on an exception, by whom, with the cause and the note. The material continuous improvement reads. | proposed |
| Observed | A value read from a feed or entered by a person. | proposed |
| Computed | A value the tower calculated, always saying what it was computed from. | proposed |
| Playbook | The set of rules and the editor where they are written. | proposed |
| Side panel | The panel that opens over a screen to show a trip, an exception, a rule or a parameter. Not a drawer. | proposed |

## Words we deliberately do not use

| Word | Why | Say instead |
|---|---|---|
| Shipment | Means the document to some and the goods to others | Order, or load |
| Supply point | FFI vocabulary, not YCH's or SPVB's | DC |
| Drawer | Another word for the same panel | Side panel |
| Final | On a filename, it always turns out not to be | The version number and date |
| Tool | Used for both the tower's modules and the execution systems | Module, for the tower; system, for execution |

## Acronyms

Every short form used in this project, in one place. If an acronym is not here, spell it out.

### Client, shipper and partners

| Acronym | Stands for | What it is |
|---|---|---|
| YCH | YCH Group | The 3PL, our client. Runs the warehouses and the transport |
| SPVB | Suntory PepsiCo Vietnam Beverage | The shipper in Vietnam. Beverages only, not the snacks entity |
| FFI | Frisian Flag Indonesia | The shipper in Indonesia, the previous scope and the next deployment |
| Y3 | Y3 Technologies | YCH's technology arm. Builds execution modules 3 and 4 in Vietnam |
| MileApp | MileApp | The transactional platform. Builds modules 3 and 4 in Indonesia and the rest in both |
| CEL | CEL Consulting | Us |
| SIMCEL | SIMCEL | CEL's product arm, whose design system the mockup uses |

### Places

| Acronym | Stands for | What it is |
|---|---|---|
| DOP | Dock Operations Plant, as YCH uses it | The in-plant warehouse in Ho Chi Minh City |
| OPMT | On-Premises Modern Trade | The modern trade warehouse, also called Sóng Thần, which also serves as the HCM DC |
| HCM | Ho Chi Minh City | |
| DC | Distribution centre | A site holding stock for onward delivery. Replaces supply point |
| RDC | Retailer distribution centre | A modern trade customer's own DC, a ship-to for us |

### The product

| Acronym | Stands for | What it is |
|---|---|---|
| TCT | Transport Control Tower | The product |
| CT1 to CT6 | Control Tower modules 1 to 6 | Ours: visibility, exception handling, continuous improvement, AI integration, data pipeline, guarded execution |
| CT1.1, CT2.2 and so on | Control Tower sub-modules | The level a pod works at. Always written with the CT prefix so they cannot be read as execution blocks |
| E1 to E6 | Execution modules 1 to 6 | The client's side: order backbone, route and load optimization, carrier engagement, outbound staging assignment, gate and dock execution, delivery execution |
| PB-01 to PB-23 | Playbook rule | An exception rule. Always written with its label: PB-16, truck arrives late at the gate |
| PB-P1 to PB-P19 | Playbook parameter | A threshold or standard a rule runs on. Always written with its label: PB-P19, truck late against its planned ETA |
| PRD | Product requirements document | What the tower is for, and what is in and out of Release 1 |
| WoW | Ways of working | How we write, name, approve and release documents |

### Operations

| Acronym | Stands for | What it is |
|---|---|---|
| OTIF | On time in full | Split at two levels: blended, then on-time and in-full apart |
| ETA | Estimated time of arrival | Computed, never shown as a fact |
| ATA | Actual time of arrival | Observed |
| POD | Proof of delivery | Captured at the ship-to. Captured is not the same as verified |
| ePOD | Electronic proof of delivery | POD captured on a device rather than on paper |
| MT | Modern trade | Retailer distribution centres |
| GT | General trade | Distributors |
| SO | Sales order | |
| DO | Delivery order | |
| STO | Stock transfer order | A movement between two of the shipper's own sites |
| SKU | Stock keeping unit | |
| KPI | Key performance indicator | The seven agreed ones are in the KPI register |
| WMS | Warehouse management system | |
| TMS | Transport management system | |
| ERP | Enterprise resource planning system | SAP, in this operation |
| GPS | Global positioning system | The position feed behind in-transit visibility |
| UAT | User acceptance testing | |
| RACI | Responsible, accountable, consulted, informed | |

---

**To fill in with YCH and SPVB.** The Vietnamese equivalents of the operational terms, so the interface and the training material agree with what people say on the floor. Also whether YCH uses different words for yard, gate, staging lane and dock at DOP and OPMT.
