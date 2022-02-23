# Browse My Tasks

Testing task added by Ravi //Please remove this line

Every Athena user has a personal Task Queue that’s maintained by the system, includes all tasks for which the user is listed as Responsible, Accountable, Consulted, or Informed.

## Browse Open tasks

Each Tasks in this page is organized into the following buckets: Group by Due Date or Group by Priority or Group by Status

#### Group by Due Date

- **Overdue**: Tasks whose Due date is passed
- **This Week**: Due Date is in this week, ending on upcoming Saturday midnight Pacific time. 
- **Next Week**: Due Date is not before the end of this week, but is before the end of next Saturday midnight Pacific time. 
- **Future**: Due Date is more than 2 weeks away
- **Sort order in each bucket** : All other task except done task, tasks are ascending order of the due date. 

#### Group by Priority

- **Critical**: Task whose priority is critical
- **High Priority**: Task whose priority is High
- **Normal**: Task whose priority is normal
- **Sort order in each bucket** : All other task except done task, tasks are ascending order of the due date. 

#### Group by Status

- **Notified**: Task whose status is `Notified`
- **Ready**: Task whose status is `Ready`
- **In Progress**: Task whose status is `In Progress`
- **Blocked**: Task whose status is `Blocked`
- **Sorting order in each bucket:** All other task except done task, tasks are ascending order of the due date. 

`Done` bucket will shows the all task marked as Done in the last 15 days. It will always shows in last. Done task are sorted in descending order of done date. When user change the group by, this changes won't be reflected in Done bucket.

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
  - Vertmore action for the Open task for `Meeting/note` & `Ad-Hoc` : `Mark as Read`, `View Meeting`, `View Note`, `Edit`, `Change Status`, `Change Priority` & `Delete`
    - `Mark as Read` action is applicable only for the tasks with `New` and `Reopen` tags.
    - `View Meeting` action is applicable to Meeting task and `View Note` action is applicable only for Note task. On click, redirects user to that meeting/notes view page.
  - Vertmore action for the `Done` tasks: `View Meeting`, `View Note` & `Reopen`
- Shows star icon for `High Priority` & `Critical` priority tasks.
- On click of task, opens view dialog of that task.

**Blue dot:** For the tasks where login user is Responsible, shows the blue dot icon in first column to clearly distinguish it

**Recurring icon:** For the recurring tasks, shows the icon to distinguish it from the one time tasks.

**Priority icon:**  Based on Priority task, it shows priority icon. Task with normal priority, its doesn't shows any icon. Task with critical or High priority, it shows star icon.

**Tags**: When a task appears in a bucket for the first time, and the user has not yet clicked upon it, show it highlighted, e.g. with a `NEW` flag like in Kerika. Same way shows `Reopened` tag for the reopened task. 

System maintains Read/Unread status for each users separately. For e.g. Two users are associated in same task - User1 and User2. When User1 mark task read, system will still show New tag for User2. User2 need to mark as read on their own. 



## Browse Upcoming tasks

- Show upcoming tasks whose notification date is arrived.  
- Show proper message when no tasks available in this page
- Almost all Columns are the same as the open tasks tab. Only difference are below:
  - Upcoming task don't have any status. So the status column is not available here. 
  - `Notification Date` column shows notification date of the tasks.
  - **Sorting order**: Tasks in this page are sorted in Ascending order of the notification date. 
- The `New` and `Reopen` tags will not be shown in this tab
- Other logic of the `Blue dot`, `Recurring icon`  and `Priority` are same as the current tab.
- On hover, show hover effect and vertmore action at the right side.
  - Vertmore action:  `View Meeting`, `View Note`, `Edit`, `Change Priority` & `Delete`
  - `View Meeting` action is applicable to meeting task and `View Note`  action is applicable to notes task. On click, redirects user to that meeting/notes view page.
- Shows tasks count with table header.
- On click of task, opens view dialog of that task.



## Browse Completed tasks

- Show all completed tasks here. Each tasks group by year. 
- Column are the same as the open tasks tab. Only difference is below:
  - `Completed By/On` column shows the name of the user who has marked that task as Done along with its completion date.

- Sorting order: Task will be sorted descending order of done date. Latest done task will be at top.
- Other logic of the `Blue dot`, `Recurring icon`  and `Priority` are same as the current tab.
- On hover, show hover effect and vertmore action at the right side.
  - Vertmore action: `View Meeting`, `View Note` &  `Reopen`
  - `View Meeting` action is applicable to meeting task `View Note`  action is applicable to notes task. On click, redirects user to that meeting/notes view page.
  - On click of `Reopen` action, shows confirmation dialog.
- Shows tasks count in table header.
- On click of task, opens view dialog of that task.



## Browse Recurring tasks

- Shows all triggers of the recurring tasks. (Regardless the users)
- Columns are the same as the open tab. Only difference are below:
  - `Repeat on` : It shows the repeating value of the trigger when new instances will be created.
  - Here triggers has a offset of `Notification Date` and `Start Date`. So shows the offset of the `Notification Date` and `Start Date `.
  - Responsible, Accountable, Consulted, Informed: It shows the selected families roles. In case of multiple roles, roles are sorted in order of - `Director`, `Advisor`,  `Investment Director`, `Associate Advisor`, `Investment Associate`, `Client Managers`, `Client Associate`, `Operations`, `Personal Controller` 
- Sorting order: 
  - Tasks are primary sorted on alphabetical order of `Family` Name. Secondary sorted on alphabetical order of `Entity` name. Tertiary sorting on `Section` and fourth sorting on `Repeats on` in order of `Monthly`, `Quartly`, `Semi Annual` & `Yearly`. 
- Shows `Recurring icon` for the recurring task.
- On hover, show hover effect and vertmore action at the right side.
  - Vertmore action: `Edit` & `Delete`
- Shows task triggers count in table header.
- On click, open view dialog of Recurring trigger.

#### Notes

Our server is running on UTC but Chron job will run on Pacific time.



## View as other user

- A `View as` function will allow one user to view another’s Personal Queue. There will be no restrictions on which user can view which other user’s queues.
- Admin user can see tasks across the application. Admin will have  `View as Admin` option available using which he/she can see the tasks of all users across the application.
- This function is applicable in all tabs other than `Recurring` tab.

### UX Rule

- By default, login user will be selected. User can change as per needed.

- In the `View as` dropdown, `View as Admin` action is shown first and login user name is shown second and then other user names are shown in alphabetical order.

- When any other user is selected in the `View as`, table header name will change according to the user's name.
  - For e.g. If the `Ajay Dhameliya` is a login user and the table header name of the {Tab name} tab is `{Before Table header name}`. Now if the user sets `Ravi Hirapara` in the `View as` then the name of the table header will be changed to following table:
  
    | Tab name  | Before Table header name | After Table header name        | After `View as Admin` |
    | --------- | ------------------------ | ------------------------------ | --------------------- |
    | Open      | My Open Task             | Ravi Hirapara's Open Task      | All Open Task         |
    | Upcoming  | My Upcoming Task         | Ravi Hirapara's Upcoming Task  | All Upcoming Task     |
    | Completed | My Completed Task        | Ravi Hirapara's Completed Task | All Completed Task    |
  
- When user select `View as Admin` action in the `View as` dropdown then table header name will be changed to {After View as Admin}.

**Case**

- When the filter is already applied and then I select another person as a `View as`, filters won't be reset. It will show the task of the particular user with already applied filters.
  - For e.g. I have opened an `Open` tab where I am the `View As` and I have selected `Ad-hoc`  filter in the `Task Type` filter. Now I changed the `View as ` to `Pavan Rangani` then filter won't be reset. It will show me `Ad-hoc` task of Pavan.



## Mark as Read

[See this](./in-app-notifications.md/#mark-as-read)



## Reopen

- On Reopen, shows confirmation dialog. [See this](https://drive.google.com/file/d/1pEFvVMgBtnmxgV8T_wGjzsxmhLUGJq7m/view?usp=sharing)
- On confirmation, task will be rearranged based on due date.
- On confirmation, task status will be auto set based on start date.
  - For e.g. Suppose the current date is `27/11/2021`. Open tab has one done task whose notification date is `15/11/2021` and start date is `20/11/2021` and Due date is `02/12/2021` and its completion date is `25/11/2021`. Now user want to reopened that task. So the task will be reopened to `This week` bucket and status will be set to `Ready`. 




## Refresh

On Refresh, the page reloads latest data on page.

**Case:**

- If I have applied some filters and I click on the refresh icon, only the page will be refreshed and the filters will not be reset.



## Filter

Provides a way to filter tasks using following filters. When any of the filter is applied then show `RESET` button. On click, all filters are reset and set to default state.

On tab switch or page reload, filters will be reset and set to default state.

### My Role

It is a multi select filter. Default value is `Any`. Values are: `Any`, `Responsible`, `Accountable`, `Consulted`, `Informed`

### Priority

- It is a multi select filter. Default value is `All`. Values are: `Critical`, `High Priority` & `Normal`.
- Its not applicable for `Recurring` tab.

### Status

- It is a multi select filter. Default value is `All`. Values are: `Notified`, `Ready`, `In-Progress`, `Blocked`, `Done`.
- Its a applicable only for `Open` tab.

### Family

It is a multi select filter. Default value is `All`.  Shows all associated families of the login user in alphabetical order.

When other user is selected under `View as`, it shows all families of the application in alphabetical order.

### Entity

By default its disable. It will be enable only when any particular Family is selected. Shows all entities of the selected family. It is a multi select filter. Default value is `All`.

### Section

- It is a multi select filter. Default value is `All`. 
- Values are: All, Contact, Communication, Assets, Banking, Estate Plan, Gifting, Insurance, Investments, Partnership, Philanthropy, Tax, Trust, Planning, Other
- Its not applicable for `Recurring` tab.

### Task Type

- It is a multi select filter. Default value is `All`.  Possible values are: `All`,  `Systematic`, `Ad-Hoc`, `Meeting/Notes`.

- Its not applicable for `Recurring` tab.



### Duration

#### UX Rule

- Its a single input filter and applicable only for the `Completed` and `Upcoming` tab.
- For `Completed` tab
  - Values are: `All`, `This Month`, `Last Month`, `This Quarter`, `Last Quarter`, `This Year`, `Last Year`, `Custom`. Default value is `All`. 
  - On click of `Custom`, opens a Custom dialog where user enters a `From` and `To` date. Both dates won't be a future date.
  - Sequence of the error validation for `From` & `TO` 
    1. Invalid Error
    2. When user enters a future date
    3. When `From` date is higher than `To` date.


- For `Upcoming` tab
  - Values are: `This Year`, `Next Year`, `Custom`, `All Time`. Default value is `This Year`.
  - On click of `Custom` , opens a Custom dialog where user enter a `From` and `To` date. Both dates won't be a past date.
  - Sequence of the error validation for `From` & `TO` 
    1. Invalid Error
    2. When user enters a past date
    4. When `From` date is higher than `To` date.
- `From` should be smaller than `To` otherwise shows error. When `From` and `To` both available, shows task having due date between `From` and `To`.

#### UI Rule

- Error message for `To` when it lower than `From`: `Date must be >= 'From date'`.
- Error message for Invalid date: `Invalid Date` 

`Completed` tab. See this Mockup //TODO by Ravi

- Error message: `Future date is not allowed`.

`Upcoming` tab. See this Mockup //TODO by Ravi

- Error message: `Past date is not allowed`.



### Repeats On

- It is a multi select filter. Default value is `All`.  Possible values are: `All`,  `Monthly`, `Quarterly`, `Semi-Annual`, `Yearly`.
- It is applicable only for `Recurring` tab.

#### UX Rule

- When multiple values are selected, shows proper name in this field. For e.g Suppose user selects 2 values `Semi-Annual` & `Yearly`, `Repeats on` field shows `2 Options`.



### Include Tax Component

Toggle switch. Default value is `ON`. If it is ON, shows the systematic tasks for the tax component. If it is OFF, doesn't shows systematic tasks of Tax Component.



