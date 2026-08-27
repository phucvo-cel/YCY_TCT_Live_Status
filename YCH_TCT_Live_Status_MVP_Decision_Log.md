# Live Status MVP Decision Log

This append-only log records decisions applied to `YCH_TCT_Live_Status_MVP.html`. It supports traceability and reversal. These entries describe mockup decisions and are not confirmed YCH operational requirements unless an authoritative source says so.

## Logging Rules

- Use IDs in the form `LS-D###`.
- Append a new entry when a decision is implemented or explicitly accepted.
- Never delete or rewrite an old decision. Record a reversal as a new decision that supersedes the earlier ID.
- State the previous behavior and a practical revert instruction.
- Link each decision to its backlog ID when one exists.
- Record conflicts with the project knowledge base instead of silently reconciling them.

## Current Baseline

| ID | Date | Decision | Previous behavior | Revert guidance | Source |
|---|---|---|---|---|---|
| LS-D001 | 2026-08-27 | Live Status provides separate Trips and Orders perspectives. | One execution view did not clearly separate the counting unit. | Remove the perspective switch and retain the required entity view. | Explicit user decision |
| LS-D002 | 2026-08-27 | A trip may carry multiple orders for one ship-to. | Shared trips could contain several ship-tos. | Restore per-order ship-tos within a trip and plural ship-to presentation. | Explicit user decision; conflicts with the KB multi-drop example |
| LS-D003 | 2026-08-27 | Trip stages are All active, Awaiting Dispatch, In Transit and At Destination. Return is excluded from active lists and counts. | Delivered and Return were separate Trip filters. | Restore the Return chip and Return records, then rename At Destination to Delivered if required. | Explicit user decision |
| LS-D004 | 2026-08-27 | Vehicle, carrier and transport-status fields are omitted from the Live Status tables. | These appeared as columns, filters and detail fields. | Restore the fields from the retained mock data and reconnect the carrier filter. | Explicit user decision |
| LS-D005 | 2026-08-27 | Ship-to rows show one name and a compact MT, GT, SP or Export trade-channel badge. | Customer and ship-to names were repeated in the same row. | Remove the channel field and badge, then restore the preferred customer or ship-to label. | Explicit user decision |
| LS-D006 | 2026-08-27 | Visible times omit WIB, WITA and WIT labels. | Times displayed Indonesian timezone abbreviations. | Remove the display sanitization and restore timezone suffixes where needed. | Explicit user decision |
| LS-D007 | 2026-08-27 | ETA contains the time and relative day. A separate Variance column is not shown. | ETA and Variance were separate columns. | Restore the Variance header and cells, then render the full ETA value. | Explicit user decision |
| LS-D008 | 2026-08-27 | Lateness appears only for arrivals today, only during In Transit or At Destination, and only above 30 minutes. Forecast-late wording is prohibited. | Any positive variance could display as late across all stages and days. | Relax the conditions in `etaParts` and restore the required stage wording. | Explicit user decision |
| LS-D009 | 2026-08-27 | The Trip table shows Exception instead of Affected orders and aggregates distinct exception types. | It showed the number of affected orders. | Restore affected-order counts and their explanatory copy. | Explicit user decision |
| LS-D010 | 2026-08-27 | The Order table mirrors the compact Trip table: entity, linked entity, ship-to, route, ETA, position source and exception. | Current and next milestones occupied the main Order table. | Restore milestone columns to the Order table. | Explicit user decision |
| LS-D011 | 2026-08-27 | Order Details use an eight-step horizontal journey beginning at Truck Checked in and ending at POD Completed. | A vertical internal milestone table included planning, timing-note and country-specific rows. | Restore the milestone table and its required columns and milestones. | Explicit user decision |
| LS-D012 | 2026-08-27 | The Order Journey appears at the top of the detail drawer. Its sequence line is continuous, and its time axis is proportional to elapsed time with progress only to the current milestone. | The journey appeared below other details and used a fully blue, equally spaced time bar. | Move the card below the detail sections and restore equal tick spacing or full progress. | Explicit user decision |
| LS-D013 | 2026-08-27 | The order-trip many-to-many summary banner is omitted. | A banner explained the relationship and displayed counts. | Restore the banner, its responsive styles and count initialization. | Explicit user decision |
| LS-D014 | 2026-08-27 | Ship-to and Route headers in the Trip table do not have explanation markers. | Both headers displayed `!` markers. | Restore the explanation markers and their popover text. | Explicit user decision |
| LS-D015 | 2026-08-27 | The Live Status page does not show the subtitle "Monitor active orders and the trips that execute them across the full journey." | The sentence appeared below the Live Status heading. | Restore the `page-subtitle` paragraph below the Live Status heading. | Explicit user decision |
