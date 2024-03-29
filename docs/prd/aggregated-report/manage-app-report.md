# Manage "App report"

## Add "App Report"

### System rules

- Allows to add reports of other modules

### System rules

- Same report is not allowed

### UX Rule

- Same report is not allowed to add, system show proper error message.
- Default shows proper message in the `Report Criterias` section, when section or report is not selected.
- Show proper message When `Report Criterias` is not applicable for the selected report.
- Shows loader in `Report Criterias` section still data is loaded.
- Currently, some of the reports are not built from our side. If the user selects that report, it shows the proper message for that selected report.

### UI Rule

Mockup when report is not [selected](https://drive.google.com/file/d/1Y0ZESML5FEJlGhZ-feINyM-LAVdep1Pr/view?usp=share_link)

[Mockup](https://drive.google.com/file/d/1gLhT8YifUxsy3qpXuPkb_C9FNCL_IRvX/view?usp=share_link) when report is selected but `Report Criterias` is not applicable

- Default message for `Report Criterias`: `No Report Selected`
- Message when `Report Criterias` is not applicable: `No Criterias Applicable for "{Selected Report name}" Report`
- Message when user select same report: ` This report is already added under "{Entity name of report}" entity`
- Message for report is in progress: `Work is In Progress for this report: “{Report Name}”`.



### Scenarios

#### Rule 1 - System shows a proper message when the user added the same report to the same legal entity.

Given: I have added one report of `Security` in the John Brown entity.

When: I add a same report to the same entity

Then: System shows a proper error message.

##### Scenario 1.1 - System allows adding the same report for the different legal entities.

Given: I have added 2 legal entities (John Brown and Jane Brown) in the aggregate report.

And: I have already added one report of `Security` in the Jane Brown entity.

When: I add a same report to the other entity `Jane Brown`.

Then: The system allows to add this report for other entities.



#### Rule 2- Show default message in `Report Criterias` section, when no section or report is selected.

Given: I have Add report dialog open

Then: Shows me default message in the `Report Criterias` section.



#### Rule 3- Show a proper message when `Report Criterias` is not applicable for the selected report or section.

Given: I have Add report dialog open

When: I select `Security` in the report name field.

Then: system shows proper message in `Report Criterias` section because Security report has no any particular criteria.

And: Shows one error message about this report is not built from our side.



#### Rule 4- Show loader in `Report Criterias` section until data is loaded.

Given: I have Add Report dialog open

When: I select Gifting in the section name field

And: I select `Given` in the report name field.

Then: Shows me loader in the `Report Criteria` section until data is loaded.



#### Rule 6: `Entity Name` field default shows source legal entity and User can change it.

Given: I have Add report dialog open

Then: Source legal entity is prefilled in the entity name filed.

And: I can able to change that legal entity.



#### Rule 8: `Section Name` field will show the section based on `Entity Name`.

Scenario 8.1 : When selected entity is {Entity Type} then section dropdown shows as like {Section Name}

| Entity Type | Section Name                                                 |
| ----------- | ------------------------------------------------------------ |
| Individuals | Contact<br />Assets<br />Banking<br />Estate Plan<br />Gifting<br />Insurance<br />Investments<br />Partnerships<br />Philanthropy<br />Tax<br />Trusts |
| Joint       | Contact<br />Assets<br />Banking<br />Estate Plan<br />Gifting<br />Insurance<br />Investments<br />Partnerships<br />Philanthropy<br />Tax<br />Trusts |
| Partnership | Entity Summaries<br />Assets<br />Banking<br />Insurance<br />Investments<br />Partnerships<br />Philanthropy<br />Tax<br />Trusts |
| Foundation  | Entity Summaries<br />Assets<br />Banking<br />Insurance<br />Investments<br />Partnerships<br />Philanthropy<br />Tax<br />Trusts |
| Estate      | Assets<br />Banking<br />Insurance<br />Investments<br />Partnerships<br />Tax<br />Trusts |
| Trust       | Entity Summaries<br />Assets<br />Banking<br />Gifting<br />Insurance<br />Investments<br />Partnerships<br />Philanthropy<br />Tax<br />Trusts |

#### Rule 9: Disable a section that has no data available

#### Rule 10: Based on Section, `Report name` field will show a report of that section.

##### Scenario 10.1 : When selected entity is {Section Name} then Report name dropdown will shows {Report Name}.

| Section Name     | Report Name                                                  | Other Notes                                                  |
| ---------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| Contact          | Boards<br />Security<br />                                   | Applicable only for `Individual` & `Joint` type entities.<br /> |
| Entity Summaries | Trust Summary<br />Historical Trust Summary<br />Partnership Summary | **Trust Summary and Historical Trust Summary** are applicable only for `Trust` type legal entity.<br />**Partnership Summary** is applicable only for `Partnership` type legal entity. |
| Assets           | Assets<br />Disposed Assets<br />Transferred Assets          |                                                              |
| Banking          | Banking<br />Disposed Banking                                |                                                              |
| Estate Plan      | Will<br />Directives                                         | Applicable only for `Individuals` type entities.             |
| Gifting          | Given<br />Received<br />Lifetime Gift Tax Exemption Summary<br />GST Gift Tax Exemption Summary | **Given**, **Lifetime Gift Tax Exemption Summary** and **GST Gift Tax Exemption Summary** are applicable only for `Individual` & `Joint` type entities.<br />**Received** report is applicable for `Individual`, `Joint` & `Trust`. |
| Insurance        | Insurance Summary<br />Disposed Insurance Summary            |                                                              |
| Investments      | Investment Policy Statement<br />Historical Investment Policy Statement<br />Investment Policy Statement History |                                                              |
| Tax              | Tax Summary<br />Entity Status<br />Tax Return Details       | **Entity Status** is applicable only for `Individual` & `Joint`<br />**Tax Summary** is applicable only for `Individual` , `Joint`, `Estate` & `Trust`. |
| Philanthropy     | Grant Maker Status<br />Grant By Size<br />Tax Filing<br />Grant Detail<br />Approved Grant Scheduled |                                                              |
| Partnership      | Associated Partnership<br />Inactive Associated Partnership Summary |                                                              |
| Trusts           | Associated Trust<br />Terminated Associated Trust            |                                                              |

#### Rule 11: Based on the {Report name}, {Report Description} field shows data.

##### Scenario 11.1

| Section Name     | Report Name                            | Report Description                                           |
| ---------------- | -------------------------------------- | ------------------------------------------------------------ |
| Contact          | Board                                  | List of active boards                                        |
|                  | Security                               | List of known personal security settings                     |
| Entity Summaries |                                        |                                                              |
|                  | Trust Summary                          | Trust Summary for single Trust                               |
|                  | Historical Trust Summaries             | Historical Trust Summary for single Trust                    |
|                  | Partnership Summaries                  | Partnership detail for single partnership                    |
| Assets           |                                        |                                                              |
|                  | Assets                                 | List of current assets                                       |
|                  | Disposed Assets                        | List of disposed assets                                      |
|                  | Transferred Assets                     | List of transferred assets                                   |
| Banking          |                                        |                                                              |
|                  | Banking                                | List of active bank account                                  |
|                  | Disposed Banking                       | List of disposed bank accounts                               |
| Estate Plan      |                                        |                                                              |
|                  | Will                                   | Summary of Current Will                                      |
|                  | Directives                             | Summary of Current Directives                                |
| Gifting          |                                        |                                                              |
|                  | Given                                  | Detail of Gifts given by date range                          |
|                  | Received                               | Detail of Gifts received by date range                       |
|                  | Lifetime Gift Tax Exemption Summary    | Summary table of historical gifting and remaining exemption  |
|                  | GST Gift Tax Exemption Summary         | Summary table of historical GST gifting and remaining exemption |
| Insurance        |                                        |                                                              |
|                  | Insurance Summary                      | Summary of current insurance policies                        |
|                  | Disposed Insurance Summary             | Summary of disposed insurance policies                       |
| Investments      |                                        |                                                              |
|                  | Investment Policy Statement            | Current Investment Policy Statement                          |
|                  | Historical Investment Policy Statement | Historical Investment Policy Statement                       |
|                  | Investment Policy Statement History    | Summary of IPS renewals                                      |
| Tax              |                                        |                                                              |
|                  | Tax Summary                            | Prior 5-year tax summary                                     |
|                  | Entity Status                          | Summary status tax return and all related entities           |
|                  | Tax Return Detail                      | Detailed tax filing status for particular year               |
| Philanthropy     |                                        |                                                              |
|                  | Grant Maker Status                     | Summary of pending and approved grants by year               |
|                  | Grant By Size                          | Total gifts by organization, sorted by grant size            |
|                  | Tax Filing                             | Summary of charitable payments for tax advisors / tax prep   |
|                  | Grant Detail                           | Detail of gift to each organization                          |
|                  | Approved Grant Scheduled               | 5-year summary of paid grants (past 3 years) and approved/paid grants (current year + 1) |
| Partnerships     |                                        |                                                              |
|                  | Associated Partnership                 | Summary of all related associated partnership                |
|                  | Inactive Associated Partnership        | Summary of all inactive associated partnerships              |
| Trusts           |                                        |                                                              |
|                  | Associated Trust                       | Summary of all active related trusts                         |
|                  | Terminated Associated Trust            | Summary of all terminated associated trusts                  |

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
|                  | Tax Return Detail  |          |        |                              | Yes      | Yes {Label Name: `Form`} | **Year** : Shows only that year where records are available. Default show top year of the dropdown.<br />**Form** :  Form of selected legal entity.  Default value is same as we have implemented in tax return. |
| Philanthropy     |                    |          |        |                              |          |                          |                                                              |
|                  | Grant Maker Status | Yes      | Yes    |                              |          |                          | Default shows `Current Year` in both fields. The dropdown will show only that year where records are available. |
|                  | Grant By Size      | Yes      | Yes    |                              |          |                          | Default shows `Current Year` in both fields. The dropdown will show only that year where records are available. |
|                  | Tax Filing         |          |        |                              | Yes      |                          | Default shows "Current Year". The dropdown shows only that year where records are available. |
|                  | Grant Detail       |          |        |                              | Yes      |                          | Default shows "Current Year". The dropdown shows only that year where records are available. |

##### Scenario 12.1: Based on `Report Criterias`, default value of the fields are `Value of the dropdown`. //TODO

#### Rule 13: Shows proper error message when the selected report has no records available.





## Edit "App report"

### System rules

- Edit is allowed anytime

### UI Rule

Mockup of [Edit dialog](https://drive.google.com/file/d/1a1cYT7xlkm__4mSJ_FBdit_azR2Zc2Mn/view?usp=share_link)



## Delete "App report"

### System rules

- Delete is allowed anytime

### UX Rule

- On click of `Delete`, opens delete confirmation dialog. On confirmation, system will remove that report.

### UI Rule

[Mockup](https://drive.google.com/file/d/1R7Yqj2KGmcGjPMhkMWQaTet9SycQd4hB/view?usp=share_link)



## Auto-Delete "App report"

- When any entity is removed
  - All reports under that entity will be auto removed by the system
  - If any report of the deleted entity is available under any other entity, that report will also be deleted.
- When any data like IPS, Tax return of entity is removed, at that time system will auto remove its related report
  - Some of the data like IPS, Tax return, Will, Directives are single records of a particular year or date. So when such a record is removed by the user, the system can identify whether its related report is added to Aggregated report or not and if it's added, system will remove that report.

### Scenarios

#### Rule 1: All reports under that entity will be auto removed by the system

Given: I have added one aggregate report in the `John and Jane Brown` entity

And: I have also added one related entity of `Brown Family Foundation` in that report

And: I have added some app report into the `Brown Family Foundation` entity

When: I delete the `Brown Family Foundation` entity

Then: System will delete that legal entity

And: System will also delete this related entity in the aggregate report of the `John and Jane Brown` entity.



#### Rule 2: If any report of the deleted entity is available under any other entity, that report will also be deleted.

Given: I have added one aggregate report in the `John and Jane Brown` entity

And: I have added some app reports of the `Brown Family Foundaiton` entity under the `John and Jane Brown`.

When: I delete the `Brown Family Foundation` entity

Then: System will delete that legal entity

And: System will also delete app report of `Brown Family Founation` under the section of `John and Jane Brown` entity.



#### Rule 3:

Given: I have added one aggregate report in the `John and Jane Brown` entity

And: I have added one app report of `Tax Return (2020)` for the `John Brown` entity under the `John and Jane Brown` entity

When: I delete that Tax return of the John Brown

Then: System will delete that Tax Return

And: System will also delete app report of that tax return under the `John and Jane Brown` entity.

