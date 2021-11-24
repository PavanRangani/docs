# My Task - Open tab

Every Athena user has a personal Task Queue that’s maintained by the system, includes all tasks for which the user is listed as Responsible, Accountable, Consulted, or Informed.

Each Tasks in this page is organized into the following buckets:
**Overdue**: Due Date has passed, task is not marked as Succeeded; user is Responsible or Accountable.

**This Week**: Due Date is this week, ending on upcoming Saturday midnight Pacific time. User is Responsible or Consulted.

**Next Week**: Due Date is not before the end of this week, but is before the end of next Saturday midnight Pacific time. User is Responsible or Consulted. 

**Future**: Notification Date is more than 2 weeks away; user is Responsible.

**Done**: all tasks marked as Succeeded in the last N weeks. User is Responsible or Accountable.

## UX Rules

- Columns of the my open task page
  - Entity
  - Section
  - Task
    - Show meeting/notes name in the secondary information for the meeting/notes task like `Originated from {meeting} or {Notes}: “{meeting name or Notes name}"`
  - Start Date
  - Due Date
    - If the date is already passed then it shows in the red colour.
  - Status
    - `In Progress` status show in the green colour.
    - `Blocked` status show in the red colour.
    - For `Done` task, show the name of the user whose completed the task with the completation date.
  - Responsible
    - Shows short name instead of full name.
    - Multiple users show in the separate lines.
  - Accountable
  - Consulted
  - Informed
- All other task except done task, tasks are ascending order of the due date. Done task are sorted ascending order of done date.
- If the login user is available in the responsible role in any of task in any of the tab, shows the blue dot icon at the first of the task.
- Show `New` tag for new task. Here //TODO
- Done task can be reopened. Show `Reopened` tag for the reopen task.
- On hover, show hover effect and vertmore action at the right side.
  - Vertmore action: `Mark as Read`, `View Task`, `Edit`, `Change Status`, `Reopen` & `Delete`
  - `Mark as Read` action is applicable to new and reopen task.
  - `View Task` action is applicable to meeting/notes task. On click, opens task view dialog.
  - `Reopen` action is applicable for done task.
  - `Edit` action is not applicable for the `Recurring task`.
- On click of `Meeting/notes` task, redirect user to that meeting/notes view page.
- On click of `Ad-hoc` & `Recurring` task, open view dialog of that task.



## View as other user

- A `View as` function will allow one user to view another’s Personal Queue. There will be no restrictions on which user can view which other user’s queues.
- Admin user can see the all users tasks. There is one `View as Admin` action available where user can see the all users task.
- This function is applicable in all tabs.

### UX Rule

- By default, login user will be selected. User can change as per needed.
- When any other user is selected in the `View as` , table header will change according to the user's name.
  - For e.g. If the `Ajay Dhameliya` is a login user and table header name is `My Open Tasks`. Now if it sets `Ravi Hirapara` in`View as`then the name of the table header will be changed to `Ravi Hirapara Tasks`.
- `View as Admin` action is applicable only for admin users. On click, shows all users tasks in the my task page and table header renamed to `All Tasks`.



## New & Reopened tag

When a task appears in a bucket for the first time, and the user has not yet clicked upon it, show it highlighted, e.g. with a NEW flag like in Kerika.