# YCH TCT Project Instructions

## Purpose and Boundary

**Current scope (from 27 August 2026): Vietnam, shipper Suntory PepsiCo Vietnam Beverage (SPVB).** This supersedes the engagement's original scope, Indonesia, shipper referred to as FFI in earlier material. See `KB/CT_TCT_SPVB_Working_File_v11.md` for the current network, milestones, and open questions; it inherits the doctrine and decisions below by reference and is the current authority for country, shipper, and network facts. Material built for the Indonesian scope, including `YCH_TCT_Live_Status_MVP.html` as it stood before this pivot, is historical unless explicitly carried forward.

The YCH Transport Control Tower supports YCH's road transport operations through:

- end-to-end visibility,
- exception handling,
- continuous improvement,
- AI integration, data pipelines, and approved guarded execution.

It is a cross-system visibility, coordination, and decision-support layer above execution systems such as MileApp, SAP, warehouse, gate, dock, GPS, telematics, and POD systems. It may consolidate data, correlate events, identify deviations, recommend actions, record outcomes, and analyse patterns. It does not replace or independently operate transactional systems unless explicitly approved. Humans own final operational decisions.

## Operating Context

- Primary user: Control Tower Coordinator. Other roles and decision rights follow the latest approved definitions.
- Journey: `Planning -> At Origin -> In Transit -> At Destination -> Return`. Do not change detailed milestones without approval.
- Phase 1: MileApp is the transactional source of truth where applicable; the Control Tower progressively becomes the cross-system operational reference.
- Data may be observed, computed, manual, delayed, missing, duplicated, or out of sequence. Preserve these distinctions when relevant.

## Principles

- Provide one operational view across fragmented systems without duplicate alerting.
- Preserve source and timing context for important information.
- Distinguish client-confirmed requirements, CEL proposals, assumptions, and illustrative values.
- Use the latest approved terminology and project decisions.
- Use AI only where it adds value beyond deterministic rules. Keep AI recommendations distinct from rules and human decisions.
- Principle: **AI supports the decision. Humans own the decision.**

## Sources

Use only task-relevant sections of the project references. Resolve conflicts by the priority in `AGENTS.md`; never silently combine conflicting versions.
