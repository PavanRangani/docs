# Activity View

## Overview
- This view provides details about all the activities across all LPs in single page.


## System Rule
- Shows Open, Completed or Draft activities across all LPs.
- Allows to filter records by: `Asset Manager`, `Activity Type` & `Issue Date`.
- Allows to export activities by Excel


## UX Rule
- Shows activity in 2 tabs: `Open` & `Completed`.
    - Open tab shows those activities which has at least one open task. (Here, open tasks means task whose status other than Done & Deleted)
    - Completed tab shows those activities whose all tasks are either Done or Deleted.
- Shows count of activity with each tab.
- Shows proper message when no records avaialble.
- When there isn't any activity available for any tabs, that tab will be shown disabled and show proper message. Table is not shown.
- Columns 
    - Asset Manager
    - Fund Name
        - If the fund name is too long, shows it in multi line.
        - It is link. On click, opens the details page of the fund where Activity tab is opened in other tab.
    - Activity Type
        - Shows activity type
    - Activity Name
        - If the fund name is too long, shows it in multi line.
        - For `Net with Separate Fund`, shows `Distribution Fund` name in secondary information. Like `Distribution Fund: {Distribution fund name}`
        - Shows `Draft` tag for the draft activity.
    - Issue Date
    - Due Date
        - Shows Due date in red when Due date is passed in Open tab. In completed tab, Due date is never shown Red.
    - Status
        - It shows completed task count in Completed `{Completed or deleted task count} of {Total task count}`. For e.g. Completed 6 of 8. 
        - Shows the details of the remaining task. Like `{Investor Name} | {Task Status}`.
        - Each task is shown in new line. If it is too long, then it appear in the multiline.
- Sorting order: Activities are sorted on Descending order of Issue Date. 
- On mouse hover, shows hover effect. On click of row except Fund name, opens the view dialog of that Activity on same page. 


## UI Rule

Mockup of [Open](https://drive.google.com/file/d/1zI6VLHm-j9ZPgZv6OlvMD_Lp5LWpzxdH/view?usp=share_link) & [Completed](https://drive.google.com/file/d/1NzjV6UO1knfjGcVGl1ZZhfYPwr7bPIlq/view?usp=share_link)

- Placeholder message: `No Records Found`.



## Filter

### UX Rule
- Allows to filter records using `Asset Manager`, `Activity Type` & `Issue Date`.
- Show the RESET button to the right side when the filter is applied. On click, filter will be reset to default state.

### Asset Manager
- Multi-select filter of the Asset Manager.
- Default All asset managers are selected.
- When multiple Asset Managers are selected in the filter, then shows the count in the filter otherwise shows name.
    - Ex. If the user exports the file with 2 asset managers, it shows `2 Asset Managers` in the filter criterias.


### Activity Type
- Multi-select filter of the Activity Type.
- Default All activities are selected.
- Possible values are: `Capital Call`, `Distribution`, `Net` & `Net with Separate Fund`
- When multiple Activities are selected in the filter, then shows the count in the filter otherwise shows name.
    - Ex. If the user exports the file with 2 activities, it shows `2 Activity` in the filter criterias.


### Issue Date
- Values are: `This Month`, `Last Month`, `This Year`, `Last Year`, `Custom`
- Default value is `This Year`.
- On click of `Custom`, opens a dialog where user can enter any `From` and `To` date.
    - Validation for `From` & `To` are done in following sequence
        - First check if date is valid or not. If invalid shows error Invalid Date
        - `From` date should be lower than `To` date. Otherwise shows error in `To` field: Date must be >= From date



## Excel Export

### System Rule
- Export functionality isn't available, when the list page doesn't have any records.
- System allows to user to export Activity with filtered or without filtered.
- Columns and sorting will be the same as the [UI](#ux-rule). Only differences are:
    - `Distribution Fund` are shown in new column after the Activity Name column.
    - Excel shows one extra column `Remaining Tasks` after status column.  
        - Shows the investor name of the remaining task with task status. Like `{Investor name} | {Task Status}` 
- Downloaded Excel file name
    - Open: `open-activities-views.xlsx`
    - Completed: `completed-activities-views.xlsx`
- Shows values of applied Filter Criterias as a table in Excel as per following logic
    - Generated On: Shows date when the excel file is downloaded.
    - Asset Manager: 
        - When multiple Asset Managers are selected in the filter, then shows the count in the filter otherwise shows name.
        - Ex. If the user exports the file with 2 asset manager, shows 2 Asset Managers in the filter criterias.
    - Activity Type: 
        - When multiple Activity types are selected in the filter, then shows each activity type name in the filter. Ex. If the user exports the file with 2 activity type, shows 2 Activity name in the filter criterias. Like `Caoital Call, Distribution`.
    - Issue Date: It shows `{From Date} - {To Date}`.
- Shows `Created on`, `Created by`, `Updated on` & `Updated by` of the fund as columns in the last.


### UX Rule
- Excel icon won't be shown when the list page doesn't have any records.
- On click excel file will be downloaded in the same page.

### UI Rule

- [Sample File of Open tab](https://docs.google.com/spreadsheets/d/1wIKkPaqmiKQrG6BAEOCZ09rqBL8fl8yXZka0rxgYORc/edit#gid=0)
- [Sample File of Completed tab](https://docs.google.com/spreadsheets/d/1wIKkPaqmiKQrG6BAEOCZ09rqBL8fl8yXZka0rxgYORc/edit#gid=2133400158)



### Design Decison

**Why do we show `Remaining Task` and `Status` in a single cell?**
- If the remaining task is shown in different rows, multiple rows have to be shown for a single activity. Almost all values will be repeated in all the rows except `Remaining Task`. Doing so will render Excel completely unusable. Therefore, the remaining tasks are shown in single cells separated by commas.