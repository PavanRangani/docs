# Browse My Tasks

Every Athena user has a personal Task Queue that’s maintained by the system, includes all tasks for which the user is listed as Responsible, Accountable, Consulted, or Informed.



## Browse Open tasks

Each Tasks in this page is organized into the following group (buckets):

**Overdue**: Tasks whose Due date is passed

**This Week**: Due Date is in this week, ending on upcoming Saturday midnight Pacific time. 

**Next Week**: Due Date is not before the end of this week, but is before the end of next Saturday midnight Pacific time. 

**Future**: Notification Date is more than 2 weeks away

**Done**: All tasks marked as Done in the last 15 days. User is Responsible or Accountable.

Shows taks count with each group.

When there isn't any tasks available, shows proper message

**Columns of the My tasks page:** 

- Entity - Display Name of the legal entity
- Section - Name of the section
- Task - Name of the task
  - Show meeting/notes name in the secondary information for the meeting/notes task For e.g. `Originated from {Meeting} or {Notes}: “{meeting name or Notes name}"`
- Start Date
- Due Date
  - If the date is already passed then it shows in the red colour.
- Status
  - `In Progress` status is shown in the green colour.
  - `Blocked` status is shown in the red colour.
  - For `Done` task, shows the name of the user who has marked that task as Done along with its complettion date.
- Responsible
  - Shows short name of the user `{First name + First character of Last name}` (For e.g. `Keith V.`) to save the horizontal space on page 
  - In case of Multiple users, shows in the separate line
  - Shows - when value is blank
- Accountable : Same as Responsible
- Consulted: Same as Responsible
- Informed: Same as Responsible

**Sort order in each bucket** : All other task except done task, tasks are ascending order of the due date. Done task are sorted in ascending order of done date.

**Blue dot:** For the tasks where login user is Responsible, shows the blue dot icon in first column to clearly distinguish it

**Recurring icon:** For the recurring tasks, shows the icon to distinguish it form the one time tasks.

**Tags**: When a task appears in a bucket for the first time, and the user has not yet clicked upon it, show it highlighted, e.g. with a NEW flag like in Kerika. Same way shows `Reopened` tag for the reopened task.

- On hover, show hover effect and vertmore action at the right side.
  - Vertmore action: `Mark as Read`, `View Task`, `Edit`, `Change Status`, `Reopen` & `Delete`
  - `Mark as Read` action is applicable only for the tasks with `New` and `Reopen` tags.
  - `View Task` action is applicable to meeting/notes task. On click, opens task view dialog.
  - `Reopen` action is applicable for Done task.
  - `Edit` action is not applicable for the `Recurring task`.
  - `Delete` action is not applicable for the `Done` tasks
- On click of `Meeting/notes` task, redirects user to that meeting/notes view page.
- On click of `Ad-hoc` & `Recurring` task, open view dialog of that task.



## Browse Upcoming tasks

## Browse Completed tasks

## Browse Recurring tasks

#### Notes

Our server is running on UTC but Chron job will run on Pacific time.

## View as other user

- A `View as` function will allow one user to view another’s Personal Queue. There will be no restrictions on which user can view which other user’s queues.
- Admin user can see tasks across the application. Admin will have  `View as Admin` option available using which he/she can tasks of all users across the application.
- This function is applicable in all tabs.

### UX Rule

- By default, login user will be selected. User can change as per needed.
- When any other user is selected in the `View as` , table header will change according to the user's name.
  - For e.g. If the `Ajay Dhameliya` is a login user and table header name is `My Open Tasks`. Now if user sets `Ravi Hirapara` in`View as`then the name of the table header will be changed to `Ravi Hirapara's Tasks`.
- `View as Admin` action is applicable only for admin users. On click, shows all users tasks in the my task page and table header renamed to `All Tasks`.

## Mark As read

## Reopen

//TODO : On Reopen, shows confirmation dialog

## Export

Show PDF, Excel icons

On click of PDF, the pdf file will be downloaded for the same browser.

On click of Excel, the excel file will be downloaded for the same browser.

//TODO: File names

//TODO: Sample PDF and Excel

## Refresh

On Refresh, the page reloads latest data on page

## Filter

Provides a way to filter tasks using following filters

##### Task Type

It is a multi select filter. Default value is `All`.  Possible values are:`All`,  `Systematic`, `Ad-Hoc`, `Meeting/Notes`

##### Family

It is a multi select filter. Default value is `All`.  

Shows all associated families of the login user.

When other user is selected under `View as`, it shows all families of the application

##### Entity

By default its disable. It will be enable only when any particular Family is selected. Shows all entities of the selected family.

##### Section

It is a multi select filter.

##### Status

It is a multi select filter. Values are: `Notified`, `Ready`, `In-Progress`, `Blocked`, `Done`

##### My Role

It is a multi select filter. Values are: `All`, `Responsible`, `Accountable`, `Consulted`, `Informed`

##### Include Tax Component

Toggle switch. If it is ON, shows the systematic tasks for the tax component. If it is OFF, doesn't shows systematic tasks of Tax Component



## Show future tasks

This feature allows user to run a report for showing them what is on the future docket. This is also useful to show the future tasks of upcoming year to the clients.

It shows all of the tasks (One time or recurring) in selected duration even if its date is not arrived. If there is a monthly recurring task, this report will show it 12x times.

### UX rules

- Shows checkbox of `Show future tasks` in Upcoming tab

- On click of the checkbox, it shows all the future tasks for selected Duration. 
- By default it shows “This Year” in duration. Possible values of “Duration” : This Year, Next Year, Next 12 months, Custom
  - This year means current calendary year. Next year means next calendar year. Next 12 months means, next 365 days from today. 
  - Custom means, usercan select "From" and "To" date manually on his own. It will only allow to select future dates.

