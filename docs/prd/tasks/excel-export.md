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
- **Tag**
  - Not applicable for Recurring tab
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

| Column name       | Description                                                  | Applicable To     | 
| ----------------- | ------------------------------------------------------------ | ----------------- |
| Priority          | Shows priority of the task.                                  | PDF & Excel       |
| Family            |                                                              | Excel             |
| Entity            |                                                              | PDF & Excel       |
| Section           |                                                              | PDF & Excel       |
| Tag               | For `Excel`, it shown in column. For `PDF`, it appears with section column | PDF & Excel       |
| Task Type         | Shows task type of the `Task`. <br />For `Meeting` task, shows `Meeting`. <br />For `Notes` task, shows `Note`. For `Multi-Step` task, show `One Time (Multi-Step)` and  `Normal` task, show `One Time` | Excel             |
| Task              | Task name                                                    | PDF & Excel       |
| Sub-task Priority | For `Excel`, it shown in column. For `PDF`, it appear with sub-task name. Shows star icon for `High Priority` and `Critical `. | PDF & Excel       |
| Sub-Task name     | Sub-Task name                                                | PDF & Excel       |
| Sub-Task Responsible | For PDF, shows each user name with comma seprator. <br />For Excel, each user name shown in seprate line. | PDF & Excel       |
| Sub-Task Due Date | If the date is already passed then it shows in the red colour. | PDF & Excel       |
| Sub-Task Status   |                                                              | PDF & Excel       |
| Task Source       |                                                              | Excel             |
| Task Source Date  |                                                              | Excel             |
| Meeting/Notes     | If the task has a meeting/note then shows that meeting name or notes names.  | PDF & Excel       |
| Task Notes        | If task notes has multi note, each note will be separated by a new line. Any new line entered by the user in note itself will be removed. System will auto assign numbers to notes like `Note 1`, `Note 2`, `Note 3` and so on. | Excel             |
| Due Date          | If the date is already passed then it shows in the red colour. | PDF & Excel       |
| Responsible       | If multiple users are added, all those users in a single cell are shown in a new line and separated by commas(,). | PDF & Excel       |
| Accountable       |                                                              | PDF & Excel       |
| Informed          | If multiple users are added, all those users in a single cell are shown in a new line and separated by commas(,). This column is not shown in PDF for Group task | PDF & Excel       |
| Task Notes        |                                                              | Excel             |
| Created By        |                                                              | Excel             |
| Created On        |                                                              | Excel             |
| Updated By        |                                                              | Excel             |
| Updated On        |                                                              | Excel             |

#### Open tab column

| Column name    | Description                                                  | Applicable To  |
| -------------- | ------------------------------------------------------------ | -------------- |
| Bucket         |                                                              | PDF & Excel    |
| Status         | `In Progress` status is shown in the green colour. `Blocked` status is shown in the red colour. `On Hold` status is shown in the golden colour. | PDF & Excel    |

#### Upcoming tab column

| Column name       | Description                                                  | Applicable To     | 
| ----------------- | ------------------------------------------------------------ | ----------------- |
| Start Date        |                                                              | PDF & Excel       |

#### Completed Tab column

| Column name    | Description                                                  | Applicable To  |
| -------------- | ------------------------------------------------------------ | -------------- |
| Completed By   | Shows the name of the user who has marked that task as Done. | PDF & Excel    |
| Completed On   | Shows the date when this task was completed.                 | PDF & Excel    |



### Recurring tab column

| Column name                                | Description                                                  | Applicable To  |
| ------------------------------------------ | ------------------------------------------------------------ | -------------- |
| Family                                     |                                                              | Excel          |
| Entity                                     |                                                              | PDF & Excel    |
| Section                                    |                                                              | PDF & Excel    |
| Task                                       |                                                              | PDF & Excel    |
| Task Notes                                 |                                                              | Excel          |
| Repeats On                                 |                                                              | PDF & Excel    |
| Start Date (Days before Due date)          |                                                              | PDF & Excel    |
| Due Date                                   |                                                              | PDF & Excel    |
| End Date                                   |                                                              | PDF & Excel    |
| Responsible                                | If multiple users are added, all those users in a single cell are shown in a new line and separated by commas(,). | PDF & Excel    |
| Accountable                                |                                                              | PDF & Excel    |
| Informed                                   | If multiple users are added, all those users in a single cell are shown in a new line and separated by commas(,). | PDF & Excel    |
| Created By                                 |                                                              | Excel          |
| Created On                                 |                                                              | Excel          |
| Updated By                                 |                                                              | Excel          |
| Updated On                                 |                                                              | Excel          |



## System Rule

- System allows the export of tasks to the users in the form of Excel and PDF.
- Export functionality isn't available, when the list page doesn’t have any tasks.
- System allows users to export tasks with filtered or without filtered.
- System exports the PDF or Excel file as per PST timezone.
  - For e.g. Suppose the user opens the My task page on `Apr 26, 2023 12:15 pm (IST timezone)` in India, he sees the 2 tasks in the `Today` bucket. But when the user exports it to PDF or Excel, both tasks will appear in the `Next Day` bucket. Because at a time, it would be `Apr 25, 2023 11:45 pm (PST timezone)` in Seattle, USA. So, this task will appear in `Next day` bucket instead of `Today` bucket in USA. So If user exports file from India, it will be exported according to Seattle (USA) time.   
- For Excel
  - One task is represented as single row. For `Multi-Step` task, one task will have multiple Sub-Task. Represtation of Sub-Task in single row doesn't seem meaningful. So for a `Multi-Step` task, excel will have multiple rows and each row reprents one Sub-Task. Details of the parent task will be repeated for all Sub-Tasks. Repeation will be done by refences. (=cell number)

## UX Rule

- Both icons are disabled when the list page doesn't have any task.
- On click of Excel icon, excel file will be downloaded in same page.
- On click of PDF icon, PDF file will be downloaded in same page.
- On hover of Excel and PDF icon, show tooltip message.
- On click of the PDF/Excel icon, it redirects the user to the next page. Page is not auto-close until the PDF/Excel file is started the downloading.
  - Reason: When user download the PDF/Excel file with more than 250 tasks, it takes more than 20-25 second to download file. During this there isn't any feedback on UI so the user got confused that request is submitted or not. So to avoid this we should show feedback when export process is in progress.
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

- [Open tab](https://docs.google.com/spreadsheets/d/1HSmX4fmAdskuBgjHVxjvO00QfWVha_6x/edit?usp=sharing&ouid=108870014519956519924&rtpof=true&sd=true)
- [Upcoming](https://docs.google.com/spreadsheets/d/11urzn5sPQUZDed3mVh7NCw40FUBvQ3RD/edit?usp=sharing&ouid=108870014519956519924&rtpof=true&sd=true)
- [Completed](https://docs.google.com/spreadsheets/d/1wUF6FTC12dAWtV30N4RBi7BKGXl4Xteo/edit?usp=sharing&ouid=108870014519956519924&rtpof=true&sd=true)
- [Recurring tab](https://docs.google.com/spreadsheets/d/1AGbBW660_t_HGm-EK208a24AuT5QqpF1/edit?usp=sharing&ouid=108870014519956519924&rtpof=true&sd=true)

Sample file of PDF

- [Open tab](https://drive.google.com/file/d/1vTjg3ggvOYZ0OxH07FuUUUptfNSxuwEU/view?usp=sharing)
- [Upcoming](https://drive.google.com/file/d/1r-iTQ1bLQVeNSperYbw04MER3j7W6gw_/view?usp=sharing)
- [Completed](https://drive.google.com/file/d/16_A3Ptn115odmfmJpI1tnckdAxA6kIfz/view?usp=sharing)
- [Recurring tab](https://drive.google.com/file/d/1pEPWg5YKQeZDAUeN_ZPe1QdUFAGBdCAS/view?usp=sharing)

Tooltip message
- Excel: `Export as Excel`
- PDF: `Export as PDF`