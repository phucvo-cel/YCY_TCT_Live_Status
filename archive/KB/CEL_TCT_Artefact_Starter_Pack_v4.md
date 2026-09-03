# Artefact starter pack

Product and Platform stream, YCH Transport Control Tower. Version 4, 24 August 2026.

One feature worked end to end, so the artefacts stop being abstract. Read parts 1 to 5 with the mockup open. Part 6 is the exercise; part 7 is the ground rules for where all of this lives.

## 1. The feature card

Every feature on the plan can be written as one card. This is D1, the exception queue, the feature this whole pack works.

|                 |                                                                                                                                                                                              |
|-----------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Feature**     | **D1, the exception queue**                                                                                                                                                                  |
| Where it lives  | Control Tower area, module CT2 Exception Handling, sub-module User-based exception list                                                                                                      |
| Release         | Release 1, due at the 11 December gate                                                                                                                                                       |
| User story      | As Fajar, the transport controller, I want every deviation ranked in one queue with a deadline on each, so that I decide the urgent ones first instead of discovering them in three systems. |
| Built by        | CEL and Y3 developers. We define what correct is; they decide how to build it.                                                                                                               |
| Where to see it | The mockup, Work queue screen. The mockup is the functional specification: what you see there is what the words below must pin down.                                                         |

*The user story form, as a person, I want, so that, is the standard opening of a functional specification. It forces three answers: who is this for, what do they get, and why it matters. If any of the three is hard to write, the feature is not understood yet.*

## 2. Acceptance criteria, the definition of correct

Acceptance criteria are the testable layer of the functional specification, written before the build. Two formats exist and we use both, chosen per feature, not by taste:

- Given, When, Then for behaviour: something happens and the system must react.

- A checklist for rules: things that must simply be true whenever you look.

### 2.1 Behaviour, in Given When Then

Each scenario has three parts. Given is the situation before. When is the trigger. Then is the observable result. If you cannot write the Then, you do not yet know what correct looks like, and that is useful to discover on Monday rather than in November.

|                                              |
|----------------------------------------------|
| **Scenario 1, a late trip enters the queue** |

|                                                                                                                                                                                                                                                                                                                                                                                                                                               |
|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Given the late arrival threshold on the Surabaya lane is set in the parameter register (draft 60 minutes), and trip TR-4127 is behind its plan by less than that threshold, When the computed lateness first exceeds the threshold, Then an exception for TR-4127 appears in the queue at the next refresh, carrying the trip, the order, the decision deadline and the owner. The refresh interval is itself a parameter (draft one minute). |

|                                     |
|-------------------------------------|
| **Scenario 2, one truck, one line** |

|                                                                                                                                           |
|-------------------------------------------------------------------------------------------------------------------------------------------|
| Given two open exceptions touch the same truck, When Fajar opens the queue, Then they show as one line with two tags, never as two lines. |

|                                        |
|----------------------------------------|
| **Scenario 3, closing needs a reason** |

|                                                                                                                                                                |
|----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Given an exception is open, When Fajar tries to close it without picking a cause and writing a note, Then the closure is refused and the exception stays open. |

|                                                       |
|-------------------------------------------------------|
| **Scenario 4, the unhappy path: the deadline passes** |

|                                                                                                                                                                                                                                                       |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Given an exception whose decision deadline has passed with no decision recorded, When the deadline lapses, Then the exception escalates to the next level of the escalation ladder in the parameter register, and the new owner is shown on the line. |

*For every happy path, write at least one unhappy one. Ours are the deadline that passes, the GPS that goes silent, the POD that arrives before the arrival. The unhappy paths are where a control tower earns its keep.*

*Numbers inside criteria follow the same law as part 3: every number is a parameter, either sourced from the register or marked draft. Write the criterion against the parameter's name, not its value, and the criterion survives the workshop changing the number. A criterion that rests on a draft parameter is written now and finally accepted only once the parameter is confirmed. That circular dependency between criteria and reference data is normal; the workshop is where the loop closes.*

### 2.2 Rules, as a checklist

- The queue is sorted by decision deadline, soonest first.

- Every line shows: the exception, the trip or site, the owner, the deadline, the status.

- An exception carries a risk level, and only the levels in the parameter register exist.

- Nothing in the queue commands MileApp, the dock system or SAP. The tower reads and recommends.

### 2.3 How to find the unhappy paths: example mapping

Example mapping is a simple technique. Write the feature's rules on one list. Against each rule, write concrete examples of it holding and of it breaking. Keep asking what else could be true until the rules stop producing new examples. Three prompts that almost always produce them:

- The data: what if it is missing, late, duplicated, or arrives out of order?

- The collision: what if two of these happen at once, on the same truck, the same dock, the same minute?

- The person: what if Fajar disagrees with the tower, or nobody acts at all?

### 2.4 Good and bad examples, side by side

|                                                                                                                 |                                                                                                                   |
|-----------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------|
| **Bad, and why**                                                                                                | **Good**                                                                                                          |
| "The queue displays exceptions sorted by priority." Not testable: whose priority, shown how, updated when?      | "The queue is sorted by decision deadline, soonest first, and re-sorts within one minute of a deadline changing." |
| "Use a red badge component with a tooltip on hover." Implementation. How it is built belongs to the developers. | "An exception past its deadline is visually distinct from one still inside it."                                   |
| "The queue should be fast." Cannot be answered yes or no.                                                       | "The queue opens with current content in under two seconds (draft) with 200 open exceptions (draft)."             |
| "Handles duplicates correctly." Correct is the word being defined; it cannot appear in its own definition.      | "A webhook delivered twice creates one exception, not two."                                                       |

*Criteria describe outcomes, never implementation. If a criterion names a component, a database or an animation, it has crossed into the developers' territory. Rewrite it as what Fajar sees.*

## 3. The reference data extract

Every number and list a feature relies on must exist somewhere as agreed data, with an owner. The queue relies on these. None of the values below is confirmed: every one is a CEL draft awaiting the workshop.

|                                       |                                                 |                       |                                        |
|---------------------------------------|-------------------------------------------------|-----------------------|----------------------------------------|
| **Item**                              | **Draft value**                                 | **Owner**             | **Status**                             |
| Late arrival threshold, per lane      | 60 minutes default                              | YCH operations        | Draft                                  |
| Decision deadline, per exception type | From the playbook rule                          | YCH operations        | Draft                                  |
| Escalation levels                     | Supervisor, operations manager, country manager | YCH operations        | Draft, from the Friday workshop        |
| Cause families for closure            | Five families, about twenty causes              | CEL draft, YCH to own | Draft, to be mapped to YCH's own words |

*Why this artefact exists: a developer can build a queue in a week; nobody but this team plus YCH can say what the right threshold is, who may change it, and what the causes are called. That knowledge is the product.*

## 4. One test scenario and one UAT line

Test scenarios are the acceptance criteria turned into steps a person can execute. In November, User Acceptance Testing is real people at YCH running these scripts and signing. This is what one line of that deliverable looks like, derived from Scenario 3 above.

|          |                                                   |                                                           |                  |            |
|----------|---------------------------------------------------|-----------------------------------------------------------|------------------|------------|
| **Step** | **Action**                                        | **Expected**                                              | **Pass or fail** | **Tester** |
| 1        | Open exception EX-102 on the Work queue screen    | The panel opens with the options and the resolution block |                  |            |
| 2        | Choose Close without selecting a cause            | Closure refused, message shown, exception still open      |                  |            |
| 3        | Pick a cause, write a one line note, choose Close | Exception closes; cause and note visible in the record    |                  |            |

*Note what happened between part 2 and part 4: one criterion became three steps. That is the normal ratio. Writing the criteria first is what makes the scripts almost write themselves.*

## 5. The cheat sheet, five rules

- 1\. Choose the format per feature: Given When Then for behaviour, a checklist for rules.

- 2\. Outcomes, never implementation. If it names a component or a table, rewrite it as what the user sees.

- 3\. Every happy path gets at least one unhappy path.

- 4\. Testable means answerable yes or no. Replace quickly, correctly and properly with numbers and observable facts.

- 5\. Draft alone, correct together. The draft is yours; the truth arrives in the workshop with YCH operations and Y3, with a developer in the room for the edge cases.

*And the boundary, once more: we never write how. The mockup may define behaviour to the pixel; the how still belongs to the developers.*

## 6. The exercise

Redo parts 1 to 4 of this pack for one feature, alone. Each analyst picks a different feature.

### 6.1 Choosing your feature

- Pick from the Control Tower's Release 1 features on the plan. Good sized picks: S17 drivers to call, D6 decision threads, S14 orders on the floor, D5 decision deadline, S9 clean and unclean deliveries.

- No two analysts on the same feature. Picks are confirmed with Pierre today before any writing starts.

- Pick something you can see in the mockup, and remember the warning at the end of this part: describe the operation, not the screen.

### 6.2 What to produce

|                           |                                                                                                                                                                                                                                                                                                                                                                                          |
|---------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1\. Feature card          | As in part 1: the story, the module and sub-module, the release, who builds it.                                                                                                                                                                                                                                                                                                          |
| 2\. Acceptance criteria   | Four to six, formats chosen per criterion, at least one unhappy path found with the prompts of part 2.3, every number labelled draft or sourced.                                                                                                                                                                                                                                         |
| 3\. Reference data        | Every parameter, list and definition the feature relies on, each with an owner, none silently invented.                                                                                                                                                                                                                                                                                  |
| 4\. One test script       | Exactly one, three to five steps, derived from one criterion. It is the self-check: a criterion that cannot become steps is not testable, and better to find that out now.                                                                                                                                                                                                               |
| 5\. An HTML mockup screen | One screen, one self-contained HTML file that opens in a browser with nothing installed. It must define the feature's behaviour precisely enough that a developer could build from it: what is shown, in what order, what happens on each action. Using an AI assistant to generate the HTML is allowed and expected; you are judged on whether the behaviour is defined, not on polish. |

### 6.3 What not to produce yet

No full test scenario sets, no UAT scripts, no training material. The chain has an order: criteria are written before the build, the full test scripts against the build, and the training against the finished thing. UAT scripts arrive when there is software for YCH people to test; training arrives when there is something to be trained on.

### 6.4 The review

The presentation date will be set by Pierre; there is a checkpoint mid-week in the daily window, so misreadings surface early. The review is against this checklist, accept or reject per line, which is exactly how the developers' work will be reviewed from October:

- Format chosen per criterion and defensible: behaviour as Given When Then, rules as a checklist.

- At least one unhappy path, found with the three prompts of part 2.3.

- No implementation words: no component, table, colour or animation named.

- Every number labelled: sourced from the register, or marked draft with an owner.

- Reference data listed with an owner for every item, none silently invented.

- One HTML screen, self-contained, opening in a browser, defining the feature's behaviour. Polish is not judged.

**One warning.** The temptation in this exercise is to describe the mockup. The mockup shows one afternoon at Cikarang; your criteria must hold on the worst Tuesday of December. Ask of every criterion: would this still be checkable if the screen looked completely different and the data were ten times worse?

## 7. Ground rules

### 7.1 Where the artefacts live

- One shared folder for the stream, nothing on laptops. One file per feature.

- File names: TCT_AC\_\<feature id\>\_v\<n\>\_\<initials\>, for example TCT_AC_S17_v1_AB.docx and TCT_MOCK_S17_v1_AB.html. The version increments on every copy you share, never on private edits.

- These documents move into Azure DevOps as work items when YCH stands the environment up; until then the folder is the single source.

### 7.2 When sources disagree

- The workshop beats the mockup on facts about the operation. The working file records the decision, and the mockup is then corrected, never silently left wrong.

- Acceptance criteria are per feature and ours. The Definition of Done is universal per increment, tests pass and the build deploys, and it belongs to the developers. Do not mix the two words.

### 7.3 How the work runs

- First, together: a walkthrough of the mockup, one analyst playing Fajar, everyone else writing down questions. It is the fastest way to load the product into your head before writing about it.

- Then the exercise brief: each analyst names a feature and Pierre confirms the picks, no two the same.

- Then each analyst works alone. Questions go to Pierre in the daily window, the same day rule that will apply to the developers.

- A checkpoint partway through, in the daily window, so misreadings surface early. The presentation date will be announced by Pierre.

- The empathy map and the order journey strip, two discovery canvases, are not part of this exercise: they are run once, with YCH operations in the room, at the first criteria workshop. The Continuous Improvement pod brings them there.
