# Excel Export

## Filter Criterias

- **View As**
  - Applicable for all tabs of  `My Task` page.
  - When no other user is selected in the `View As`, the login username is shown in the downloaded file otherwise other username is shown.
    - For e.g. If the login user is `Ravi` and he downloads an Excel file where `Ravi` is selected in `View As`, the download file shows the `Ravi` name in the `View as` filter.
  - If the `View as Admin` is selected in `View as`, shows `Admin` in the downloaded file.
    - For e.g. If the login user is `Ravi` and he downloads an Excel file where `View as Admin` is selected in `View As`, the download file shows the `Admin` in the `View as` filter.

- **Duration**
  - Applicable only for `Upcoming` & `Completed` tab
  - Shows default value in the `Duration` filter when the excel file is downloaded without filtered otherwise shows the selected values of `Duration`.

- **Task Type**
  - Not applicable for Recurring tab
  - Shows default value in the `Task Type` filter when the excel file is downloaded without filtered otherwise shows the selected values of `Task Type`.
- **Family**
  - Applicable for all tabs of  `My Task` page. 
  - Shows default value in the `Family` filter when the excel file is downloaded without filtered.
  - Shows count of the families in the family filter when excel file is downloaded with filtered.
    - For e.g.
      - If I have selected 4 families in the family filter and download the excel file, it will show me `4 Families` in the Family filter.
      - If I have selected one families `Dreamworld family` in the family filter and download the excel file, it will show me `Dreamworld family` in the Family filter.
- **Entity**
  - Same as the above `Family` filter.
- **Section**
  - Same as the above `Family` filter.
- **Status**
  - Applicable only for `Open` task tab
  - Shows default value in the `Status` filter when the excel file is downloaded without filtered otherwise shows the selected `Status`.
- **Repeats On**
  - Applicable only for `Recurring` tab
  - Shows default value in the `Repeats On` filter when the excel file is downloaded without filtered otherwise shows the selected values of `Repeats On`.
- **My Role**
  - Applicable for all tabs of  `My Task` page.
  - Shows default value in the `My Role` filter when the excel file is downloaded without filtered otherwise shows the selected `Roles`.



## Columns for Excel file

### Common columns for Open, Upcoming, Completed tabs

| Column name       | Description                                                  |
| ----------------- | ------------------------------------------------------------ |
| Family            |                                                              |
| Entity            |                                                              |
| Section           |                                                              |
| Task Type         | Shows task type of the `Task`. <br />For `Meeting` task, shows `Meeitng`. <br />For `Notes` task, shows `Note`. |
| Task              |                                                              |
| Meeting/Notes     | If the task has a meeting/note then shows that meeting name or notes names otherwise shows `-`. |
| Task Notes        | Shows `-` if no task notes available.                        |
| Notification Date |                                                              |
| Start Date        |                                                              |
| Due Date          | If the date is already passed then it shows in the red colour. |
| Responsible       | If multiple users are added, all those users in a single shell are shown in a new line and separated by commas(,). |
| Accountable       | Shows `-` if no task roles available.                        |
| Consulted         | If multiple users are added, all those users in a single shell are shown in a new line and separated by commas(,).<br />Shows `-` if no roles available. |
| Informed          | If multiple users are added, all those users in a single shell are shown in a new line and separated by commas(,).<br />Shows `-` if no task roles available. |
| Created By        |                                                              |
| Created On        |                                                              |
| Updated By        | Shows `-` if no details available.                           |
| Updated On        | Shows `-` if no details available.                           |

### Open tab column

| Column name    | Description                                                  |
| -------------- | ------------------------------------------------------------ |
| Bucket         |                                                              |
| Status         | `In Progress` status is shown in the green colour. `Blocked` status is shown in the red colour. |
| Completed By   | Applicable only for Done task. Shows the name of the user who has marked that task as Done. <br /> For other `Open` tasks, shows `-`. |
| Completed Date | Applicable only for Done task. Shows the date when this task was completed.<br />For other `Open` tasks, shows `-`. |

### Upcoming tab column

No extra columns for Upcoming tab. (It has only common columns)

### Completed Tab column

| Column name    | Description                                                  |
| -------------- | ------------------------------------------------------------ |
| Completed By   | Applicable only for Done task. Shows the name of the user who has marked that task as Done. <br /> For other `Open` tasks, shows `-`. |
| Completed Date | Applicable only for Done task. Shows the date when this task was completed.<br /> For other `Open` tasks, shows `-`. |



## Recurring tab column

| Column name                                | Description                                                  |
| ------------------------------------------ | ------------------------------------------------------------ |
| Family                                     |                                                              |
| Entity                                     |                                                              |
| Section                                    |                                                              |
| Task                                       |                                                              |
| Task Notes                                 | Shows `-` if no task notes available.                        |
| Repeats On                                 |                                                              |
| Notification Date (Days before Start date) |                                                              |
| Start Date (Days before Due date)          |                                                              |
| Due Date                                   |                                                              |
| Responsible                                | If multiple users are added, all those users in a single shell are shown in a new line and separated by commas(,). |
| Accountable                                | Shows `-` if no task roles available.                        |
| Consulted                                  | If multiple users are added, all those users in a single shell are shown in a new line and separated by commas(,).<br />Shows `-` if no roles available. |
| Informed                                   | If multiple users are added, all those users in a single shell are shown in a new line and separated by commas(,).<br />Shows `-` if no task roles available. |
| Created By                                 |                                                              |
| Created On                                 |                                                              |
| Updated By                                 | Shows `-` if no details available.                           |
| Updated On                                 | Shows `-` if no details available.                           |



## System Rule

- System allows the export of tasks in the form of the Excel.
- Excel export functionality isn't available, When the list page doesn’t have any tasks.
- System allows users to export tasks with filtered or without filtered.



## UX Rule

- Excel icon is disabled when the list page doesn't have any task.
- On click of excel icon, excel file will be downloaded.

- Excel file name for **My task page**
  - Open: `Open-tasks.xlsx`
  - Upcoming: `upcoming-tasks.xlsx`
  - Completed: `completed-tasks.xlsx`
  - Recurring: `recurring-tasks.xlsx`

- **Sorting order**: Sorting order will be same as the UI. [See this](./browse-my-tasks/#browse-open-tasks)



## UI Rule

Sample file for //TODO

- [Open tab](https://docs.google.com/spreadsheets/d/1z0_mC-1Q5OQ5evhJZ0CGFlxIiPBjYpvH/edit#gid=1322645581)
- [Upcoming](https://docs.google.com/spreadsheets/d/1oY9305h2lgIMS1qUFl4Lu-gQURK9p_h6-HNt3ST-Xa8/edit#gid=0)
- [Completed](https://docs.google.com/spreadsheets/d/1ujhu4AdewrE8d8zotcbCDrGkoxxLXPJnxyNAPqmLPkM/edit#gid=0)
- [Recurring tab](https://docs.google.com/spreadsheets/d/1hCVUrVXrx0CmKYWud73ikLd2pIPAFG7d_PPSLXfMBYQ/edit#gid=0)