# Manage app report

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

##### Scenario 1.1- Users are allowed to add same reports to different legal entities.

#### Rule 2- Show default message in `Report Criterias` section, when no section or report is selected.

#### Rule 3- Show a proper message when `Report Criterias` is not applicable for the selected report or section.

#### Rule 4- Show loader in `Report Criterias` section until data is loaded.

#### Rule 5: If the user selects a report which is not implemented from our side then shows a proper message.

#### Rule 6: `Entity Name` field default shows source legal entity.

#### Rule 7: User can change the name of the entity as required.

#### Rule 8: `Section Name` field will show the section based on `Entity Name`.

Scenario 8.1: Default  `Contact` is selected only for `Individual` & `Joint`.

Scenario 8.2: Default `Asset` is selected for `Partnership`, `Trust`, `Founadation`, `Estate`.

Scenario 8.3 : When selected entity is {Entity Type} then section dropdown shows as like {Section Name}

| Entity Type | Section Name                                                 |
| ----------- | ------------------------------------------------------------ |
| Individuals | Contact<br />Assets<br />Banking<br />Estate Plan<br />Gifting<br />Insurance<br />Investments<br />Partnerships<br />Philanthropy<br />Tax<br />Trusts |
| Joint       | Contact<br />Assets<br />Banking<br />Estate Plan<br />Gifting<br />Insurance<br />Investments<br />Partnerships<br />Philanthropy<br />Tax<br />Trusts |
| Partnership | Assets<br />Banking<br />Insurance<br />Investments<br />Partnerships<br />Philanthropy<br />Tax<br />Trusts |
| Foundation  | Assets<br />Banking<br />Insurance<br />Investments<br />Partnerships<br />Philanthropy<br />Tax<br />Trusts |
| Estate      | Assets<br />Banking<br />Insurance<br />Investments<br />Partnerships<br />Tax<br />Trusts |
| Trust       | Assets<br />Banking<br />Gifting<br />Insurance<br />Investments<br />Partnerships<br />Philanthropy<br />Tax<br />Trusts |

#### Rule 9: Disable a section that has no data available

Scenario 9.1: Disabel section will appears at last in the dropdown.

#### Rule 10: Based on Section, `Report name` field will show a report of that section.

##### Scenario 10.1 : When selected entity is {Section Name} then Report name dropdown will shows {Report Name}.

| Section Name | Report Name                                                  | Other Notes                                                  |
| ------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| Contact      | Boards<br />Security                                         |                                                              |
| Assets       | Curreny<br />Disposed<br />Transferred                       |                                                              |
| Banking      | Active<br />Disposed                                         |                                                              |
| Estate Plan  | Will<br />Directives                                         | Applicable only for `Individuals` type entities.             |
| Gifting      | Given<br />Received<br />Lifetime Summary<br />GST Summary   | **Given**, **Lifetime Summary** and G**ST Summary** are applicable only for `Individual` & `Joint` type entities.<br />**Received** report is applicable for `Individual`, `Joint` & `Trust`. |
| Insurance    | Insurnace Summary<br />Disposed                              |                                                              |
| Invenstments | IPS<br />Historical IPS                                      |                                                              |
| Tax          | Tax Summary<br />Entity Status<br />Tax Return Details       | **Entity Status** is applicable only for `Individual` & `Joint`<br />**Tax Summary** is applicable only for `Individual` , `Joint`, `Estate` & `Trust`. |
| Philanthropy | Grant Maker Status<br />Grant By Size<br />Tax Filing<br />Grant Detail<br />Approved Grant Scheduled |                                                              |
| Partnership  | Summary<br />Inactive Summary<br />Partnership Detail        |                                                              |
| Trusts       | Summary<br />Inactive Summary<br />Trust Detail              |                                                              |

#### Rule 11: Based on the {Report name}, {Report Description} field shows data.

##### Scenario 11.1

| Section Name | Report Name              | Report Description                                           |
| ------------ | ------------------------ | ------------------------------------------------------------ |
| Contact      | Board                    | List of active boards                                        |
|              | Security                 | List of known personal security settings                     |
| Assets       |                          |                                                              |
|              | Current                  | List of current assets                                       |
|              | Disposed                 | List of disposed assets                                      |
|              | Transferred              | List of tranfserred assets                                   |
| Banking      |                          |                                                              |
|              | Active                   | List of active bank account                                  |
|              | Disposed                 | List of disposed bank accounts                               |
| Estate Plan  |                          |                                                              |
|              | Will                     | Summary of Current Will                                      |
|              | Historical Will          | Summary of Historical Will                                   |
|              | Directives               | Summary of Current Directives                                |
|              | Historical Directives    | Summary of Historical Directives                             |
| Gifting      |                          |                                                              |
|              | Given                    | Detail of Gifts given by date range                          |
|              | Received                 | Detail of Gifts received by date range                       |
|              | Lifetime Summary         | Summary table of historical gifting and remaining exemption  |
|              | GST Summary              | Summary table of historical GST gifting and remaining exemption |
| Insurance    |                          |                                                              |
|              | Insurance Summary        | Summary of current insurance policies                        |
|              | Disposed                 | Summary of disposed insurance policies                       |
| Investments  |                          |                                                              |
|              | IPS                      | Current Investment Policy Statement                          |
|              | Historical IPS           | Summary of IPS renewals                                      |
| Tax          |                          |                                                              |
|              | Tax Summary              | Prior 5-year tax summary                                     |
|              | Entity Status            | Summary status tax return and all related entities           |
|              | Tax Return Detail        | Detailed tax filing status for particular year               |
| Philanthropy |                          |                                                              |
|              | Grant Maker Status       | Summary of pending and approved grants by year               |
|              | Grant By Size            | Total gifts by organization, sorted by grant size            |
|              | Tax Filing               | Summary of charitable payments for tax advisors / tax prep   |
|              | Grant Detail             | Detail of gift to each organization                          |
|              | Approved Grant Scheduled | 5-year summary of paid grants (past 3 years) and approved/paid grants (current year + 1) |
| Partnerships |                          |                                                              |
|              | Summary                  | Summary of all related partnerships                          |
|              | Inactive Summary         | Summary of all inactive partnerships                         |
|              | Partnership Detail       | Partnership detail                                           |
| Trusts       |                          |                                                              |
|              | Summary                  | Summary of all related trusts                                |
|              | Inactive Summary         | Summary of all related trusts                                |
|              | Trust Detail             | Trust Summary for single Trust                               |

##### Scenario 11.2: If report description is not available then show `-`.



#### Rule 12: When user selects {Report name}, based on that report criterias section will shows this {Report Criterias}.

|                  |                    |          |        | Report Criterias             |          |                          |                                                              |
| ---------------- | ------------------ | -------- | ------ | ---------------------------- | -------- | ------------------------ | ------------------------------------------------------------ |
| **Section Name** | **Report Name**    | **From** | **To** | **Date**                     | **Year** | **Other**                | **Value of the dropdown**                                    |
| Gifting          |                    |          |        |                              |          |                          |                                                              |
|                  | Given              | Yes      | Yes    |                              |          |                          | Default shows `Current Year` in both fields. <br />The dropdown will show only that year where records are available. |
|                  | Received           | Yes      | Yes    |                              |          |                          | Default shows `Current Year` in both fields. <br />The dropdown will show only that year where records are available. |
| Investments      |                    |          |        |                              |          |                          |                                                              |
|                  | Historical IPS     |          |        | Yes {Label Name: `IPS Date`} |          |                          | The dropdown will shows a date of IPS in descending order.   |
| Tax              |                    |          |        |                              |          |                          |                                                              |
|                  | Entity Status      |          |        |                              | Yes      |                          | The dropdown will shows a last 5-years.                      |
|                  | Tax Return Detail  |          |        |                              | Yes      | Yes {Label Name: `Form`} | **Year** : Shows only that year where records are avaialble. Default show top year of the dropdown.<br />**Form** :  Form of selected legal entity.  Default value is same as we have implemented in tax return. |
| Philanthropy     |                    |          |        |                              |          |                          |                                                              |
|                  | Grant Maker Status | Yes      | Yes    |                              |          |                          | Default shows `Current Year` in both fields. The dropdown will show only that year where records are available. |
|                  | Grant By Size      | Yes      | Yes    |                              |          |                          | Default shows `Current Year` in both fields. The dropdown will show only that year where records are available. |
|                  | Tax Filing         |          |        |                              | Yes      |                          | Default shows "Current Year". The dropdown shows only that year where records are available. |
|                  | Grant Detail       |          |        |                              | Yes      |                          | Default shows "Current Year". The dropdown shows only that year where records are available. |

##### Scenario 12.1: Based on `Report Criterias`, default value of the fields are `Value of the dropdown`. //TODO

#### Rule 13: Shows proper error message when the selected report has no records available.





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





 