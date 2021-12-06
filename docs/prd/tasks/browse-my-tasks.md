# Browse My Tasks

Every Athena user has a personal Task Queue that’s maintained by the system, includes all tasks for which the user is listed as Responsible, Accountable, Consulted, or Informed.



## Browse Open tasks

Each Tasks in this page is organized into the following group (buckets):

**Overdue**: Tasks whose Due date is passed

**This Week**: Due Date is in this week, ending on upcoming Saturday midnight Pacific time. 

**Next Week**: Due Date is not before the end of this week, but is before the end of next Saturday midnight Pacific time. 

**Future**: Notification Date is more than 2 weeks away

**Done**: All tasks marked as Done in the last 15 days. User is Responsible or Accountable.

Shows tasks count with each group and tabs. When there isn't any task available in any bucket, that bucket won't be available.

When there isn't any tasks available in this page, shows proper message

**Columns of the My tasks page:** 

- Entity - Display Name of the legal entity
- Section - Name of the section
- Task - Name of the task
  - Show meeting/notes name in the secondary information for the meeting/notes task For e.g. `Originated from {Meeting} or {Notes}: “{meeting name or Note name}"`
- Start Date
- Due Date
  - If the date is already passed then it shows in the red colour.
- Status
  - `In Progress` status is shown in the green colour.
  - `Blocked` status is shown in the red colour.
  - For `Done` task, shows the name of the user who has marked that task as Done along with its completion date.
- Responsible
  - Shows short name of the user `{First name + First character of Last name}` (For e.g. `Keith V.`) to save the horizontal space on page 
  - In case of Multiple users, shows in the separate line
  - Shows - when value is blank
- Accountable : Same as Responsible
- Consulted: Same as Responsible
- Informed: Same as Responsible
- On hover, show hover effect and vertmore action at the right side.
  - Vertmore action: `Mark as Read`, `View Task`, `Edit`, `Change Status`, `Reopen` & `Delete`
  - `Mark as Read` action is applicable only for the tasks with `New` and `Reopen` tags.
  - `View Task` action is applicable to meeting/notes task. On click, opens task view dialog.
  - `Reopen` action is applicable for Done task.
  - `Edit` action is not applicable for the `Recurring task`.
  - `Delete` action is not applicable for the `Done` tasks
  - On click of `Reopen`, shows confirmation dialog.
- On click of `Meeting/notes` task, redirects user to that meeting/notes view page.
- On click of `Ad-hoc` & `Recurring` task, open view dialog of that task.

**Sort order in each bucket** : All other task except done task, tasks are ascending order of the due date. Done task are sorted in ascending order of done date.

**Blue dot:** For the tasks where login user is Responsible, shows the blue dot icon in first column to clearly distinguish it

**Recurring icon:** For the recurring tasks, shows the icon to distinguish it form the one time tasks.

**Tags**: When a task appears in a bucket for the first time, and the user has not yet clicked upon it, show it highlighted, e.g. with a NEW flag like in Kerika. Same way shows `Reopened` tag for the reopened task. System maintains 

Read/Unread status for each users separately. For e.g. Two users are associated in same task - User1 and User2. When User1 mark task read, system will still show New tag for User2. User2 need to mark as read on their own. 

### Common Scenarios of Browse tasks tab

#### Rule 1: Shows `Blue dot` for that task where the login user is added as a Responsible.

| Tasks   |
| ------- |
| Meeting |
| Note    |
| Ad-hoc  |

##### Scenario 1.1

Given: I have added 4 open tasks and 2 done tasks in the {Tasks}.

And: `Ravi` has been added to the Responsible role for all those tasks.

When: `Ravi` opens the `Browse Open` task tab

Then: It shows me `Blue dot` icon for that 6 (4 open tasks and 2 done tasks) tasks in the first column.

##### Scenario 1.2

Given: I have added 4 open tasks and 2 done tasks in the {Tasks}.

And: `Ravi` has been added to the Responsible role for only done tasks.

When: `Ravi` opens the `Browse Open` task tab

Then: Shows `Blue dot` icon only for 2 done tasks in the first column.

##### Scenario 1.3

Given: I have added 4 open tasks and 2 done tasks in the {Tasks}.

And: `Ravi` has been added to the Responsible role for all those tasks.

And: `Ajay` has been added to the Informed role for all those tasks.

When: `Ajay` opens the `Browse Open` task tab

Then: All tasks are shown without `Blue Dot` icon.

##### Scenario 1.4

Given: I have added 4 open tasks and 2 done tasks in the {Tasks}.

And: `Ravi` has been added to the Responsible role for only 4 open tasks.

When: `Ravi` opens the `Browse Open` task tab

And: All tasks are shown me with the `Blue Dot` icon

And: Now I changed the user role from `Ravi` to `Trupati` for the 2 open tasks.

Then: `Blue dot` icon only for 2 open tasks in the first column.

#### Rule 2: Shows `Recurring icon` for the recurring tasks.

##### Scenario 2.1

Given: I have added one trigger for the recurring tasks.

And: `Ravi` has been added to the Responsible role for that trigger. 

And: That trigger has two instances. One in Open tab and one in Upcoming tab.

When: `Ravi` opens the `Browse Open` task tab

Then: Shows `Recurring` icon for the instances of the recurring task.

##### Scenario 2.2

Given: I have added one trigger for the recurring tasks.

And: `Ravi` has been added to the Responsible role for that trigger. 

And: That trigger has three instances. One instance is already done and One in Open tab and one in Upcoming tab.

When: `Ravi` opens the `Browse Open` task tab

Then: Shows `Recurring` icon for the instances of the recurring task (Done + Open)



### Scenarios of Browse Open tasks

#### Rule 1:  `Overdue` bucket shows those task whose due date is passed.

Scenario 1.1 - Normal case - Due date is passed

Scenario 1.2 - Normal case - Due date is not passed

Scenario1.3 - Case - Start date is passed but due date is not passed

#### Rule 2: `This Week` bucket shows those tasks whose due date is in this week.

Scenario 2.1 - Due date is not available in this week

Scenario 2.2 - Due date is available in this week.

Scenario 2.3 - Due date is available in the past week.

Scenario 2.4 - When start date in this week and due date is not in this week.

#### Rule 3: `Next Week` bucket shows those tasks whose due date is in next week.

Scenario 3.1 - Due date is not available in this week not a next week

Scenario 3.2 - Due date is available in next week.

Scenario 3.3 - When start date in next week

#### Rule 4: `Future Week` bucket shows those tasks whose due date is more than 2 weeks away. 

#### Rule 5: `Done` bucket shows all tasks marked as Done in the last 15 days.

Scenario 5.1 - Task is mark as done in last 15 days

Scenario 5.2 - Task isn't mark as done in last  days.

#### Rule 6: When there isn't any task available in any bucket, that bucket won't be available.

Scenario 6.1 - `Done` bucket is not available

Scenario 6.2 - `This Week` bucket is not available.

Scenario 6.3 - `Next Week` bucket is not available.

Scenario 6.4 - `Future Week` bucket is not available.

Scenario 6.5 - `Overdue` bucket is not available.

Scenario 6.6 - Show proper message when no bucket av

#### Rule 7: For `Task` column, show meeting/notes name in the secondary information for the meeting/notes task.

Scenario -  Applicable for all bucket

#### Rule 8: If the due date is passed for the open task then it shown in red colour.

Scenario 8.1 - When due date of the open task is passed.

Scenario 8.2 - When due date of the done task is passed.

#### Rule 9: `In Progress` status is shown in the green colour and `Blocked` status is shown in the red colour.

#### Rule 10: For `Done task`, shows the name of the user who has marked that task as Done along with its completion date.

#### Rule 11: Show short name of the user in the RACI Roles

Scenario 11.1 - If the multiple user is added, shows in the separate line.

Scenario 11.2 - Show `-` when no user available.

Scenario 11.3 

| Roles       |
| ----------- |
| Responsible |
| Accountable |
| Consulted   |
| Informed    |

#### Rule 12: For new task, shows `New` tag.

#### Rule 13: For reopen task, show `Reopen`ed task.

#### Rule 14: Read/Unread status for each users separately.

##### Scenario 14.1: Two users are associated in same task - User1 and User2. When User1 mark task read, system will still show New tag for User2. User2 need to mark as read on their own.



## Browse Upcoming tasks

- Show upcoming tasks whose notification date is arrived.  
- Show proper message when no tasks available in this page
- Almost all Columns are the same as the open tasks tab. Only difference are below:
  - Upcoming task don't have any status. So the status column is not available here. 
  - New column `Notification Date` shows the `Notification Date` of tasks
  - Sorting order: Tasks in this page are sorted in descending order of the notification date. 
- The `New` and `Reopen` tags will not be shown in this tab
- Other logic of the `Blue dot` and `Recurring icon`  is same as the current tab.
- On hover, show hover effect and vertmore action at the right side.
  - Vertmore action:  `View Task`, `Edit` & `Delete`
  - `View Task` action is applicable to meeting/notes task. On click, opens task view dialog.
  - `Edit` action is not applicable for the `Recurring task`.
- On click of `Meeting/notes` task, redirects user to that meeting/notes view page.
- On click of `Ad-hoc` & `Recurring` task, open view dialog of that task.

### Scenarios of Browse Upcoming tasks



## Browse Completed tasks

- Show all completed tasks here. Each tasks group by year. 
- column are the same as the open tasks tab.
- Sorting order: Task will be sorted descending order. Latest done task will be at top.
- Other logic of the `Blue dot` and `Recurring icon`  will be the same as the current tab.
- On hover, show hover effect and vertmore action at the right side.
  - Vertmore action: `View Task` &  `Reopen`
  - `View Task` action is applicable to meeting/notes task. On click, opens task view dialog.
  - On click of `Reopen`, shows confirmation dialog.
- On click of `Meeting/notes` task, redirects user to that meeting/notes view page.
- On click of `Ad-hoc` & `Recurring` task, open view dialog of that task.



## Browse Recurring tasks

- Shows all triggers of the recurring tasks.
- Columns are the same as the open tab. 
- Here triggers has a offset of `Notification Date` and `Start Date`. So shows the offset of the `Notification Date` and `Start Date `.
- Sorting order: 
  - Tasks are primary sorted on alphabetical order of `Family` Name. Secondary sorted on alphabetical order of `Entity` name. Tertiary sorting on `Section` and fourth sorting on `Repeats on`. 
- Shows `Recurring icon` for the recurring task.
- On hover, show hover effect and vertmore action at the right side.
  - Vertmore action: `Edit` & `Delete`
- On click, open view dialog of Recurring trigger.

#### Notes

Our server is running on UTC but Chron job will run on Pacific time.



## View as other user

- A `View as` function will allow one user to view another’s Personal Queue. There will be no restrictions on which user can view which other user’s queues.
- Admin user can see tasks across the application. Admin will have  `View as Admin` option available using which he/she can see the tasks of all users across the application.
- This function is applicable in all tabs.

### UX Rule

- By default, login user will be selected. User can change as per needed.
- When any other user is selected in the `View as` , table header will change according to the user's name.
  - For e.g. If the `Ajay Dhameliya` is a login user and table header name is `My Open Tasks`. Now if user sets `Ravi Hirapara` in the `View as`then the name of the table header will be changed to `Ravi Hirapara's Tasks`.



## Mark As read

## Reopen

- On Reopen, shows confirmation dialog. [See this](https://drive.google.com/file/d/1pEFvVMgBtnmxgV8T_wGjzsxmhLUGJq7m/view?usp=sharing)
- On confirmation, task will be reopened based on due date.
  - For e,g. Suppose the current date is `27/11/2021`. Open tab has one done task whose notification date is `15/11/2021` and start date is `20/11/2021` and Due date is `02/12/2021` and its completion date is `25/11/2021`. Now user want to reopened that task. So the task will be reopened and moved to the `This week` bucket. (Due date is next week)



## Export

Show PDF, Excel icons

On click of PDF, the pdf file will be downloaded for the same browser.

On click of Excel, the excel file will be downloaded for the same browser.

Both function are applicable in all tabs.

//TODO: File names

//TODO: Sample PDF and Excel



## Refresh

On Refresh, the page reloads latest data on page.



## Filter

Provides a way to filter tasks using following filters. When any of the filter is applied then show `RESET` button. On click, all filters are reset and set to default state.

### Task Type

- It is a multi select filter. Default value is `All`.  Possible values are: `All`,  `Systematic`, `Ad-Hoc`, `Meeting/Notes`

- Its not applicable for `Recurring` tab.

### Family

It is a multi select filter. Default value is `All`.  Shows all families in alphabetical order.

When other user is selected under `View as`, it shows all families of the application.

### Entity

By default its disable. It will be enable only when any particular Family is selected. Shows all entities of the selected family. It is a multi select filter. Default value is `All`.

### Section

- It is a multi select filter. Default value is `All`. 
- Its not applicable for `Recurring` tab.

### Status

- It is a multi select filter. Default value is `All`. Values are: `Notified`, `Ready`, `In-Progress`, `Blocked`, `Done`.

- Its not applicable for `Recurring` and `Completed` tabs.

### My Role

It is a multi select filter. Default value is `All`. Values are: `All`, `Responsible`, `Accountable`, `Consulted`, `Informed`

### Include Tax Component

Toggle switch.  Default value is `ON`.  If it is ON, shows the systematic tasks for the tax component. If it is OFF, doesn't shows systematic tasks of Tax Component.

### Duration

- It is a single input filter. Default value is `All`. Values are: `All`, `This Month`, `Last Month`, `This Quarter`, `Last Quarter`, `This Year`, `Last Year`, `Custom`.
- On click of `Custom`, open a custom filter where user can added a date period. `From` date is always higher than `To` date. 
- Applicable only for the `Completed` tab.

### Repeats On

- It is a multi select filter. Default value is `All`.  Possible values are: `All`,  `Monthly`, `Quarterly`, `Semi Annual`, `Yearly`.

- It is applicable only for `Recurring` tab.



## Show Future Tasks

This feature allows user to run a report for showing them what is on the future docket. This is also useful to show the future tasks of upcoming year to the clients.

It shows all of the tasks (One time or recurring) in selected duration even if its date is not arrived. If there is a monthly recurring task, this report will show it 12x times.

### UX rules

- Shows checkbox of `Show future tasks` in Upcoming tab

- On click of the checkbox, it shows all the future tasks for selected Duration. 
- By default it shows `This Year` in duration. Possible values of `Duration`: This Year, Next Year, Next 12 months, Custom
  - This year means current calendar year. Next year means next calendar year. Next 12 months means, next 365 days from today. 
  - Custom means, user can select `From` and `To` date manually on his own. It will only allow to select future dates.
- Sorting: Records are sorted on ascending order.

