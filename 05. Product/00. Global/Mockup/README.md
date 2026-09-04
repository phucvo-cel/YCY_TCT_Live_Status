The master mockup lives here and nowhere else. One file, one editor.
Pods copy the released file, they never edit it in place.

## Changelog

- **v0.24, 2026-09-02. Current master, in Released, as `YCH_TCT_SPVB_v24.html`.** Improved. Every field in the playbook rule panel now shares one control style. The Match, Owner when it fires and Escalates to dropdowns, and the option and weight boxes, were each drawn differently, three styles and the browser default between them. They now share one background, border, radius and padding, and only size and weight vary with the job. The per cent signs beside the recommendation weights no longer wrap onto a second line.

- v0.22, 2026-09-01. Superseded by v0.24. Improved. Both font families embedded in the file as base64 woff2 faces, replacing the Google Fonts links added in v0.21. 21 faces: DM Sans at 400, 500 and 700 across latin and latin-ext, and Plus Jakarta Sans at 400, 500, 600, 700 and 800 across latin, latin-ext and vietnamese. Five subsets dropped. DM Sans has no Vietnamese face on Google Fonts, so the accented letters in Truong Phat Van Tai JSC and Soc Trang render from Plus Jakarta Sans through the body fallback added in v0.21. The file grew from 853 KB to 1,449 KB and now makes no network call for type. Map tiles and Leaflet are unaffected.
- v0.21, 2026-09-01. Fixed. Fonts were declared but never loaded: no font link and no @font-face anywhere in the file, so both families rendered only on a machine that had them installed. Added the Google Fonts stylesheet for DM Sans and Plus Jakarta Sans, and put Plus Jakarta Sans behind DM Sans in the body font stack so Vietnamese letters fall to the sibling family rather than to the system font. Superseded by v0.22.
- v0.20, 2026-08-31. Superseded by v0.21. Repair only, no functional change. The display font token read `"Plus Ho Chi Minh City Sans"`, which is not a font, so every element on `var(--font-display)` fell back to the system font. Fixed in ten places: the `--font-display` variable and nine canvas font strings in the programme timeline drawing code. The version tags moved with it, `atom-version` meta and the on-screen build tag now both read v0.20. Produced by renaming v0.19 in place, so v0.19 no longer exists as a file on the drive.
- v0.19, 2026-08-31. Superseded by v0.20 the same day. Playbook page: the rule side panel rebuilt as a data sheet, label left and value right, with its section icons kept. Each feed now shows the fields the rule reads from it. The audiences are the four agreed users, control tower operator, supervisors and managers, YCH country GM and SPVB; the transporter is not a user and was removed. Keyboard navigation with a panel open: left and right walk the rules, up and down jump between journey stages, and the row being read is highlighted in the list behind and scrolled into view. The wheel over the dimmed area now scrolls the screen behind it, on every screen. Options in the rule editor are editable, reorderable and removable.
- v0.18, 2026-08-31. Superseded by v0.19 within the day. Not kept on the drive.
- v0.17, 2026-08-31. Superseded. Not kept on the drive.
- v0.16, 2026-08-29. The two Ho Chi Minh City warehouses renamed to DOP and OPMT / Song Than. Moved to Working on 31 August when v0.19 was promoted.

## What Working is for

Released holds two things: the current master HTML, and AGENTS.md, which is instructions for Codex and ChatGPT on how to read a 1.4 MB mockup without exhausting their context. AGENTS.md is not a version, it is never snapshotted or pruned, and the publish script ignores it.

Working is optional (Pierre, 31 August 2026). Intermediate builds live in Pierre's Downloads folder until he is happy with one, and only builds worth keeping are put on the drive. Working is therefore not a complete archive and nothing should be inferred from a version missing there.

Pods: refresh your copy from Released before starting your next change.
