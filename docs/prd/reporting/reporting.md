# Reporting

## Overview

- Introduced one new tab `Reporting` in the contact page.



## Entity Details of Aggregate Report

### Report Name

- Its a free form text input field. Its a mandatory field.

### Report Description

- Its a free form text input field. Its a mandatory field.



## Entity Details of Report

### Entity Name

- Its auto-complete dropdown of related entity.
- Default source legal entity is pre-filled.

### Section Name

- Its an auto-complete dropdown of section. 
- List item of Section : `Contact`, `Assets`, `Banking`, `Gifting`, `Estate Plan`, `Insurance`, `Investments`, `Philanthropy`, `Tax Return`, `Partnerships`, `Trusts`. Default `Contact` is selected.
- This dropdown will show only applicable sections based on the selected entity.
  - For e.g. `Estate Plan` is not applicable for Partnership, Estate, Trust and Foundation types legal entities. So when user selects any of the legal entity in above mentioned types, `Estate Plan` section is available in the section dropdown.
- Disable a section that has no data available.
  - For e.g. //TODO

### Report Name

* Auto-complete dropdown of report based on section.
* Default selection //TODO

### Report Description

- Its a field view. 
- Show report description based on the above selected report.
- Shows `-` if the report description is not available.

### Report Criterias

- //TODO



## Add Aggregate Report

### UX Rule

- Show the current entity as the first legal entity by default.
- Same name aggregate report can be allowed to add.
- If a user wants to add another related entity, he can do that.
  - On click of the first add button, open the dropdown of related entity.
    - Related entity dropdown is the same as we have implemented in communication.
    - On click of any entity, it will be added.
- Shows proper message when no report available in the entity.
- Each legal entity has its own table. Each table has one ADD button and vertmor action.
  - Vertmore action: `Delete`. On click, open delete confirmation dialog.
  - On click of ADD button, opens the add report dialog for that legal entity.
  - Each table some columns. Columns name are :
    - Section
    - Entity Name
    - Report Name
    - Report Description
    - Report Details Needed
      - It shows report criteria's of the selected. If criteria's is not available then show `-`.
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

### UI Rule

Mockup //TODO

- Message for no report available in any of the entity: `No Reports Available`.



## Edit Aggregate Report

### UX Rule

- Existing aggregate report can be editable.
- On click of Edit action, open edit page of that aggregate report.

### UI Rule

Mockup //TODO



## Delete Aggregate Report

### UX Rule

- Existing aggregate report can be deleted anytime.
- On click of Delete action, open delete confirmation dialog. On confirmation, system will remove that report.

### UI Rule

Mockup //TODO



## Download PDF

### UX Rule

- On click of `Download PDF` action, PDF will be downloaded for that aggregate report.
- Downloaded file name: `{Report Name}-{legal entity name}.pdf`
- Page number will be sequential.
- Attach 2 pages with the downloaded pdf file.
  - Cover Page
    - It is the first page of the pdf. 
    - It shows downloaded report legal entity name, Report name and Date of download report.
  - Index Page
    - It shows the index of the downloaded report with page number.

### UI Rule

Mockup //TODO

## Browse page of Aggregate report

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
  - On click of `Download PDF`, PDF file will be downloaded.
    - At a time only one report request can be in progress. When any of request is in progress state, show proper message with icon.
    - When the first report request is not completed and user adds another pdf download request. So the second request will be in the waiting state until the first request is completed. For such case, system will manage a queue for those request. When any of request is in waiting state, show proper message with icon.
    - Suppose the system fails the request for any reason. So the state will be changed to `Failed`. When any of request is failed, show proper message with icon. On hover of Failed icon, show close icon. On click, failed record will be remove from the list item.
    - Records are not removed in the list item when request is in `In Progress` or `Waiting` state.
    - Once the request is completed, records are removed from the list item and pdf will be downloaded.
    - There is some additional case :
      - Suppose one user `Keith Vernon`. //TODO
- On click of any aggregate report show details of that report in view page.
- For Joint page, 
  - This page shows data for both individuals.
  - User can add a new aggregate report in the joint page.

### UI Rule

Mockup of Browse page //TODO

- Message when no report available : `No Records Found`.

Mockup of Joint page //TODO



## View Aggregate Report

### UX Rule

- Shows proper message when report is not available in any of the entities.

### UI Rule

Mockup //TODO

- Message when no report available: `No Reports Available`.



## Add Report under legal entity

### UX Rule

- Same report is not allowed to add, system show proper error message.
- Default shows proper message in the `Report Criterias` section, when section or report is not selected.
- When `Report Criterias` is not applicable for the selected report, show proper message.
- Some of the reports are not built from our side. If the user selects that report, it shows the proper message for that report.

### UI Rule

Mockup when report is not selected //TODO

Mockup when report is selected but `Report Criterias` is not applicable //TODO

- Default message for `Report Criterias`: `No Report Selected`
- Message when `Report Criterias` is not applicable: `No Criterias Applicable for {Report name} Report`
- Message when user select same report: ` This report is already added under {Entity name of report} entity`
- Message for report is in progress: `This report {report Name} is In Progress`.



## Edit Report under legal entity

### UX Rule

- Existing report can be editable.
- On click of `Edit` action in the vertmore of the report, open `Edit` dialog of that report.

### UI Rule

Mockup of Edit dialog //TODO



## Delete Report under legal entity

### UX Rule

- Report can be deleted anytime.
- On click of `Delete` action in the vertmore of the report, open delete confirmation dialog. On confirmation, system will remove that report.

### UI Rule

Mockup //TODO



## Auto-Delete report

- When any entity is removed
  - All reports under that entity will be auto removed by the system
  - If any report of the deleted entity is available under any other entity, that report will also be deleted.
- When any data like IPS, Tax return of entity is removed, at that time system will auto remove its related report
  - Some of the data like IPS, Tax return, Will, Directives are single records of a particular year or date. So when such a record is removed by the user, the system can identify whether its related report is added to Aggregated report or not and if it's added, system will remove that report.

 
