# YCH TCT Project Instructions

## Purpose and Boundary

The YCH Transport Control Tower supports Indonesian transport operations through:

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
