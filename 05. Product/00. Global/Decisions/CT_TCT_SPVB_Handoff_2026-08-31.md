# Handoff, YCH Transport Control Tower, SPVB Vietnam

Written 31 August 2026, at the end of a long working thread. For whoever picks this up next, human or model.

Everything that matters is on the shared drive, not in any conversation. Read the files rather than trusting this summary, which is a map rather than a source.

---

## Where things are

Root: `/Users/pierrequentin/Library/CloudStorage/GoogleDrive-pierre.quentin@cel-consulting.com/Shared drives/03> PROJECTS/YCH/YCH-TCT`

| What | Where | Read it when |
|---|---|---|
| Working file, every decision and what was traded away | `05. Product/00. Global/Decisions/CT_TCT_SPVB_Working_File_v14.md` | Before proposing anything that touches scope, doctrine or the worked example. This is the memory |
| PRD | `05. Product/00. Global/PRD/CEL_TCT_PRD_v0.2_2026-08-29.md` | For what the tower is for, and what is in and out of Release 1 |
| Glossary and acronyms | `05. Product/00. Global/PRD/CEL_TCT_Glossary_v0.1_2026-08-29.md` | Before using any term or short form |
| Ways of working | `05. Product/00. Global/Ways of Working/CEL_TCT_Spec_Ways_of_Working_v6_2026-09-03.md` | Before writing, naming or releasing any document |
| Its diagrams and the document map | `05. Product/00. Global/Ways of Working/CEL_TCT_WoW_Diagrams_v6_2026-09-03.html` | To see the folder shape and who owns what |
| Specification template | `05. Product/00. Global/Ways of Working/CEL_TCT_Specification_Template_v1_2026-08-30.md` | The shape every specification copies |
| Index, what is current | `05. Product/00. Global/Index/CEL_TCT_Index_v1_2026-08-29.xlsx` | First, to know which version of anything is live |
| Registers | `05. Product/CT1|CT2|CT3 .../00. Module/Registers/` | Milestones and users in CT1, exceptions and parameters in CT2, KPIs in CT3 |
| Screen inventories, one per sub-module | `05. Product/CTx.y .../Working/` | To know which screens belong to which pod |
| Master mockup | `05. Product/00. Global/Mockup/Released/` | The product as it stands. One file, one editor |
| Data contract | `04. Deliverables/01. Blueprint/YCH_TCT_Data_Contract_v2.xlsx` | Thibaud's seam. Product writes it, Data and Integration consume it |

---

## Where the work stands

**Scope.** YCH runs transport and warehousing for SPVB in Vietnam. Release 1 covers one Ho Chi Minh City warehouse, DOP or OPMT, not yet chosen. Vietnam implementation September to December 2026, first site live by January 2027. FFI Indonesia follows, January to March 2027. Bắc Ninh is out of Release 1: Y3 deploy it themselves.

**The product.** Six Control Tower modules, CT1 to CT6, of which CT1 to CT3 have two pod-owned sub-modules each, CT4 and CT5 belong to Thibaud's stream, CT6 is Release 2. Do not confuse these with YCH's execution blocks 1 to 6, which are built by MileApp and, for modules 3 and 4 in Vietnam, by Y3.

**The mockup.** Eight screens, thirteen milestones including truck queue in, twenty-two exception rules with owners and audiences, a no-code playbook editor with trigger, ownership, options, recommendation and test-before-save, and an exception panel with option cards and option timelines.

**The team.** Six pods: Phuc CT1.1, Huy CT1.2, PA and Phu CT2.1 and CT2.2, Duy CT3.1, Dung CT3.2. Registers: users Pierre, milestones Phuc, exceptions and parameters PA and Phu, KPIs Huy, data contract Duy.

---

## Open items

1. Which Ho Chi Minh City warehouse is first, DOP or OPMT. Sardar.
2. The Release 1 gate date, unconfirmed against the September to December window. Julien and Sardar.
3. DOP and OPMT expanded forms, inferred in the glossary and not confirmed.
4. The glossary to validate with YCH and SPVB.
5. The data contract register, Duy's, not started.
6. The administration screen for roles and audiences, designed for but not built.
7. The index note at row 35 is stale: it says owners are blank, and they are not.
8. Exception visuals: seven rules earn the option timeline, two a path diagram, thirteen no visual at all. Analysis done, sits with CT2.2 to finish.

---

## How to work here

Read the ways of working guide. The rules that bite most often:

- Every code carries its label on every mention: `PB-16, truck arrives late at the gate`, never `PB-16` alone.
- Every threshold is a parameter, never a number inline.
- The tower sees and decides; a person acts. It writes into no execution system.
- Observed and computed are shown differently, and computed says what it was computed from.
- No em dashes anywhere.
- Verify with a tool rather than recalling. Say what was written, moved or edited, by name, every time.
- Version numbers increment on every delivered file, and the filename carries the date.
- New mockup builds go to `05. Product/00. Global/Mockup/Working`. Promoting one to `Released` waits for Pierre's explicit go.
- Substantial changes are proposed as text before any code is written. Three options at most, with a named recommendation.
