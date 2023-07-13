# Money Movement View

## Overview

Manager need to generate a report on a daily basis to plan for next day, same day and This Week money movements. It will show only task or sub-tasks that have a Money Movement or a Money Movement-Capital Call.


## System Rule
- Shows all open tasks or sub-tasks having `Money Movement` or `Money Movement - Capital Call` tag. (Normal or Multi-step)
- User can see 2 types of reports: `Next Day Money Movement` & `Same Day Money Movement`
- When subtask doesn’t have a due date but it has `Money Movement` & `Money Movement - Capital Call` tag then also that sub-tasks won’t be shown. 
- Suppose when all sub-tasks is marked as done but the parent task is still open then also that task won't be shown.
- Done sub-tasks won't be shown.

### Next Day Money Movement
- On Monday to Thursday, it shows buckets: Next Day & This Week
- On Friday, Saturday & Sunday, it shows buckets - Next Day & Next Week. (Here, Next day will be Next Monday tasks) 
    - Due to this, it can happen that user can't see any tasks of Saturday or Sunday during Friday to Sunday using this report.
- Only subtasks according to buckets will be visible under task. Other sutasks won't be visible. Same task is not repeated in multiple buckets. 
    - Consider a task having five subtasks. 1 & 2 sub-tasks due date falls in “Next day” bucket and 3, 4 & 5 sub-tasks due date falls in “This Week” bucket. So when user opens this view, this task will appear only in the "Next Day" bucket where it will show only subtasks 1 & 2. 
    - Consider a task having five subtasks. Subtask 1 is overdue. Subtask 2 due date falls in “Next day” bucket and Subtask 3, 4 & 5 sub-tasks due date falls in “This Week” bucket. So when user opens this view, this task will appear only in the "Next Day" bucket and it shows only subtask 2. 

### Same Day Money Movement
- It shows buckets: Overdue & Today
- When user opens this view from Saturday & Sunday, it shows Saturday & Sunday task in Today bucket. 
- Consider a task having 2 subtasks. Subtask 1 is overdue and Subtask 2 due date falls in `Today` bucket.  So when user opens this view, this task will appear only in the "Overdue" bucket and it shows only subtask 2.  


## UX Rule
- Shows `Report Type` dropdown to right side of the header.
    - Values are: `Next Day Money Movement` & `Same Day Money Movement`
    - Default `Next Day Money Movement` report is selected. 
- Shows task count with each bucket.
- If any bucket has no task avaialble, that bucket is shown with `0` count in Views.
- Views header have one back arrow. On click, redirects user to the list page.
- Columns name
    - Entity
    - Task
        - All types of task except `Multi-Step` task, if task name is too long then it appears in the next line. (Never show ellipsis)
        - Originated detail is showing in secondary information.
        - Sub-tasks
            - Shows tag in the last of the sub-task.         
    - Due Date
        - If task has more than one sub-tasks with diffrent due date, shows date range otherwise shows single date.
        - For Multi-step task, Overdue sub-tasks due date will be shown in red color.
        - For normal task, shows overdue due date in red color.
    - Status
        - `In Progress` status is shown in the green colour.
        - `Blocked` status is shown in the red colour.
        - `On Hold` status is shown in the golden colour.
    - Responsible
        - If task or sub-tasks have more than one responsible, shows multiple responsible comma separated.
- Sorting order in each bucket: 
    - For task having date-range: Ascending order of the From date of the date range
    - For Normal task (Single date): Ascending order of the due date.
- On click of records, open task view dialog in same page.
- Shows `Mutli-step`, `Recurring`, `Priority` & `CA Pool` icon with task if applicalbe.
- Shows Chat icon if the task has Chat. (Here, if login user has unread chat then also shows normal chat icon instead of unread icon)
- By default, bucket will be shown in open mode. Bucket has one UP icon. On click, shrink the bucket and shows DOWN icon. 

## UI Rule
- [Next day list page mockups](https://drive.google.com/file/d/1MZ53nfVWUImk1jGaygD0Lu_ddJz9l0af/view?usp=drive_link)
- [Same day list page mockups](https://drive.google.com/file/d/1NB2qx_cDv9hFtje8dIfECmXkrspBcWW4/view?usp=drive_link)


## Refresh

### UX Rule
- Shows Refresh icon to the right side of the header.
- On refresh, page reloads latest data.
- When data is being loaded, shows `Loading..` meesage in toast.


## PDF Export

### System Rule
- Export functionality isn't available, when the page doesn’t have any records.
- Downlaoded PDF file name: 
    - Next Day: `next-day-money-movement-tasks.pdf`
    - Same Day: `same-day-money-movement-tasks.pdf`
- Columns and sorting order will be same as [UI](#ux-rule) except following
    - When any task has priority set to High and Critical, then only priority icon space is given (Because Sue wants to show tasks column as much as widen.)
    - On UI, overdue bucket is shown first but in PDF, it will be shown at last. (As per Sue requirement)

### UX Rule
- PDF icon is disabled when the list page doesn't have any task.
- On click, PDF file will be downloaded in same page.

### UI Rule
[Sample file of Next day](https://drive.google.com/file/d/1HjLIbZDDCKwzZfbc3I6_lPAUQtThLgXW/view?usp=drive_link)
[Sample file of Same day](https://drive.google.com/file/d/1zr-Ai512R8ZBtiH0-kocLvWGys7kejQ4/view?usp=drive_link)



## Design Decision

### Why we have not shown any filter in this view?
- This report will show only `Money Movement` or `Money Movement - Capital Call` tag tasks. Our assumption is there won't be much tasks in this page. Sue also had not given any requirements for filter. So we decided to not put any filter until Clarius team needs it in real life
