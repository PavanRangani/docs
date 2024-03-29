# Browse My Tasks

Every Athena user has a personal Task Queue that’s maintained by the system, includes all tasks for which the user is listed as Responsible, Accountable, or Informed.

Multi-Step task where user is responsible in Sub-Task is also considered as task in user's queue. When last Sub-Task is marked as done, that Multi-Step task will be removed from user's queue.

## Browse Open tasks
### UX Rule

- Shows open task whose start date is passed.
- When there isn't any tasks available in this page, shows proper message

#### Group By
- Each Tasks are grouped by: `Group by Due Date` or `Group by Priority` or `Group by Status` or `Group by Tag`
- Shows tasks count with each group. When there isn't any task available in any bucket, that bucket won't be available.

#### Group by Due Date
- Overdue: Tasks whose Due date is passed
- Today: Tasks whose Due date is today
- Next Day: Tasks whose Due date is tomorrow.
- This Week: Due Date is in this week, ending on upcoming Saturday midnight Pacific time. 
- Next Week: Due Date is not before the end of this week, but is before the end of next Saturday midnight Pacific time. 
- Future: Due Date is more than 2 weeks away
- No Due Date: Due date is not available
- Sort order in each bucket: Tasks are ascending order of the due date. `No Due date` bucket is always shown at the bottom.

#### Group by Priority
- Records are shown in buckets of `Critical`, `High Priority` & `Normal`.
- If any sub-tasks has priority but its task hasn't, task will be shown in bucket based on task priority. (Not a sub-task's priority) 
  - For e.g. If any sub-task has `Critical` priority but the task has `Normal` priority , that task will be shown in the `Normal` bucket instead of `Critical`.
- Sort order in each bucket: Tasks are ascending order of the due date. 

#### Group by Status
- Records are shown in buckets of `Ready`, `In Progress`, `On Hold`, `Blocked` & `NA`.
- Sorting order in each bucket: Tasks are ascending order of the due date. 

#### Group by Tag
- Records are shown in buckets of, `Money Movement - Wire`, `Money Movement - Journal`, `Money Movement - Check / ACH`, `Operations - Capital Call`, `Operations - Distribution`, `Operations - QSBS`, `Trading – Cash Raise`, `Trading – General`, `Trading – Loss Harvest`, `Trading – Rebalance` & `Other`
- Tasks without tag are shown under `Other` bucket.
- Sorting order in each bucket: Tasks are ascending order of the due date.


**Columns of the My tasks page:** 

- Entity - If an entity has [display name](../legal-entities/display-name.md) then shows it otherwise shows legal name.
- Section/Tag
  - Shows task tag in the next line of the section. 
  - For `Multi-step` task, if task has more than one tag, each tag appears on a new line.
- Task
  - Name of the task
  - All types of task except `Multi-Step` task, if task name is too long then it appears in the next line. (Never show ellipsis)
  - `Sub-task`
    - Shows only those `Sub-Tasks` where the login user is added as a Responsible role.
    - Shows all `Sub-tasks` if the login user is added as an Accountable role of the parent task.
    - Sub-task is not visible if the login user is added as a Informed role of the parent task.
    - `Sub-Tasks` are primarily sorted in ascending order of due date. Done subtasks are shown at the bottom.
    - If a sub-task has a tag, it shows in the last of the sub-task.
    - If a sub-task has a priority, shows star icon for `High Priority` & `Critical` priority.
  - Originated detail is showing in secondary information.
  - For `Meeting/Notes`, show meeting name like `Originated from: “{meeting name or Note name}"` and For `Task Source`, shows information like `Originated from {Task Source}: {Date}`
- Due Date
  - If the date is already passed then it shows in the red colour.
  - For `Multi-Step` task,
    - Shows date range in the Due date column for the Parent task. Date range is shown as per the RAI roles.
    - Parent task will have concept of Range due date (System will auto define based on Smallest subtasks to Highest subtasks due date)
      - If login user is Responsible, then it shows only Due date range of own sub-task (not parent task range)
      - If login user is Accountable, then it shows only Parent task date range of. (So date range will be {Lowest due date of sub-task}-{Highest due date of sub-task})
      - If login user is a Informed, then it shows the highest due date of sub-task.
    - If only one date is available then show only single date instead of date range. When all sub-tasks are marked as done then parent task have only one due date (So not show date range)
    - When sub-task is marked as Done, Parent task range of Due date will be auto changed.
    - Multi-step tasks don't have a Due date. So it shows the date range instead of the due date. Here the logic of Date range is: `{Minimum due date of Sub-task} - {Maximum due date of Sub-task}`
    - Shows the Due date of the overdue sub-task in red color. 
    - Shows `-` if the sub-task is done.
- Status
  - `In Progress` status is shown in the green colour.
  - `Blocked` status is shown in the red colour.
  - `On Hold` status is shown in the golden colour.
- Responsible
  - Shows short name of the user `{First name + First character of Last name}` (For e.g. `Keith V.`) to save the horizontal space on page 
  - In case of Multiple users, shows in the separate line
  - Shows - when value is blank.
  - For the `Multi-Step` task, shows name of the selected user. If Sub-Task has multi-user then shows first name of the each user with comma seprator (If it's too long, show an ellipse. Never shows in multiline). On hover, the tooltip shows. The tooltip shows the full name of all users.
  - For task having `Client Services - Money Movement` category subtasks, shows `Initiate` and `Approve` user in the responsible column.
- Accountable: Same as Responsible
- Informed: Same as Responsible
- On hover, show hover effect and vertmore action at the right side.
  - Vertmore action for the Open task : `Mark as Read`, `View Meeting`, `View Note`, `Edit`, `Change Priority` & `Delete`
    - `Mark as Read` action applies if the tags are `New` or `Reopen` or `Restored` apllied or Chat is unread.
    - `View Meeting` action is applicable to Meeting task and `View Note` action is applicable only for Note task. On click, redirects user to that meeting/notes view page.
- **Quick Edit action from list page**
  - Shows edit icon on hover of the `Status`, `Due date`, `RAI` with the value. In case of multiple, it will be shown at only first record.
    - For the `Multi-step` task, quick action is not applicable for the Due date. (Because the Multi-step task has a due date range, so we aren't allowed to change the date range).
- Shows `Restored` tag when any task is restored from deleted tab.
- Shows star icon for `High Priority` & `Critical` priority tasks.
- On click of task, opens view dialog of that task.
- **Sorting order** in each bucket: 
  - For task having date-range: Ascending order of the From date of the date range
  - For Normal task (Single date): Ascending order of the due date.
- **Quick Action**
  - [See more details](./task-instance.md#quick-action)

**Mark as Read:** If the user performs the `Mark as Read` action for a task, the system will auto-read all Chat notification and Task notifications for that task.

**Blue dot:** For the tasks where login user is Responsible or Accountable, shows the blue dot icon in first column to clearly distinguish it

**Multi-Step icon:** It indicates that a particular task is a Multi-Step task.

**Recurring icon:** For the recurring tasks, shows the icon to distinguish it from the one time tasks.

**Priority icon:**  Based on Priority task, it shows priority icon. Task with normal priority, its doesn't shows any icon. Task with critical or High priority, it shows star icon.

**CA Pool icon:**  If task is assigned to CA Pool ever, this icon appears with the task. If CA Pool is removed from the task then also icon is shown. It indicates that this task is `pooled`. 

**Tags:** When a task appears in a bucket for the first time, and the user has not yet clicked upon it, show it highlighted, e.g. with a `NEW` flag like in Kerika. Same way shows `Reopened` tag for the reopened task. 

**Chat icon:** Show Chat icon at the right side for the task which has any Chat. If Chat is read, it shows a Green icon. If Chat is unread, it shows Orange icon. On Click of Chat icon, it opens Task dialog where directly Chat tab is opened

**Pin icon:** Shows Pin icon at the right side for the pinned task. [See more details](./pin.md) 

System maintains Read/Unread status for each users separately. For e.g. Two users are associated in same task - User1 and User2. When User1 mark task read, system will still show New tag for User2. User2 need to mark as read on their own. 

### UI Rules
- Message when no task available: `No Task Available`
- Mockup when task has Sub-Task [See this](https://drive.google.com/file/d/1_PmBinJ91aPezGMWwwl63VBG6h8rMlAv/view)
- Mockup when group by Priority. [See this](https://drive.google.com/file/d/1lcoOIxTkzwO6yYt6BLlHRRxbcKIqemZD/view?usp=sharing)
- Mockup when group by Due date [See this](https://drive.google.com/file/d/1kpBhzGzuVDMlekiqiy0vdjI34b_H4s-9/view?usp=sharing)
- Mockup when group by Status [See this](https://drive.google.com/file/d/1JpIezvQBHXHrSxKpj0jn6cxbbEah9_-4/view?usp=sharing)


## Browse Upcoming task

### UX Rule
- Show upcoming tasks whose start date is arrived.  
- Show proper message when no tasks available in this page.
- Almost all Columns are the same as the open tasks tab. Only difference are below:
  - Upcoming task don't have any status. So the status column is not available here. 
  - `Start Date` column shows start date of the tasks.
  - **Sorting order**: Tasks in this page are sorted in Ascending order of the start date. 
  - Due date column: It always shows the parent task due date range. (It doesn’t matter when user is added in any role)
- The `New`, `Reopen` and `Restored` tags will not be shown in this tab
- Other logic of the `Blue dot`, `Recurring icon`, `Chat Icon` and `Priority` are same as the Open tab.
- On hover, show hover effect and vertmore action at the right side.
  - Vertmore action: `View Meeting`, `View Note`, `Edit`, `Change Priority` & `Delete`
  - `View Meeting` action is applicable to meeting task and `View Note`  action is applicable to notes task. On click, redirects user to that meeting/notes view page.
- Shows tasks count with table header.
- On click of task, opens view dialog of that task.
- **Quick Action**
  - [See more details](./task-instance.md#quick-action)

### UI Rule
Mockup [See this](https://drive.google.com/file/d/1VeWY8EinPzLU3lg5kxFbqBxDdofmU9j9/view?usp=sharing)


## Browse Completed tasks

### UX Rule
- Show all completed tasks here. Tasks are shown group by year. 
- Column are the same as the open tasks tab. Only difference is below:
  - `Completed By/On` column shows the name of the user who has marked that task as Done along with its completion date.
  - `Start Date` column is not available here. (Task is done and we don't have enough space. So we have decided to not show the start date column here))
  - Due date column: It always shows the parent task due date (Means highest due date of Sub-task).
- **Sorting order**: Task will be sorted descending order of done date. Latest done task will be at top.
- Other logic of the `Blue dot`, `Recurring icon`, `Chat Icon` and `Priority` are same as the current tab.
- On hover, show hover effect and vertmore action at the right side.
  - Vertmore action: `View Meeting`, `View Note` & `Reopen`
  - `View Meeting` action is applicable to meeting task `View Note`  action is applicable to notes task. On click, redirects user to that meeting/notes view page.
  - On click of `Reopen` action, shows confirmation dialog.
- Shows tasks count in table header.
- On click of task, opens view dialog of that task.
- User can not able to add Notes or Chat for Done task

### UI Rule
Mockup [See this](https://drive.google.com/file/d/1Lo-glheCiAtCksWt8vsdfrMtN8KfrwRV/view?usp=sharing)


## Browse Recurring tasks

### UX Rule
- Shows all triggers of the recurring tasks. (Regardless the users)
- Columns are the same as the open tab. Only difference are below:
  - `Repeats on`: It shows the repeating value of the trigger when new instances will be created.
  - `End Date`: If end date is not available then show `-`.
  - Here triggers has a offset of the `Start Date`. So shows the offset of the `Start Date`.
  - Responsible, Accountable, Informed: It shows the selected families roles. In case of multiple roles, roles are sorted in order of - `Director`, `Advisor`,  `I. Director`, `A. Advisor`, `I. Associate`, `C. Managers`, `C. Associate`, `Operations`, `P. Controller` 
- Sorting order of Recurring task trigger: 
  - Tasks are primary sorted on alphabetical order of `Family` Name. Secondary sorted on alphabetical order of `Entity` name. Tertiary sorting on `Section` and fourth sorting on `Repeats on` in order of- `Weekly`, `Semi Monthly`, `Monthly - On Specific Date`, `Monthly - On Specific Day`,  `Quartly`, `Semi Annual` & `Yearly`. 
- On hover, show hover effect and vertmore action at the right side.
  - Vertmore action: `Edit` & `Delete`
- Shows task triggers count in table header.
- On click, open view dialog of Recurring trigger.

### UX Rule
Mockup [See this](https://drive.google.com/file/d/1ZW2RRXdWRsRi3-upPElI0ziDKATiPGCZ/view?usp=sharing)


## Browse Deleted task

### UX Rule
- Show all Deleted tasks.
- Show proper message when no tasks available in this page.
- Almost all Columns are the same as the open tasks tab. Only difference are below:
  - Shows `Deleted On` & `Deleted By` instead of `Due Date` & `Status`. 
  - **Sorting order**: Tasks in this page are sorted in Descending order of `Deleted On`. (Latest deleted task always shown first)
  - `Sub-Tasks` are primarily sorted in ascending order of due date. Done subtasks are shown at the bottom. 
  - Due date column: It always shows the parent task due date range. (It doesn’t matter when user is added in any role)
- The `New` and `Reopen` tags will be shown in this tab
- Other logic of the `Blue dot`, `Multi-Step icon`, `Recurring icon`, `Chat Icon` and `Priority` are same as the Open tab.
- On hover, show hover effect and vertmore action at the right side.
  - Vertmore action: `Restore`
- On click of task, opens view dialog of that task.
- Shows deleted task count in table header.
- User can not able to add Notes or Chat for Deleted task
- 

### UI Rule
Message when no task available: `No Task Available`
Mockup [See this](https://drive.google.com/file/d/1VeWY8EinPzLU3lg5kxFbqBxDdofmU9j9/view?usp=sharing)



## View as other user

- A `View as` function will allow one user to view another’s Personal Queue. There will be no restrictions on which user can view which other user’s queues.
- Admin user will have `View as Admin` option available using which he/she can see the tasks of all users across the application.
- This function is available in all tabs. 
- Drodpown shows all active and Blocked users.
- For tabs other than the Recurring tab, the system will only show tasks where the selected users are available in the RAI roles of a task.
- For Recurring tab,
  - Recurring tasks have roles instead of users. So the system will show only those triggers where the selected user has any role in the family and that role is selected in the RAI of the trigger.
- Not applicable for the `Multi-Step Templates` tab.
- When user select another user in `View as`
  - It won't show any `New` or `Reopen` tag. 
  - It won't show Unread Chat highlight. 
  - It won't show Blue dot for Responsible and Accountable tasks
- When the user changes tabs or refresh a page, the `View As` value is not reset.

### UX Rule

- By default, login user will be selected. User can change as per needed.
- In the `View as` dropdown, `View as Admin` action is shown first and login user name is shown second and then other user names are shown in alphabetical order.
- When any other user is selected in the `View as`, table header name will change according to the user's name.
- By default table header shows title `My Open tasks`. Now if the user sets `Ravi Hirapara` in the `View as` then it shows ` Ravi Hirapara's Open Tasks`. If user sets View as = Admin, then it shows All Open Task. Example is just for Open tab but same logic applies for Upcoming and Completed tab also.
- When filter is already applied and If user change the value of `View As`, filters won't be reset

### Design Decision
+ Why don't we show the `CA Pool` role in the "View as" dropdown?
  - There is no real life usecase to show `CA Pool` in view as dropdown. That's why we don't show.
- Why we have shown the `Blocked User` in the `View as` dropdown?
  - Blocked user is not removed from the Deleted/Completed tasks. that's why we have shown the blocked user in the view as dropdown.

## Refresh

- On Refresh, the page reloads latest data.
- When data is being loaded, shows `Loading..` message in toast.
- When user has applied some filters and click on the refresh icon, filters will not be reset.

## Filter

### UX Rule
- If the filter doesn't have enough space, it will show in multi-line.
- `RESET` button still shows in the first row. It doesn’t appear in the next line if the filter is shown in the multi-line.
- Not applicable for the `Multi-Step Templates` tab.
- Users are able to change default view. [See more details](./pin-preferred-view.md)


#### My Role

- It is a multi select filter. Default value is `Any`. Values are: `Any`, `Responsible`, `Accountable`, `Informed`
- It's disabled when the user changes the `View as` to `Admin`. 
- If this filter is already applied and the user changes the `View as` to `Admin`, the system will first reset the `My Role` filter to the default state and then disable it.

#### Tag

- It is a multi select filter. Default value is `All`. Values are: `Money Movement - Wire`, `Money Movement - Journal`, `Money Movement - Check / ACH`, `Operations - Capital Call`, `Operations - Distribution`, `Operations - QSBS`, `Trading – Cash Raise`, `Trading – General`, `Trading – Loss Harvest` & `Trading – Rebalance`.
- Its not applicable for `Recurring` tab.

#### Priority

- It is a multi select filter. Default value is `All`. Values are: `Critical`, `High Priority` & `Normal`.
- Its not applicable for `Recurring` tab.
- Records will be shown as per Task's priority. (Not a sub-tasks priority)

#### Status

- It is a multi select filter. Default value is `All`. Values are: `Ready`, `In Progress`, `On Hold`, `Blocked` & `NA`.
- Its a applicable only for `Open` tab.

#### Family

- It is a multi select filter. Default value is `All`.  Shows all associated families of the login user in alphabetical order.
- When other user is selected under `View as`, it shows all families of the application in alphabetical order.

#### Entity

- By default its disable. It will be enable only when any particular Family is selected. Shows all entities of the family which is household or having Service team assigned. - It is a multi select filter. Default value is `All`.
- Entities are sorted on entity type in order of -Joint, Individual, Partnership, Trusts, Foundation, Estate. Each entity type is alphabetically sorted.
- If entity has [Display name](../legal-entities/display-name.md) then shows display name instead of name in dropdown.


#### Section

- It is a multi select filter. Default value is `All`. 
- Values are same as the [Master](./task-instance.md#section-master).
- Its not applicable for `Recurring` tab.

#### Task Type

- It is a multi select filter. Default value is `All`.  Possible values are: `All`, `Systematic`, `Ad-Hoc`, `Meeting/Notes`, `Trade Log`.
- Its not applicable for `Recurring` tab.

#### New/Reopen

- Applicable only for the `Open` tab.
- If this filter is already applied and the user changes `View as` to `Admin`, the system will first reset the `New/Reopen` filter to the default state and then disable it.
- Default value is `Any`. Possible values are: `Any`, `New`, `Reopen`.

#### Duration

- Applicable only for the `Completed` and `Upcoming` tab.
- For `Completed` tab,
  - Values are: `All`, `This Month`, `Last Month`, `This Quarter`, `Last Quarter`, `This Year`, `Last Year`, `Custom`. 
  - Default value is `All`.
  - Duration filter will show tasks based on the `Completed On`. 
  - On click of `Custom`, opens a dialog where user can enter any `From` and `To` date. Future date is not allowed.
    - Validation for `From` & `To` are done in following sequence
      1. First check if date is valid or not. If invalid shows error `Invalid Date` 
      2. Date is future date or not. If future date entered, shows error `Future date is not allowed` 
      3. `From` date is higher than `To` date or not. Otherwise shows error : Date must be >= 'From date'

- For `Upcoming` tab,
  - Values are: `Next 12 months`, `This Year`, `Custom`, `All Time`. Default value is `Next 12 months`.
  - If task having Due date range, then filter will show task based on the from date of the date range.
  - Duration filter will show tasks based on the `Start date`.
  - On click of `Custom` , opens a Custom dialog where user enter a `From` and `To` date. Past date is not allowed
  - Validation for `From` & `To` are done in following sequence
    1. First check if date is valid or not. If invalid shows error `Invalid Date` 
    2. Date is past date or not. If past dates shows error `Past date is not allowed`
    3. `From` date is higher than `To` date or not. Otherwise shows error : Date must be >= 'From date'

#### Repeats On

- It is a multi select filter. Default value is `All`.  Possible values are: `All`,  `Weekly`, `Semi Monthly`, `Monthly - On Specific Date`, `Monthly - On Specific Day`,  `Quartly`, `Semi Annual` & `Yearly`.
- It is applicable only for `Recurring` tab.
- When multiple values are selected, shows proper name in this field. For e.g Suppose user selects 2 values `Semi-Annual` & `Yearly`, `Repeats on` field shows `2 Options`.

#### Include Tax Component

- Currently, not implemented. But in future, we will use this filter.
- Toggle switch. Default value is `ON`. If it is ON, shows the systematic tasks for the tax component. If it is OFF, doesn't shows systematic tasks of Tax Component.