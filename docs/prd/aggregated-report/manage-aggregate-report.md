# Manage Aggregated report



## Add Aggregated Report

### UX Rule

- Show the current entity as the first legal entity by default. Current legal entity can't be deleted.
- Same name aggregate report can be allowed to add.
- If a user wants to add another related entity, he can do that.
  - On click of the first add button, open the dropdown of related entity.
    - Related entity dropdown is the same as we have implemented in communication.
    - On click of any entity, it will be added.
- Shows proper message when no report available in the entity.
- Each legal entity has its own table. Each table has one ADD button and vertmor action.
  - Vertmore action button is not applicable for the current legal entity.
  - Vertmore action: `Delete`. On click, open delete confirmation dialog.
  - On click of ADD button, opens the add report dialog for that legal entity.
  - Each table has some common columns. Columns name are :
    - Section
    - Entity Name
    - Report Name
    - Report Description
    - Report Details Needed
      - It shows report criteria's of the selected report. If criteria's is not available then show `-`.
      - For ex. 
        - For Historical IPS Report : `IPS Date: {Date of selected report}`
        - For Tax Return Details report: `Year: {Selected Year} {(Form number)}`
        - For Historical Will / Historical Directives: `Historical Will/Directives Date: {Selected date in report criteria}`
  - Records are group by section in each table.
    - Sorting order: Section and records are shown on the page in the same order in which it was added.
    - On hover of records under section, shows hover effect. On hover, shows dragger icon and vertmore action menu at right side.
      - When section has only one report then dragger icon is not shown.
      - Vertmore action: `Edit`, `Delete`. 
      - On click of `Edit`, open edit report dialog.
      - On click of `Delete`, open delete confirmation dialog.
      - On click of dragger icon, user can change the position of report under the section.
      - Reports won't be clickable.
  - User can also change the position of `Section under the legal entity` and legal entity.
    - On hover of the entity or section, shows UP and DOWN icon. On click, change the position.
    - UP-DOWN icon logic is the same as we have implemented in communication.
  - Shows proper error message when no report available in any of the entity and user clicks on ADD button.

### UI Rule

Mockup //TODO

- Message for no report available in any of the entity: `No Reports Available`.
- Error message when no report available: `Atleast one report should be added`



### Scenarios

#### Rule 1: By default show current entity as the first legal entity.

#### Rule 2: Doesn't show vertmore action for the current entity.

#### Rule 3: Report Name and Report Description both are mandatory field.

#### Rule 4: Same name aggregate report can be allowed to add.

#### Rule 5: One aggregate report can have more than one related entity.

#### Rule 6: Users can not add aggregate reports without adding the report under legal entity.

#### Rule 7: Each entity has one ADD button. On click open Add Report dialog for that legal entity.

#### Rule 8: Each entity except current entity has one vertmore action. On click, shows delete action.

#### Rule 9: Reports under section won't be clickable.



### Scenarios of Related Entity dropdown

#### Rule 1: On click of Add button open related entity dropdown of the this family group by its type

#### Rule 2: Legal entities are primary sorted on type and secondary sorted on alphabetical order of legal entity name

#### Rule 3: Current legal entity is not shown.

#### Rule 4: If `Display Name` is available then show `Display Name` instead of legal name.

#### Rule 5: Shows already added legal entities as disabled.

#### Rule 6:  On click of any related entity, dropdown will be closed and it will be added.



### Scenarios of add report page after adding legal entity

Rule 1: Shows proper message when no report available in any of the legal entity.

Rule 2: Related entity can be removed any time.



### Scenarios of Sorting order

Rule 1: Records are group by section in each legal entity.

Scenario 1.1: Doesn't show section with the same name.

Rule 2: Section is shown on the page in the same order in which it was added.

Rule 3: Report under section is shown on the page in the same order in which it was added.

Rule 4: On hover of legal entity, show UP-DOWN icon.

Rule 5: On hover of section, show UP-DOWN icon.

Rule 6: On hover of reports under section, show dragger icon.



### Scenarios of UP-DOWN icon logic

| Type         |
| ------------ |
| Legal Entity |
| Section      |

Rule 1: When only one {Type} is available in page, both icon will be disable.

Rule 2: When there are multiple {Type} is available. For the First section, UP icon will be disabled

Rule 3: When there are multiple {Type} is available. For the last section, DOWN icon will be disabled.

Rule 4: When there are multiple {Type} is available. For the intermediate section, both icons will be enabled.

Rule 5: For {Type}, on click of UP icon, section will move upward.

Rule 6: For {Type}, on click of DOWN icon, section will move downward.



### Scenarios of dragger icon logic

Rule 1: On the hover of reports under the section, shows one dragger icon.

Rule 2: Doesn't show dragger icon when a section has only one report

Rule 3: On click of the dragger icon, the report is highlighted. Users can change the position of the report under the section.



### Scenarios when the report is added to the Joint entity

| Name       |
| ---------- |
| Individual |
| Joint      |

Rule 1: Show {Name} in the title while user added report to the joint entity.

Scenario 1.1 When user add a aggregate report to the joint, show `Joint` as a word in the title of the add page.

Scenario 1.2 When user add a aggregate report to one of the individual of that joint, show that individual entity name in the title of the add page.





## Edit Aggregate Report

Edit is allowed anytime

### UI Rule

Mockup //TODO

### Scenarios

Rule 1: On click of Edit action, open edit dialog of Aggregate Report with prefilled data.



## Delete Aggregate Report

Delete is allowed anytime.

### UX Rule

On click of Delete action, open delete confirmation dialog. On confirmation, system will remove that report.

### UI Rule

Mockup //TODO

### Scenarios

Rule 1: Show delete confirmation dialog when delete action is performed for the Aggregate Report

Rule 2: For Joint, shows legal entity name or Joint in the bracket of report name in the delete confirmation dialog. 



## Browse Aggregate report

### UX Rule

- Shows proper message when no aggregate report available.
- Shows one ADD button. On click, open add aggregate report dialog in same page.
- Column for the Browse page
  - Report Name
  - Report Description
    - When description is too long, it it will be shown in multiple line (Never show ellipses)
  - Records are sorted in alphabetical order of report name.
- On hover, shows hover effect and vertmore action menu at right side.
  - Vertmore action: `Download PDF`, `Edit` & `Delete`
  - On click of `Edit`, open edit report page.
  - On click of `Delete`, open delete confirmation dialog.
  - On click of `Download PDF`, submits download request.
- `Download PDF` action of any particular report will be disable if download request for that same report is in WIATING or IN_PROGRESS state.
- On click of any record, opens view page of that report
- For Joint page, This page shows data for both individuals.

### UI Rule

Mockup of Browse page //TODO

- Message when no report available : `No Records Found`.

Mockup of Joint page //TODO



### Scenarios

Rule 1: Shows proper message when no aggregate report available.

Rule 2: Records are sorted in alphabetical order of report name.

Rule 3: If report description is too long, show it in multiline.

Rule 4: On hover of records, shows hover effect.

Rule 5: On click of Vertmore action, open vertmore action menu.

Rule 6: `Download PDF` action is disabled if download request for that same report is in Waiting mode.

Rule 7: `Download PDF` action is disabled if download request for that same report is in Progress mode.

Rule 8: On click of any records, opens view page.

Rule 9: For Joint page, This page shows data for both individuals also.to 



## View Aggregate Report

### UX Rule

- Shows proper message when report is not available in any of the entities.
- `Download PDF` action of any particular report will be disable if download request for that same report is in WIATING or IN_PROGRESS state.

### UI Rule

Mockup //TODO

- Message when no report available: `No Reports Available`.



### Scenarios

Rule 1: Shows proper message when report is not added in any of the entities.

Rule 2: PDF icon will be disable if download request for that same report is Progress or Waiting state.

Rule 3: Sorting order of the Entity or Section or report are same as in add page.
