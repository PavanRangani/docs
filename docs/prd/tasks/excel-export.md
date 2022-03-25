# Excel/PDF Export

## Filter Criterias

- **View As**
  - Applicable for all tabs of  `My Task` page. It won't be applicable for `Entity Task`.
  - When no other user is selected in the `View As`, the login username is shown in the downloaded file otherwise other username is shown.
    - For e.g. If the login user is `Ravi` and he downloads an Excel/PDF file where `Ravi` is selected in `View As`, the download file shows the `Ravi` name in the `View as` filter.
  - If the `View as Admin` is selected in `View as`, shows `Admin` in the downloaded file.
    - For e.g. If the login user is `Ravi` and he downloads an Excel/PDF file where `View as Admin` is selected in `View As`, the download file shows the `Admin` in the `View as` filter.
- **Duration**
  - Applicable only for `Upcoming` & `Completed` tab.
  - Shows default value in the `Duration` filter when the Excel/PDF file is downloaded without filtered otherwise shows the selected values of the `Duration` filter.
- **Task Type**
  - Not applicable for Recurring tab
  - Shows default value in the `Task Type` filter when the Excel/PDF file is downloaded without filtered otherwise shows the selected values of the `Task Type` filter.
- **Family**
  - Applicable for all tabs of  `My Task` page. 
  - Shows default value in the `Family` filter when the Excel/PDF file is downloaded without filtered otherwise shows all filtered families names.
- **Entity**
  - Same as the above `Family` filter.
- **Section**
  - Same as the above `Family` filter.
- **Status**
  - Applicable only for `Open` task tab
  - Shows default value in the `Status` filter when the Excel/PDF file is downloaded without filtered otherwise shows the selected value of the `Status` filter.
- **Priority**
  - Not applicable for `Recurring` tab
  - Shows default value in the `Priority` filter when the Excel/PDF file is downloaded without filtered otherwise shows the selected value of the `Priority` filter.
- **Repeats On**
  - Applicable only for `Recurring` tab
  - Shows default value in the `Repeats On` filter when the Excel/PDF file is downloaded without filtered otherwise shows the selected values of the `Repeats On` filter.
- **My Role**
  - Applicable for all tabs of  `My Task` page. It won't be applicable for `Entity Task`.
  - Shows default value in the `My Role` filter when the Excel/PDF file is downloaded without filtered otherwise shows the selected values of the `Roles` filter.



## Columns for Excel/PDF file

### Common columns for Open, Upcoming, Completed tabs

| Column name       | Description                                                  |
| ----------------- | ------------------------------------------------------------ |
| Family            |                                                              |
| Entity            |                                                              |
| Section           |                                                              |
| Task Type         | Shows task type of the `Task`. <br />For `Meeting` task, shows `Meeitng name`. <br />For `Notes` task, shows `Note name`. |
| Task              |                                                              |
| Meeting/Notes     | If the task has a meeting/note then shows that meeting name or notes names otherwise shows `-`. |
| Task Notes        | Shows `-` if no task notes available.                        |
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

#### Open tab column

| Column name    | Description                                                  |
| -------------- | ------------------------------------------------------------ |
| Bucket         |                                                              |
| Status         | `In Progress` status is shown in the green colour. `Blocked` status is shown in the red colour. `On Hold` status is shown in the golden colour. |
| Completed By   | Applicable only for Done task. Shows the name of the user who has marked that task as Done. <br /> For other `Open` tasks, shows `-`. |
| Completed Date | Applicable only for Done task. Shows the date when this task was completed.<br />For other `Open` tasks, shows `-`. |

#### Upcoming tab column

No extra columns for Upcoming tab. (It has only common columns)

#### Completed Tab column

| Column name    | Description                                                  |
| -------------- | ------------------------------------------------------------ |
| Completed By   | Applicable only for Done task. Shows the name of the user who has marked that task as Done. <br /> For other `Open` tasks, shows `-`. |
| Completed Date | Applicable only for Done task. Shows the date when this task was completed.<br /> For other `Open` tasks, shows `-`. |



### Recurring tab column

| Column name                                | Description                                                  |
| ------------------------------------------ | ------------------------------------------------------------ |
| Family                                     |                                                              |
| Entity                                     |                                                              |
| Section                                    |                                                              |
| Task                                       |                                                              |
| Task Notes                                 | Shows `-` if no task notes available.                        |
| Repeats On                                 |                                                              |
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

- System allows the export of tasks to the users in the form of Excel and PDF.
- Export functionality isn't available, when the list page doesn’t have any tasks.
- System allows users to export tasks with filtered or without filtered.

## UX Rule

- Both icons are disabled when the list page doesn't have any task.
- On click of Excel icon, excel file will be downloaded in same page.
- On click of PDF icon, PDF file will be downloaded in same page.
- On hover of Excel and PDF icon, show tooltip message.
- Excel/PDF file name for **My task page**
  - Open tab
    - My task page: `open-tasks.xlsx` or `open-tasks.pdf`
    - Entity task: `{entity name}-open-tasks.xlsx` or `{entity name}-open-tasks.pdf`
  - Upcoming Tab
    - My task page:  `upcoming-tasks.xlsx` or `upcoming-tasks.pdf`
    - Entity task: `{entity name}-upcoming-tasks.xlsx` or `{entity name}-upcoming-tasks.pdf`
  - Completed Tab
    - My Task : `completed-tasks.xlsx` or `completed-tasks.pdf`
    - Entity task: `{entity name}-completed-tasks.xlsx` or `{entity name}-completed-tasks.pdf`
  - Recurring Tab
    - My task page: `recurring-tasks.xlsx` or  `recurring-tasks.pdf`
    - Entity task: `{entity name}-recurring-tasks.xlsx` or `{entity name}-recurring-tasks.pdf`
- **Sorting order**: Sorting order will be same as the UI. [See this](./browse-my-tasks/#browse-open-tasks)

## UI Rule

Sample file of Excel

- [Open tab](https://docs.google.com/spreadsheets/d/1W4oswN3S9EmFe-UhaC5Xg9s2PZNaMX8Y/edit?usp=sharing&ouid=108870014519956519924&rtpof=true&sd=true)
- [Upcoming](https://docs.google.com/spreadsheets/d/1E4YqCFj_7kAuyMIkiyEBjl__K8_6R5E7/edit?usp=sharing&ouid=108870014519956519924&rtpof=true&sd=true)
- [Completed](https://docs.google.com/spreadsheets/d/1bcpyBTwCbajKXVbjpQT6H8qF1Cu_neoV/edit?usp=sharing&ouid=108870014519956519924&rtpof=true&sd=true)
- [Recurring tab](https://docs.google.com/spreadsheets/d/1xVxkLbLJQuRoSlg5lsTV4EzDxMU1WD3_/edit?usp=sharing&ouid=108870014519956519924&rtpof=true&sd=true)

Sample file of PDF

- [Open tab](https://drive.google.com/file/d/1e5C6QAuUD29xwDKPjOyOZwrQYPcU61ff/view?usp=sharing)
- [Upcoming](https://drive.google.com/file/d/1XJTardgYOuAtssZJ3_v-OO5zwETuFOLA/view?usp=sharing)
- [Completed](https://drive.google.com/file/d/1s8gqqSRLgFmnCY6H-I6JLgX8i_wtZ7Xs/view?usp=sharing)
- [Recurring tab](https://drive.google.com/file/d/1nfvdNK4wGxfIb9AzKhBLlVQXx121bRAV/view?usp=sharing)

Tooltip message
- Excel: `Export as Excel`
- PDF: `Export as PDF`