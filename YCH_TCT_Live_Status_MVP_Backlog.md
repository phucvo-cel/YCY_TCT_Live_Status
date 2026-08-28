# Live Status MVP Backlog

This backlog contains unimplemented features, requirements, tasks and defects intended for future work on `YCH_TCT_Live_Status_MVP.html`. It is a living scope and prioritisation list, not a history of completed changes.

## Logging Rules

- Use IDs in the form `LS-B###`.
- Do not reuse an ID after its item leaves the active backlog.
- Add an item only when work is intentionally deferred.
- Do not add work that will be implemented immediately.
- Keep only unimplemented work in this file.
- Refine, reprioritise, combine or split items as project needs change.
- Remove items when they are completed, cancelled or superseded.
- Capture the requested outcome, not speculative implementation detail.
- Record completed material decisions in `YCH_TCT_Live_Status_MVP_Decision_Log.md`.
- Questions and explanations do not enter the backlog.

## Items

| ID | Date | Priority | Intended change | Acceptance check | Source |
|---|---|---|---|---|---|
| LS-B002 | 2026-08-27 | High | Define the user purpose and workflow for the full order journey before redesigning it. | A user story states why a Control Tower Coordinator opens the journey, what information they seek and what decision or action the view supports. | Live Status Workshop transcript, 26 Aug 2026; explicit user notes |
| LS-B003 | 2026-08-27 | High | Show the complete end-to-end order route across all trips and transport legs. | The Order view follows the order from origin to final ship-to, distinguishes completed or current movement from future movement, and does not limit the route to the current trip. The Trip view ends at the trip destination. | Live Status Workshop transcript, 00:03:25 to 00:05:24; meeting notes |
| LS-B004 | 2026-08-27 | High | Make the map the hero element when route and location monitoring are the primary user purpose. | The relevant view gives the map the largest working area and presents it without requiring substantial vertical scrolling. | Live Status Workshop transcript, 00:12:18; explicit user notes |
| LS-B005 | 2026-08-27 | High | Compress the page vertically and move the primary content upward. | Breadcrumb, heading, perspective controls, filters and summary content use less vertical space, with related controls consolidated into one row where practical. | Live Status Workshop transcript, 00:12:18; explicit user notes |
| LS-B006 | 2026-08-27 | High | Remove the Active Orders KPI card while retaining the Orders perspective. | The Active Orders summary card is absent and the remaining content reflows without an empty space. Confirm this scope before implementation if removal of the entire Orders perspective is intended instead. | Explicit user notes, 27 Aug 2026 |
| LS-B007 | 2026-08-27 | High | Add an expandable order-content accordion for SKU and delivery details. | A user can expand an order to see SKU, product, quantity, destination and ship-to details without adding permanent columns to the compact main table. | Explicit user notes, 27 Aug 2026 |
| LS-B010 | 2026-08-27 | Medium | Confirm whether Live Status requires a separate Vehicle view. | Client preference and the boundary between Order, Trip and Vehicle views are documented before any third perspective is implemented. | Live Status Workshop transcript, 00:05:24 to 00:09:29; meeting notes |
| LS-B012 | 2026-08-27 | Medium | Produce the supporting Live Status specification and acceptance criteria. | The specification records user stories, workflows, entity boundaries, display rules, realistic illustrative data and testable acceptance criteria for the planned changes. | Live Status Workshop transcript, 00:13:03 to 00:14:43; meeting notes |
