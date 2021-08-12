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
    - Sorting order: Section and records are shown on the page in the same order in which it is added.
    - On hover of records under section, shows hover effect. On hover, shows dragger icon and vertmore action menu at right side.
      - When section has only one report then dragger icon is not shown.
      - Vertmore action: `Edit`, `Delete`. 
      - On click of `Edit`, open edit report dialog.
      - On click of `Delete`, open delete confirmation dialog.
      - On click of dragger icon, user can change the position of report under the section.
      - Reports won't be clickable.
  - User can also change the position of `Section under the legal entity` and legal entity.
    - On hover of the entity or section, shows UP and DOWN icon. On click, change the position.
    - Related entity dropdown is the same as we have implemented in communication.
  - Shows proper error message when no report available in any of the entity and user clicks on ADD button.

### UI Rule

Mockup //TODO

- Message for no report available in any of the entity: `No Reports Available`.
- Error message when no report available: `Atleast one report should be added`



## Edit Aggregate Report

Edit is allowed anytime

### UI Rule

Mockup //TODO



## Delete Aggregate Report

Delete is allowed anytime.

### UX Rule

On click of Delete action, open delete confirmation dialog. On confirmation, system will remove that report.

### UI Rule

Mockup //TODO



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
- `Download PDF` action of any particular report will be disable if donwload request for that same report is in WIATING or IN_PROGRESS state.
- On click of any record, opens view page of that report
- For Joint page, This page shows data for both individuals.

### UI Rule

Mockup of Browse page //TODO

- Message when no report available : `No Records Found`.

Mockup of Joint page //TODO



## View Aggregate Report

### UX Rule

- Shows proper message when report is not available in any of the entities.
- `Download PDF` action of any particular report will be disable if donwload request for that same report is in WIATING or IN_PROGRESS state.

### UI Rule

Mockup //TODO

- Message when no report available: `No Reports Available`.



