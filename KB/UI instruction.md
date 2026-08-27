# SIMCEL Unified UI Project Instructions

## Purpose

This file is the single project-level reference for SIMCEL product UI design and frontend implementation.

It consolidates:
- SIMCEL Design Principles
- SIMCEL Pattern Library
- SIMCEL Product UI Context
- Collaboration UI Reference
- Frontend Technical Stack and Design System Constraints
- SIMCEL Visual Identity

Use this file as the default instruction set for:
- UI and UX design
- frontend implementation
- component generation
- dashboard and planning workflows
- collaboration features
- data visualization
- responsive behavior
- accessibility
- design reviews

When a local page requirement conflicts with this file, document the exception explicitly.

## Contents

- L72: 1. Core Product Philosophy
- L99: 2. Design Priority Order
- L178: 3. Non-Negotiable Mental Models
- L252: 4. Technical Foundation
- L335: 5. Application Layout
- L388: 6. Responsive Modes
- L451: 7. Typography
- L502: 8. Color System
- L578: 9. Spacing, Radius, and Elevation
- L626: 10. Iconography
- L644: 11. Buttons and Actions
- L670: 12. Cards and Metric Cards
- L703: 13. Data Tables
- L754: 14. Canonical Save Behavior
- L774: 15. Chart and Table Synchronization
- L794: 16. Data Visualization
- L844: 17. Scenario System
- L886: 18. Data Quality and Lineage
- L922: 19. Simulation Feedback
- L947: 20. Event and Scenario Relationships
- L972: 21. Quick Search
- L993: 22. Status and Approval Workflows
- L1030: 23. Comments and Annotations
- L1078: 24. Real-Time Collaboration
- L1120: 25. Activity Stream
- L1142: 26. Version Control UI
- L1163: 27. Notifications
- L1211: 28. Meeting Polling
- L1223: 29. Confirmation and High-Stakes Actions
- L1242: 30. Motion and Timing
- L1263: 31. Loading, Empty, Error, and Recovery States
- L1293: 32. Accessibility
- L1342: 33. Business Language Rules
- L1366: 34. Anti-Patterns
- L1390: 35. Canonical Conflict Resolutions
- L1432: 36. Page-Type Guidance
- L1529: 37. Component Review Checklist
- L1585: 38. Final Design Test
- L1604: 39. Source Documents Merged

---

# 1. Core Product Philosophy

SIMCEL should feel sophisticated without feeling heavy.

The target experience is:
- trustworthy
- modern
- clear
- responsive
- precise
- intuitive
- restrained

The product should handle enterprise planning complexity while remaining easy to understand and operate.

Every visual and interaction decision should support confident business decisions.

## Primary design question

Before adding any element, ask:

> Does this help the user reach a confident decision faster?

If not, simplify, remove, or move it deeper into progressive disclosure.

---

# 2. Design Priority Order

When principles conflict, use this order:

1. Decision Momentum
2. Data Quality and Trust
3. Shared Language
4. Progressive Depth
5. Earned Density

## 2.1 Decision Momentum

Every screen should move the user toward action.

Requirements:
- show trade-offs explicitly
- show delta versus baseline where comparison matters
- make the next action obvious
- use specific action labels such as `Compare`, `Activate Plan`, `Save Changes`
- provide rationale before asking for high-impact decisions
- make high-stakes actions reversible when possible
- show consequence and undo path before confirmation

Do not create dashboards that only inform without helping the user decide.

## 2.2 Data Quality and Trust

Users must be able to understand and trust every important number.

Requirements:
- show freshness where relevant
- expose source lineage
- show calculation logic or assumptions on demand
- show uncertainty honestly
- maintain audit trails for changes and decisions
- degrade gracefully when data is incomplete
- do not hide low confidence behind excessive precision

## 2.3 Shared Language

Finance, Supply Chain, Sales, and Operations should be able to review the same screen together.

Requirements:
- use one metric definition across the product
- use business language instead of system jargon
- define technical or domain-specific terms on first use
- allow role-familiar formatting without changing underlying meaning
- show cross-functional impact when a scenario affects multiple functions

## 2.4 Progressive Depth

Design for three levels of information depth:

1. Summary: 5 to 30 second scan
2. Analysis: approximately 5 minute review
3. Detail: deep configuration and investigation

Requirements:
- start with the most important message
- expand detail in place where possible
- preserve context during drill-down
- make advanced features available but not mandatory
- allow executives and planners to use the same product at different depth

## 2.5 Earned Density

Density should increase only when the task and user expertise justify it.

Requirements:
- primary information is always obvious
- secondary information is visible when needed
- tertiary information is on demand
- use white space to guide attention
- do not show every available metric by default
- allow compact views for experienced users
- keep new-user defaults spacious and focused

---

# 3. Non-Negotiable Mental Models

These rules apply across the product.

## 3.1 Hierarchy

Use this hierarchy consistently:

`Plan -> Scenario -> Segment`

For the application shell:

`Plan -> Scenario -> Filters -> Widgets`

Changes cascade downward only.

Rules:
- Plan change resets Scenario, Filters, and Widgets
- Scenario change resets Filters and Widgets
- Filter change refreshes Widgets only
- lower-level selections must never silently alter a higher-level object

## 3.2 Charts and Tables Represent the Same Data

If a page contains a chart and a table for the same dataset:
- they share the same time axis
- they share selection state
- they share granularity
- they remain synchronized during navigation
- chart interactions should update table context
- table interactions should update chart context

## 3.3 Scenario Colors Are Persistent

A scenario keeps the same color everywhere:
- charts
- tables
- badges
- legends
- comparison views
- timeline markers

Color assignment follows scenario selection order.

## 3.4 Double-Click Means Edit

For editable tables and similar grid-based data:
- double-click enters edit mode
- Tab, Enter, or click-away confirms local edit
- Escape cancels
- edited cells have a clear visual state
- server commit is explicit through Save unless a feature specifically requires persisted autosave

## 3.5 Events Are Versioned Building Blocks

Events are created independently.

Scenarios select event versions.

Editing an event that is already used by scenarios must:
- warn the user
- show affected scenarios
- explain whether recomputation is required

## 3.6 Edits Ripple

When an edit affects another object:
- show the dependency
- show the consequence
- warn before commit
- provide a recovery or undo path where possible

---

# 4. Technical Foundation

## 4.1 Framework

Use:
- Angular 20.3.x
- standalone components
- signals-based state
- OnPush change detection
- reactive forms
- Angular routing and animations

## 4.2 UI Component Library

PrimeNG is the primary UI component library.

Use PrimeNG for:
- buttons
- forms
- inputs
- selects
- autocomplete
- chips
- dialogs
- tooltips
- calendars
- tables
- standard interactive UI components

Do not create custom controls when an appropriate PrimeNG component already exists.

Use PrimeIcons first.

Use Material Icons only as a fallback.

## 4.3 Styling

Use:
1. PrimeNG for component structure and interaction behavior
2. Tailwind CSS for layout, spacing, responsive utilities, and utility styling
3. Angular Material CSS variables for theming support
4. custom SCSS only where necessary

Limit component-specific custom styles to approximately 12 KB per component.

## 4.4 Charts

Use Chart.js for standard visualizations:
- line
- bar
- stacked bar
- area
- pie
- doughnut
- scatter
- radar

Use D3 only when Chart.js cannot support the required visualization.

Use:
- `d3-sankey` for complex Sankey requirements
- `@worktile/gantt` for Gantt charts and timelines

## 4.5 Tables

Use:
- PrimeNG Table for standard and moderately complex tables
- AG Grid Enterprise for advanced grouping, pivoting, enterprise filtering, or very complex grid interactions

## 4.6 State and Utilities

Use:
- NgRx Signals for global application state
- RxJS for asynchronous operations
- date-fns for date handling
- Quill for rich text editing
- CASL for authorization patterns
- Clerk for authentication where already implemented
- driver.js for onboarding tours where needed
- html2canvas for screenshot or export features where needed

---

# 5. Application Layout

## 5.1 Desktop Shell

Canonical structure:

```text
┌─────────────────────────────────────────────────────────────┐
│ TopBar: Plan | Logo | Search | User | Notifications        │
├──────────┬──────────────────────────────────────────────────┤
│          │ ScenarioBar                                      │
│ Sidebar  ├──────────────────────────────────────────────────┤
│          │ FiltersBar                                       │
│          ├──────────────────────────────────────────────────┤
│          │                                                  │
│          │ Widget Area                                      │
│          │                                                  │
│          ├──────────────────────────────────────────────────┤
│          │ EventsPanel / Context Drawer                     │
└──────────┴──────────────────────────────────────────────────┘
```

Recommended dimensions:
- TopBar: 56px fixed
- ScenarioBar: 48px
- FiltersBar: 44px
- Sidebar: approximately 240px, collapsible
- Events or context panel: collapsible, up to approximately 300px

## 5.2 Three-Column Model

On desktop:
- left: fixed navigation
- center: primary flexible content
- right: optional collapsible context panel

The main content area must remain dominant.

## 5.3 Breadcrumbs

Show breadcrumbs whenever navigation depth is greater than 1.

Rules:
- every segment except the current page is clickable
- truncate to `...` when more than 4 segments
- preserve context during drill-down

Example:

`Scenarios > Summer Launch > Events > Summer Promotion`

---

# 6. Responsive Modes

SIMCEL should support three density modes.

| Mode | Typical Use | Visible Metrics | Density | Actions |
|---|---|---:|---|---|
| Analysis | desktop planning | 10+ | higher | all relevant |
| Meeting | projected review | 3 to 5 | lower | primary only |
| Mobile | status and light actions | 3 to 5 | low | critical only |

## 6.1 Analysis Mode

Default desktop mode.

Use:
- complete toolset
- tighter spacing
- detailed tables and charts
- secondary and tertiary actions where needed

## 6.2 Meeting Mode

Meeting Mode is manually activated from the scenario or page header.

Goals:
- readable on projectors
- simplified
- presentation-ready
- decision-oriented

Requirements:
- reduce visible information
- enlarge critical text and chart labels
- hide secondary actions
- disable distracting hover-only behaviors
- surface only primary actions such as `Edit`, `Compare`, `Activate`
- show larger KPI cards and simplified visualizations
- use 2 to 3 grid columns instead of 3 to 4
- use 24 to 32px card padding

Canonical typography adjustment:
- base UI text: approximately 18 to 20px
- headings: approximately 32 to 36px
- chart labels: approximately 14 to 16px
- use approximately 1.25x to 1.3x normal scale for standard Meeting Mode
- allow up to 1.5x for very large rooms or low-quality projection

Do not rely on hover in Meeting Mode.

## 6.3 Mobile

For viewport width below 768px:
- show only critical metrics and actions
- use full-width cards
- use bottom sheets for filters
- use sticky bottom action bars when an action must remain accessible
- support swipe actions only when they are discoverable and reversible
- minimum touch target: 44 x 44px
- use summary-first layouts
- deep configuration may show a `Desktop recommended` message

---

# 7. Typography

## 7.1 Font Families

Use:
- Plus Jakarta Sans for headings and strong emphasis
- DM Sans for body and UI text
- Inter as fallback

Do not introduce additional UI typefaces without explicit design approval.

## 7.2 Typography Scale

### Plus Jakarta Sans

| Level | Size | Line Height | Weight |
|---|---:|---:|---:|
| Heading Large | 30px | 38px | 700 |
| Heading Medium | 24px | 32px | 600 |
| Subheading Large | 20px | 30px | 600 |
| Subheading Medium | 18px | 28px | 500 |
| Body Large | 16px | 24px | 400 |
| Body Medium | 14px | 20px | 400 |
| Body Small | 12px | 18px | 400 |

### DM Sans

| Level | Size | Line Height | Weight |
|---|---:|---:|---:|
| Heading Large | 30px | 56px | 700 |
| Heading Medium | 24px | 42px | 600 |
| Subheading Large | 20px | 34px | 600 |
| Subheading Medium | 18px | 30px | 500 |
| Body Large | 16px | 26px | 400 |
| Body Medium | 14px | 22px | 400 |
| Body Small | 12px | 20px | 400 |

## 7.3 Typography Rules

- use weight before large size jumps to create hierarchy
- avoid italics for standard UI
- body text minimum: 14px where practical
- table text minimum: 12px
- labels and captions minimum: 11px
- maximum comfortable prose line length: approximately 80 characters
- use tabular or monospace figures in tables when alignment matters
- use thousands separators
- use consistent currency formatting

---

# 8. Color System

## 8.1 Brand Colors

| Role | Name | Hex |
|---|---|---|
| Structure | Gunmetal | `#24333F` |
| Primary CTA | Persian Red | `#C0392B` |
| Accent | Gamboge | `#EF9D17` |
| Deep Neutral | Mineral Anthracite | `#202020` |
| Surface | White | `#FFFFFF` |
| Soft Surface | Off-White | `#FFF8F4` |
| Secondary Text | Cool Grey | `#C8CCCF` |

## 8.2 Product UI Default

The SaaS product uses a light UI by default.

Use:
- white and light-neutral surfaces
- Gunmetal for structure, key text, borders, and strong labels
- Persian Red for primary CTA emphasis where the component system calls for it
- Gamboge sparingly for attention and highlight
- semantic colors only for semantic meaning

Dark gradients and black page canvases are for marketing or special presentation contexts, not the default SaaS workspace.

## 8.3 Primary Button

Default visual:
- background gradient from `#C0392B` to `#D64535`
- light text
- 5px radius for standard size
- up to 8px radius for larger controls
- hover may use solid `#C0392B`

Use one visually dominant primary action per section.

## 8.4 Semantic Color

Use:
- green: success, positive, on-track
- amber or yellow: caution, attention
- red: error, critical, off-track
- blue: information, scenario coding, or selected states where appropriate
- gray: neutral, archived, inactive

Never use color alone to communicate meaning.

Always pair status color with:
- icon
- label
- pattern
- shape
- or text

## 8.5 Scenario Colors

Fixed selection-order palette:

```css
--scenario-1: #2563EB;
--scenario-2: #16A34A;
--scenario-3: #EA580C;
--scenario-4: #9333EA;
--scenario-5: #0891B2;
```

Rules:
- maximum 5 compared scenarios
- first selected or baseline uses scenario 1
- same scenario keeps the same color everywhere
- scenario colors must remain distinguishable in grayscale where possible

---

# 9. Spacing, Radius, and Elevation

## 9.1 Spacing Scale

Use the 8px base system:

| Token | Value |
|---|---:|
| Minimal | 4px |
| Small | 8px |
| Medium | 16px |
| Large | 24px |
| XL | 32px |
| XXL | 48px+ |

Rules:
- related elements: 8 to 16px apart
- unrelated sections: 24 to 32px apart
- use white space intentionally
- align components to the grid

## 9.2 Standard Density

Typical spacing:
- cards: 16 to 24px internal padding
- forms: approximately 24px between fields
- tables: 32 to 40px row height
- Analysis dashboard: 16 to 24px between elements
- Meeting dashboard: 24 to 32px between elements

## 9.3 Corners

Use:
- 4px for small controls and subtle containers
- 8px for larger cards and surfaces

Avoid harsh square container corners unless required by a specific data-grid component.

## 9.4 Shadows

Use subtle elevation only:
- blur: 8 to 16px
- opacity: approximately 5 to 10%

Shadows should indicate layer hierarchy, not decoration.

---

# 10. Iconography

Use PrimeIcons first.

Rules:
- one consistent icon style
- consistent stroke weight
- navigation icons: 20 to 24px
- action icons: 16 to 20px
- status icons: approximately 16px
- data icons: approximately 16px
- critical actions require icon plus text label
- do not rely on icon-only controls for important operations

Prefer familiar icons over clever or abstract metaphors.

---

# 11. Buttons and Actions

Button hierarchy:

1. Primary
2. Secondary
3. Tertiary
4. Destructive

Rules:
- use verbs in labels
- prefer `Activate Plan` over `Submit`
- maximum 3 to 4 actions in one local area
- keep primary action visually obvious
- place form actions consistently, usually toward the right
- show loading state when work is in progress
- disabled buttons must look disabled and be non-interactive

For high-stakes actions:
- list consequences
- state reversibility
- provide cancel or review path
- place the primary confirm action at the right edge

---

# 12. Cards and Metric Cards

## 12.1 Standard Card

Recommended:
- 8px radius
- 16 to 24px inner padding
- subtle border or shadow
- clear title
- one primary message

## 12.2 Metric Card

Recommended structure:

```text
Label                              [Info]
$45.2M
+3.2% vs Plan    Status
Progress or context
                              [Details]
```

Requirements:
- primary value is visually dominant
- comparison versus target or baseline appears nearby
- lineage or information control is available
- drill-down expands inline where practical
- optional sparkline may show trend
- do not decorate without analytical purpose

---

# 13. Data Tables

## 13.1 General Table Rules

Use:
- sticky header for long tables
- sticky first identifier column when horizontal scrolling is required
- sortable headers where useful
- row selection only when batch action exists
- action column in a consistent location
- horizontal scrolling instead of shrinking text below minimum readable size

## 13.2 Editable Tables

Interaction:
- double-click cell to edit
- Tab, Enter, or click away confirms local value
- Escape restores original value
- batch Save persists changes
- Reset clears local edits

Visual states:
- default
- hover
- editing with clear focus ring
- edited and unsaved
- validation error with inline message
- saved confirmation

Use a visible unsaved-change count when multiple cells are modified.

## 13.3 Hierarchical Rows

Use:
- `>` or equivalent disclosure indicator for collapsed rows
- expanded disclosure indicator for open rows
- approximately 24px child indentation per hierarchy level
- parent rows show aggregated values
- approximately 200ms ease-out expansion animation

## 13.4 Read-Only Tables

Support as needed:
- sorting
- pagination
- checkbox selection
- bulk action bar
- action menu

---

# 14. Canonical Save Behavior

SIMCEL uses explicit business commits.

Default rule:
- table edits are local draft changes
- `Save` performs the persistent server commit
- save may create a new plan or scenario version where required
- do not POST every keystroke

For collaborative editing:
- local draft state may autosave or checkpoint approximately every 3 seconds for recovery or collaboration
- this background checkpoint must not be treated as the final business commit
- show clear status such as `Saving draft...` and `Draft saved at HH:mm`
- explicit Save remains required when the workflow creates a new version or commits business data

This separates recovery autosave from controlled business persistence.

---

# 15. Chart and Table Synchronization

When chart and table show the same dataset:

| User Action | Chart | Table |
|---|---|---|
| Scroll chart horizontally | stays in sync | scrolls to match |
| Scroll table horizontally | scrolls to match | stays in sync |
| Click chart segment | highlights | filters or scrolls to matching period |
| Click table row | highlights related series | row remains selected |
| Change M/W/D granularity | re-aggregates | re-aggregates |
| Change scenario | updates scenario color | updates scenario color |

Implementation:
- shared scroll-position state
- approximately 16ms debounce for scroll synchronization
- identical time-axis breakpoints

---

# 16. Data Visualization

## 16.1 Chart Principle

Every chart must answer a question.

Use charts to:
- compare
- reveal variance
- reveal trend
- reveal target gap
- reveal distribution
- reveal relationships

Do not use charts as decoration.

## 16.2 Chart Selection

| Question | Preferred Chart |
|---|---|
| How are we trending? | line chart |
| How do we compare to plan? | variance bar with target |
| What is the breakdown? | stacked bar |
| What is the breakdown with fewer than 5 segments? | pie may be acceptable |
| How do scenarios compare? | grouped bar |
| What is the distribution? | histogram or box plot |
| How are variables related? | scatter plot |

## 16.3 Chart Styling

Default:
- white or neutral background
- subtle dashed or low-contrast grid lines
- readable axis labels
- skip labels instead of crowding
- consistent legend location
- full detail in tooltips
- scenario colors when scenarios are compared
- Gunmetal for structure
- Persian Red sparingly for anomaly or emphasis

Interactions may include:
- hover highlight
- tooltip
- click drill-down
- time-series zoom
- connected filters

---

# 17. Scenario System

## 17.1 Status States

Use:

| Status | Visual Meaning |
|---|---|
| Not Simulated | neutral |
| Simulating | information / active processing |
| Simulated | success / current |
| Stale | warning |
| Error | failure |

Always show text label plus icon or visual status.

## 17.2 Scenario Comparison

Rules:
- maximum 5 scenarios
- first column is baseline
- baseline shows absolute values
- comparison scenarios default to delta from baseline
- allow Absolute versus Delta toggle
- highlight best value per row subtly
- include a Trade-off row in plain business language
- show recommended scenario with a one-line explanation where recommendation exists

Example:

```text
Metric       Base       Growth        Efficiency
Revenue      $185M      +$16M (+8%)   -$7M (-4%)
Margin       34.2%      -3 pts         +2 pts
Trade-off    Baseline   Rev vs Margin  Margin vs Volume

Recommended: Growth
Reason: Best revenue among viable options while margin remains acceptable.
```

---

# 18. Data Quality and Lineage

## 18.1 Freshness States

Use visible freshness indicators:

| State | Example |
|---|---|
| Current | `2h ago` |
| Stale | `3 days ago` |
| Unavailable | `Source down` |
| Syncing | `Syncing...` |

## 18.2 Lineage Popover

Any important aggregated metric should provide one-click lineage.

Show:
- source system
- last synchronization time
- relevant record count
- transformation summary
- exclusions or adjustments
- link to source or audit trail when permitted

## 18.3 Confidence

For model, forecast, or AI-driven output:
- show confidence when meaningful
- state limited data conditions
- provide assumptions
- avoid false precision
- allow `View assumptions` or `See calculation`

---

# 19. Simulation Feedback

Simulation should not block the entire UI when avoidable.

Show:
- scenario name
- progress
- current step
- estimated remaining time if available
- Cancel action
- status change when complete
- toast or notification on completion
- refresh results automatically after completion where safe

Typical reference duration may be approximately 45 to 60 seconds, but the interface must use actual runtime information where available.

States:
- Not Simulated
- Simulating
- Simulated
- Stale
- Error

---

# 20. Event and Scenario Relationships

## 20.1 Event Card

Show:
- event name
- version
- date range
- impact parameter such as lift
- affected scope
- edit action
- remove action
- recomputation warning if applicable

## 20.2 Version Selection

When selecting an event for a scenario:
- show available versions
- identify current version
- show meaningful differences
- support creating a new version
- make selection explicit

---

# 21. Quick Search

Use `Cmd+K` or `Ctrl+K`.

Search may include:
- recent items
- page navigation
- scenarios
- plans
- actions such as Create Scenario or Add Event

Behavior:
- instant filtering
- arrow-key navigation
- Enter selects
- Escape closes

Search should support both navigation and common actions.

---

# 22. Status and Approval Workflows

## 22.1 Scenario Status

Recommended states:
- Draft
- Under Review
- Approved
- Active Plan
- Archived

Use:
- status label
- semantic color
- icon or dot
- never color alone

## 22.2 Approval Progress

Show:
- number approved versus required
- approver name and role
- approval state
- date
- optional comment
- pending users
- reminder action where permitted
- admin override only for authorized roles

Approval state examples:
- Approved
- Pending
- Rejected
- Changes Requested

---

# 23. Comments and Annotations

## 23.1 Threading

Rules:
- replies nest under parent
- maximum 3 levels
- resolved threads collapse by default
- resolved state remains expandable
- resolved items are visually muted
- show a `Resolved` label

## 23.2 Mentions

Use `@mention`.

Requirements:
- autocomplete after `@`
- highlighted mention
- trigger relevant notification
- preserve mention in activity history

## 23.3 Comment Input

Requirements:
- minimum height: approximately 2 lines
- auto-expand up to approximately 8 lines
- maximum approximately 2,000 characters
- support Bold, Italic, Code, and Link
- allow screenshot thumbnails where supported

Screenshot thumbnail reference:
- approximately 120px height

## 23.4 Timestamps

Comments:
- relative time for recent activity under 24 hours
- absolute time after 24 hours
- absolute format: `MMM DD, HH:mm`

Mobile:
- full-width comment cards
- tap to expand threads
- optional swipe actions such as Reply or Resolve

---

# 24. Real-Time Collaboration

## 24.1 Presence

Show:
- active participant avatars in header
- maximum 5 visible
- use `+X more` overflow

Reference active threshold:
- viewed or active within last 2 minutes

Optional:
- same-section cursors

## 24.2 Live Cursors

If enabled:
- use distinct user colors
- show small pointer plus name
- update approximately every 200ms
- hide after more than 30 seconds idle

## 24.3 Edit Locks

When a user begins editing a shared section:
- lock the section
- show editor name
- use an orange or warning treatment
- auto-release after approximately 5 minutes idle
- allow authorized admin force-release

## 24.4 Conflicts

Default collaboration behavior:
- avoid simultaneous persistent edits through locking where possible
- if simultaneous save occurs, notify affected users
- do not silently discard a conflicting user edit
- log conflict-related events in activity history when material

---

# 25. Activity Stream

Show:
- actor
- action
- target object
- timestamp
- optional preview
- contextual `View` link

Behavior:
- minimum card height approximately 60px
- auto-expand for relevant preview
- relative timestamps for activity under 7 days
- absolute timestamps otherwise
- filter by user, action type, and date range
- infinite scroll or incremental loading
- approximately 20 items per load
- permission-aware content only

---

# 26. Version Control UI

Scenario, plan, or event comparison should clearly show:
- modified items
- added items
- removed items
- metric impact

Indicators:
- modified: blue
- added: green
- removed: red

Format changes as:

`Metric: Old -> New (+/- Delta, +/- %)`

Allow version swapping when comparing two versions.

---

# 27. Notifications

## 27.1 Notification Badge

Use:
- red unread indicator
- unread count when more than 1
- maximum displayed count `9+`

## 27.2 Notification Panel

Each item may include:
- unread/read state
- actor
- action
- object
- short preview
- timestamp
- View
- Dismiss where applicable

Unread:
- stronger text
- visible dot

Read:
- gray dot
- reduced emphasis

## 27.3 Delivery Priority

Immediate:
- @mention
- approval request

Batched when appropriate:
- thread reply
- shared scenario
- status change

Reference batch delay:
- approximately 5 minutes

Preview reference:
- approximately 50 characters before truncation

---

# 28. Meeting Polling

When a poll is started during Meeting Mode:
- show it inside the current scenario or meeting context
- show real-time vote counts
- show participant names where permissions allow
- persist results into scenario comments or meeting history
- make current poll state clear
- allow users to return to the scenario decision context easily

---

# 29. Confirmation and High-Stakes Actions

Use confirmation dialogs only when the action is materially consequential.

For high-stakes confirmation:
- name the action
- name the affected object
- list consequences
- state whether it can be reversed
- provide Review Details if relevant
- Cancel remains available
- destructive confirmation uses destructive styling

Avoid unnecessary modal interruptions for simple or low-risk actions.

Prefer inline confirmation when the context can remain visible.

---

# 30. Motion and Timing

Motion is functional, not decorative.

Recommended timing:
- expand/collapse: 200ms ease-out
- fade in: 150ms ease-in
- toast appear: 300ms ease-out
- toast dismiss: 200ms ease-in
- skeleton pulse: approximately 1.5s loop
- standard micro-interactions: approximately 100 to 300ms

Avoid:
- bouncing
- flashy transitions
- animation that slows workflow

Respect reduced-motion preferences.

---

# 31. Loading, Empty, Error, and Recovery States

Every reusable component must define:

## Loading
Preferred:
- skeleton loading for content regions
- progress state for long operations
- `aria-busy` where appropriate

## Empty
Include:
- explanation of why the area is empty
- one useful next action where applicable

## Error
Include:
- clear error message
- probable cause when known
- recovery action
- preserve valid user input where possible

## Stale
If data may be outdated:
- show freshness state
- explain possible impact when material
- provide refresh action when available

---

# 32. Accessibility

Minimum target: WCAG AA.

## 32.1 Color and Contrast

- normal text contrast: minimum 4.5:1
- large text contrast: minimum 3:1
- never rely on color alone
- scenario colors should remain distinguishable without color when possible

## 32.2 Keyboard

Support:
- Tab for focus navigation
- Enter or Space to activate
- Escape to close or cancel
- Arrow keys for menus
- Cmd+K or Ctrl+K for global search

## 32.3 Focus

Use:
- visible focus ring
- approximately 2 to 3px where styling allows

## 32.4 Screen Readers

Use:
- semantic headings
- landmarks
- proper table headers
- `aria-expanded` for collapsibles
- `aria-busy` during loading
- `aria-live="polite"` for relevant status updates
- accessible labels for icon buttons
- announced status changes

## 32.5 Zoom and Touch

- interface must remain usable at 200% zoom
- interactive targets minimum 44 x 44px on touch interfaces

## 32.6 Reduced Motion

Respect `prefers-reduced-motion`.

---

# 33. Business Language Rules

Use business terms before system terms.

Prefer:
- Customer
- Product
- Scenario
- Plan
- Event
- Revenue
- Inventory
- Margin
- Service Level

Avoid unnecessary technical labels such as internal entity codes in primary UI.

Definitions:
- define specialized terms on first use
- expose metric calculation method through tooltip or lineage
- use labels that can be spoken naturally in a meeting

---

# 34. Anti-Patterns

Do not:
- use color-only status
- hide important information behind hover only
- save persistent business data on every keystroke
- use modals for simple confirmations
- remove navigation context during drill-down
- use internal jargon when a business term exists
- block the entire UI while simulation runs if work can continue
- allow unlimited scenario comparison
- hide data staleness
- overload dashboards with 20 equally emphasized metrics
- show all advanced options by default
- use decorative charts
- mix multiple icon styles
- use dense layouts for first-time users
- shrink text excessively to avoid horizontal scrolling
- make critical actions icon-only
- hide uncertainty or assumptions
- silently overwrite conflicting collaborative edits

---

# 35. Canonical Conflict Resolutions

Use these rules when older references disagree.

## 35.1 SaaS Light Mode vs Dark Marketing Identity

Canonical project rule:
- SaaS workspace defaults to light mode
- dark and black gradients are reserved for website, marketing, hero, or explicitly designed presentation surfaces

## 35.2 Primary Action Color

Canonical project rule:
- Gunmetal is the primary structural brand color
- Persian Red is the default strong CTA treatment
- scenario blue and other scenario colors are for scenario identity, information, or comparison
- semantic green, yellow, and red remain reserved for status meaning

## 35.3 Meeting Mode Scale

Canonical project rule:
- default Meeting Mode uses approximately 1.25x to 1.3x scaling
- large-room projection may increase up to 1.5x
- optimize for readability rather than enforcing one fixed multiplier

## 35.4 Autosave vs Explicit Save

Canonical project rule:
- local collaborative draft recovery may autosave frequently
- final business persistence remains explicit where the workflow commits a version, scenario, plan, or table change
- background recovery autosave must not be confused with committed business state

## 35.5 Typography

Canonical project rule:
- Plus Jakarta Sans for headings
- DM Sans for body and UI
- Inter fallback
- do not add other UI fonts without approval

---

# 36. Page-Type Guidance

## Business Explorer

Primary challenges:
- compare up to 5 scenarios
- show KPI tables, waterfalls, maps, and trade-offs
- preserve scenario colors consistently

Focus:
- baseline versus delta
- recommendation rationale
- cross-functional impact
- executive-readable summary first

## Demand Planning

Primary challenges:
- synchronized chart and table
- hierarchical inline editing
- time-based navigation

Focus:
- identical granularity between chart and table
- visible edited state
- batch commit
- horizontal synchronization

## SIT Dashboard

Primary challenges:
- 15+ editable columns
- validation
- recalculation
- high density

Focus:
- compact but readable grid
- sticky identifier columns
- edited state
- validation messages
- unsaved change count

## Supply Planning

Primary challenges:
- aggregated and atomic modes
- version creation
- Sankey or network views

Focus:
- clear mode switch
- batch save
- visible version state
- progressive detail

## Forecast Accuracy

Primary challenges:
- multiple granularity selectors
- multiple error metrics
- stale versus current state

Focus:
- visible freshness
- consistent metric definitions
- recalculation feedback
- confidence and assumptions

## Event Management

Primary challenges:
- Gantt timeline
- multi-step forms
- event versions

Focus:
- event impact visibility
- version selection
- affected scenarios
- recomputation warnings

## Scenario Creation

Primary challenges:
- event version selection
- dependency warnings
- recomputation feedback

Focus:
- selection clarity
- impact summary
- stale status after edits
- obvious next action

---

# 37. Component Review Checklist

Before finalizing any component, verify:

## Decision Momentum
- [ ] The main decision or action is obvious.
- [ ] Trade-offs are explicit.
- [ ] The user can understand the purpose within seconds.

## Data Trust
- [ ] Freshness is visible where relevant.
- [ ] Source lineage is available where relevant.
- [ ] Assumptions and uncertainty are not hidden.

## Shared Language
- [ ] Labels use business terminology.
- [ ] Finance and Supply Chain can interpret the screen consistently.
- [ ] Technical terms are defined where needed.

## Progressive Depth
- [ ] Summary view is useful without opening detail.
- [ ] Detailed analysis is available without losing context.
- [ ] Advanced features are optional.

## Density
- [ ] Every visible element supports the current task.
- [ ] Primary information is visually dominant.
- [ ] Secondary and tertiary information are appropriately de-emphasized.

## Interaction
- [ ] Loading state is defined.
- [ ] Empty state is defined.
- [ ] Error state includes recovery.
- [ ] Stale state is defined where relevant.
- [ ] Keyboard navigation works.
- [ ] Mobile behavior is defined.
- [ ] Meeting Mode behavior is defined when applicable.

## Accessibility
- [ ] Color is never the only signal.
- [ ] Contrast meets WCAG AA.
- [ ] Focus states are visible.
- [ ] Touch targets are large enough.
- [ ] Screen-reader labels are defined.
- [ ] Reduced motion is respected.

## Technical Fit
- [ ] PrimeNG used for standard UI components.
- [ ] Chart.js used for standard charts.
- [ ] Tailwind used for layout and spacing.
- [ ] AG Grid used only when table complexity justifies it.
- [ ] D3 used only when Chart.js cannot satisfy the visualization requirement.
- [ ] State handling follows Angular signals and NgRx patterns where applicable.

---

# 38. Final Design Test

Before shipping, ask:

1. Can an executive understand the key message in 30 seconds?
2. Can a planner reach the required detail without friction?
3. Can the user explain where the important numbers came from?
4. Are trade-offs clear?
5. Is the next action obvious?
6. Does every visual element earn its place?
7. Does the screen still work in Meeting Mode and on mobile where relevant?
8. Does the implementation align with PrimeNG, Chart.js, Tailwind, and the Angular architecture?
9. Is the interface accessible without relying on color, hover, or mouse-only interaction?
10. Does this help the user reach a confident decision faster?

If the answer to the final question is no, simplify the design.

---

# 39. Source Documents Merged

This unified instruction file was synthesized from:
- `Collaboration_UI_Reference(4).txt`
- `design-principles(4).txt`
- `SIMCEL_Pattern_Library_Summarized(4).txt`
- `SIMCEL_Product_Context(4).txt`
- `TECH_Constraints(4).txt`
- `visual-identity_merged&summary(4).txt`

Use this unified file as the project default unless a newer approved design-system version supersedes it.
