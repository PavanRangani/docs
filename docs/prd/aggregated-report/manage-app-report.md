# Manage report under legal entity

## Add Report under legal entity

### UX Rule

- Same report is not allowed to add, system show proper error message.
- Default shows proper message in the `Report Criterias` section, when section or report is not selected.
- When `Report Criterias` is not applicable for the selected report, show proper message.
- Shows loader in `Report Criterias` section while data is not loaded.
- Some of the reports are not built from our side. If the user selects that report, it shows the proper message for that report.

### UI Rule

Mockup when report is not selected //TODO

Mockup when report is selected but `Report Criterias` is not applicable //TODO

- Default message for `Report Criterias`: `No Report Selected`
- Message when `Report Criterias` is not applicable: `No Criterias Applicable for {Report name} Report`
- Message when user select same report: ` This report is already added under {Entity name of report} entity`
- Message for report is in progress: `This report {report Name} is In Progress`.



### Scenarios

#### Rule 1 - System shows a proper message when the user added the same report to the same legal entity.

Scenario 1.1- Users are allowed to add same reports to different legal entities.



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

 