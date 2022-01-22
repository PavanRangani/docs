# Browse My Tasks

Every Athena user has a personal Task Queue that’s maintained by the system, includes all tasks for which the user is listed as Responsible, Accountable, Consulted, or Informed.

## Browse Open tasks

Each Tasks in this page is organized into the following group (buckets):

**Overdue**: Tasks whose Due date is passed

**This Week**: Due Date is in this week, ending on upcoming Saturday midnight Pacific time. 

**Next Week**: Due Date is not before the end of this week, but is before the end of next Saturday midnight Pacific time. 

**Future**: Due Date is more than 2 weeks away

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
  - Vertmore action for the Open task for `Meeting/note` & `One time` : `Mark as Read`, `View Task`, `Edit`, `Change Status`, & `Delete`
    - `Mark as Read` action is applicable only for the tasks with `New` and `Reopen` tags.
    - `View Task` action is applicable to meeting/notes task. On click, opens task view dialog.
  - Vertmore action for the Recurring task : `Mark as Read`, `Change Status`, & `Delete`
    - `Mark as Read` action is applicable only for the tasks with `New` and `Reopen` tags.
  - Vertmore action for the `Done` tasks: `Reopen`.
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

#### Rule 3: Vertmore action of the `Open` tab.

| Tasks        | Actions                                 |
| ------------ | --------------------------------------- |
| Meeting/Note | View Task, Change Status, Edit & Delete |
| One-time     | Change Status, Edit & Delete            |
| Recurring    | Change Status & Delete                  |

Given: I have open the browse tab for the `Open` tab.

When: I hover on the open task of the `Tasks`.

And: Shows the vertmore action button

And: Click on that button

Then: It shows me the action like {Actions}.

#### Rule 4: Vertmore action of the `Upcoming` tab.

| Tasks        | Actions                  |
| ------------ | ------------------------ |
| Meeting/Note | View Task, Edit & Delete |
| One-time     | Edit & Delete            |
| Recurring    | Delete                   |

Given: I have open the browse tab for the `Upcoming` tab.

When: I hover on the open task of the `Tasks`.

And: Shows the vertmore action button

And: Click on that button

Then: It shows me the action like {Actions}

#### Rule 5: Vertmore action of the `Completed` tab.

| Tasks        | Actions |
| ------------ | ------- |
| Meeting/Note | Reopen  |
| One-time     | Reopen  |
| Recurring    | Reopen  |

Given: I have open the browse tab for the `Completed` tab.

When: I hover on the open task of the `Tasks`.

And: Shows the vertmore action button

And: Click on that button

Then: It shows me the action like {Actions}

#### Rule 6: Vertmore action of the `Recurring` tab.

Given: I have open the browse tab for the `Recurring` tab.

When: I hover on the open task of the `Recurring Tasks`.

And: Shows the vertmore action button

And: Click on that button

Then: It shows me the action like `Edit ` & `Delete`

#### Rule 7: Vertmore action of the `Done` task is `Reopen`.

| Tabs      |
| --------- |
| Open      |
| Completed |

| Tasks        |
| ------------ |
| Meeting/Note |
| One-time     |
| Recurring    |

Given: I have open the browse tab for the {Tabs}.

When: I hover on the Done task of the {Tasks}.

And: Shows the vertmore action button

And: Click on that button

Then: It shows me the action like `Reopen`.

#### Rule 8: On click of `Meeting/note` task, redirects user to the meeting/notes view page.

| Tabs      |
| --------- |
| Open      |
| Completed |

Given: I have open the browse tab for the {Tabs}.

And: It has one meeting task like `Book flights tickets for John Brown` which is originated from `Meeting with Jane and John Brown` meeting.

When: I click on that task

Then: It redirects me to the view page of that meeting.

#### Rule 9: On click of `Ad-hoc`, open view dialog of that task.

| Tabs      |
| --------- |
| Open      |
| Upcoming  |
| Completed |
| Recurring |

| Ad-hoc task |
| ----------- |
| One-Time    |
| Recurring   |

Given: I have open the browse tab for the {Tabs}.

And: It has an `Ad-hoc task.

When: I click on that task

Then: Opens the view task dialog of that tasks.



### Scenarios of Browse Open tasks

#### Rule 1:  `Overdue` bucket shows those task whose due date is passed.

##### Scenario 1.1 - Due date is passed away.

Given: I have open one time task dialog

And: I have added Due date of that task is `15 Nov 2021`.

And: Suppose current date is 5th Dec 2021.

When: I click on the ADD button.

Then: Task is appears in the Overdue bucket because due date is already passed.

And: `Due date` shown in the red colour.

##### Scenario 1.2 - Start date is passed but due date is not passed

Given: I have open one time task dialog

And: I have added Start date of the task is `15 Nov 2021` and Due date of the task is `15 Dec 2021`.

And: Suppose current date is 5th Dec 2021.

When: I click on the ADD button

Then: Task is appears in the Next Week bucket.

#### Rule 2: `This Week` bucket shows those tasks whose due date is in this week.

Given: I have open one time task dialog

And: I have added Due date of that task is `11 Dec 2021`.

And: Suppose current date is 5th Dec 2021.

When: I click on the ADD button.

Then: Task is appears in the This Week bucket.

#### Rule 3: `Next Week` bucket shows those tasks whose due date is in next week.

Given: I have open one time task dialog

And: I have added Due date of that task is `15 Dec 2021`.

And: Suppose current date is 5th Dec 2021.

When: I click on the ADD button.

Then: Task is appears in the Next Week bucket.

#### Rule 4: `Future Week` bucket shows those tasks whose due date is more than 2 weeks away. 

Given: I have open one time task dialog

And: I have added Due date of that task is `25 Dec 2021`.

And: Notification date is `15 Nov 2021`.

And: Suppose current date is 5th Dec 2021.

When: I click on the ADD button.

Then: Task is appears in the Future Week bucket.

#### Rule 5: `Done` bucket shows all tasks marked as Done in the last 15 days.

Given: Open tab has one open task whose due date is `15 Dec,2021`.

And: Notification date is `30 Nov, 2021`.

And: Status of that task is `Pending`.

And: Current date is `5th Dec`.

When: I change the status of the task from `Pending` to `Done`.

Then: The task will appear in the `Done` bucket.

And: Completion date of the task will be set to `5 Dec 2021`.

And: Shows the name of the user who has marked as done.

When: I open the done bucket on `18 Dec 2021`.

Then: Done task still appears in the done bucket.

When: I open the done bucket on `25 Dec 2021`

Then: Done task doesn't appear in the done bucket because the done bucket shows the tasks of last 15 days.

#### Rule 6: When there isn't any task available in any bucket, that bucket won't be available.

##### Scenario 6.1 - `Done` bucket is not available

Given: I have opened the `Open` tab

And: There is no done task available

Then: `Done` bucket doesn't shown on this page.

##### Scenario 6.2 - `This Week` bucket is not available.

Given: I have opened the `Open` tab

And: If no task available in the `This Week`.

Then: `This Week` bucket doesn't show on this page.

##### Scenario 6.3 - `Next Week` bucket is not available.

Given: I have opened the `Open` tab

And: If no task available in the `Next Week`.

Then: `Next Week` bucket doesn't show on this page.

##### Scenario 6.4 - `Future Week` bucket is not available.

Given: I have opened the `Open` tab

And: If no task available in the `Future Week`.

Then: `Future Week` bucket doesn't show on this page.

##### Scenario 6.5 - `Overdue` bucket is not available.

Given: I have opened the `Open` tab

And: There is no overdue task available.

Then: `Overdue` bucket doesn't show on this page.

##### Scenario 6.6 - Show proper message when no any buckets available.

Given: I have opened the `Open` tab

And: the tab has no task available

Then: Show proper message to indicates the no tasks available. 

#### Rule 7: For `Task` column, show meeting/notes name in the secondary information for the meeting/notes task.

| Buckets     |
| ----------- |
| Overdue     |
| This Week   |
| Next Week   |
| Future Week |
| Done        |

Given: I have added a task in the meeting of `Meeting with John and Jane Brown`

When: I open the `Open` tab

Then: This meeting task appears in this {Buckets}

And: Show the meeting name with the task name.

#### Rule 8: `In Progress` status is shown in the green colour and `Blocked` status is shown in the red colour.

Given: I have open the `Open` tab.

And: It has two tasks with the status of Ready.

When: I changed the status of first task to `Pending`.

And: I changed the status of the second task to `Blocked`.

Then: Both tasks status will be changed.

And: Pending status will be shown in the green colour.

And: Blocked status will be shown in the red colour.

#### Rule 9: Show short name of the user in the RACI Roles

| RACI                                                      | Users                         |
| --------------------------------------------------------- | ----------------------------- |
| Responsible: Ajay Dhameliya, Chirag Moradiya, Chetan Goti | Ajay D., Chirag M., Chetan G. |
| Accountable: Ravi Hirapara                                | Ravi H.                       |
| Consulted: -                                              | -                             |
| Informed: Keith Vermon                                    | Keith V.                      |

Given: I have Add one-time task dialog open

And: I have added a users in {RACI} roles.

When: I click on the ADD button

Then: Task will be added in open tab

And: Shows short name of the {Users} in the RACI roles column.

When: Any of the roles is empty (Means no users available)

Then: Than shows `-` in that column.

#### Rule 12: For new task, shows `New` tag.

##### Scenario 12.1

Given: I have ​Add one-time task dialog open

And: I have added all required field

When: I click on ADD button

Then: Task will be added in the open tab.

And: Shows `New` tag for that new task

When: users click on the vertmore action for that new tag task

Then: Shows the `Mark as Read` action.

When: Users click on the `Mark as Read` action

Then: New tag will be removed from the queue.

##### Scenario 12.2

Given: I have Add one-time task dialog open

And: I have added a notification date is `15 Jan 2021`. 

When: I click on ADD button

Then: Task will be added in the `Upcoming` tab.

And: `New` tag is not shown for that. (Because `New` tag is visible only for Open tab)

When: Notification date is passed. (Suppose current date is 15 Jan 2021)

Then: This card is moved from `Upcoming` tab to the `Open` tab

And: Shows `New` tag for that task.

#### Rule 13: For reopen task, show `Reopen`ed task.

##### Scenario 13.1

Given: Open tab has one done task whose complexation date is `5 Dec,2021`.

And: Notification date is `30 Nov, 2021`.

And: Due date is `3 Dec 2021`.

And: Current date is `5th Dec 2021`.

When: I reopened that done task

Then: Task will be reopened.

And: Show `Reopen` tag for that task.

Then: The task will appear in the `Done` bucket.

When: Users click on the vertmore action for that reopen tag task

Then: Shows the `Mark as Read` action.

When: Users click on the `Mark as Read` action

Then: Reopen tag will be removed from the queue.

#### Rule 14: Read/Unread status for each users separately.

Given: Two users `Ravi H.` & `Ajay D.` are associated in the same task.

When: `Ravi H` mark task as read

And: `New` tag is removed for the `Ravi H ` user.

When: I open that task for `Ajay D.` user.

Then: It will still show New tag for `Ajay D.`.

#### Rule 15: All other task except done task, tasks are ascending order of the due date.

Given: `OPen` tab has some open task as per the following `Due date`.

| Task Name                             | Due Date    |
| ------------------------------------- | ----------- |
| Send Quarterly Report to the client   | 15 Jan 2022 |
| Book Flights Tickets of Jane Brown    | 18 Nov 2021 |
| Check the status of construction site | 12 Feb 2021 |
| Book Flights Tickets of John Brown    | 15 Mar 2022 |
| Send monthly gifting report           | 31 Dec 2021 |

When: I open the list page of `Open` task

Then: Task are sorted in the ascending order of `Due Date` as follows

| Task Name                             | Due Date    |
| ------------------------------------- | ----------- |
| Check the status of construction site | 12 Feb 2021 |
| Book Flights Tickets of Jane Brown    | 18 Nov 2021 |
| Send monthly gifting report           | 31 Dec 2021 |
| Send Quarterly Report to the client   | 15 Jan 2022 |
| Book Flights Tickets of John Brown    | 15 Mar 2022 |

#### Rule 16: Done task are sorted in ascending order of done date.

Given: `OPen` tab has some done task as per the following `Due date`.

| Task Name                             | Due Date    | Done Date   |
| ------------------------------------- | ----------- | ----------- |
| Send Quarterly Report to the client   | 15 Jan 2022 | 10 Jan 2022 |
| Book Flights Tickets of Jane Brown    | 18 Nov 2021 | 25 Nov 2021 |
| Check the status of construction site | 12 Feb 2021 | 28 Nov 2021 |
| Book Flights Tickets of John Brown    | 15 Mar 2022 | 02 Jan 2022 |
| Send monthly gifting report           | 31 Dec 2021 | 31 Dec 2021 |

When: I open the list page of `Open` task

And: See the `Done` bucket.

Then: Task are sorted in the ascending order of `Due Date` as follows

| Task Name                             | Due Date    | Done Date   |
| ------------------------------------- | ----------- | ----------- |
| Book Flights Tickets of Jane Brown    | 18 Nov 2021 | 25 Nov 2021 |
| Check the status of construction site | 12 Feb 2021 | 28 Nov 2021 |
| Send monthly gifting report           | 31 Dec 2021 | 31 Dec 2021 |
| Book Flights Tickets of John Brown    | 15 Mar 2022 | 02 Jan 2022 |
| Send Quarterly Report to the client   | 15 Jan 2022 | 10 Jan 2022 |



## Browse Upcoming tasks

- Show upcoming tasks whose notification date is arrived.  
- Show proper message when no tasks available in this page
- Almost all Columns are the same as the open tasks tab. Only difference are below:
  - Upcoming task don't have any status. So the status column is not available here. 
  - New column `Notification Date` shows the `Notification Date` of tasks
  - Sorting order: Tasks in this page are sorted in Ascending order of the notification date. 
- The `New` and `Reopen` tags will not be shown in this tab
- Other logic of the `Blue dot` and `Recurring icon`  is same as the current tab.
- On hover, show hover effect and vertmore action at the right side.
  - Vertmore action:  `View Task`, `Edit` & `Delete`
  - `View Task` action is applicable to meeting/notes task. On click, opens task view dialog.
  - `Edit` action is not applicable for the `Recurring task`.
- On click of `Meeting/notes` task, redirects user to that meeting/notes view page.
- On click of `One-time` & `Recurring` task, open view dialog of that task.

### Scenarios of Browse Upcoming tasks

#### Common Scenarios 

[See this](#common-scenarios-of-browse-tasks-tab)

#### Rule 1: Shows only those tasks whose notification is arrival

Given: I have Add One time task dialog open

And: I have added a task `Task1`

And: Notification date of the `Task1`  is `20 Jan 2022`

And: Current date is `30 Dec 2021` (Means the notification date is passed)

When: I click on the ADD button

Then: Task will be added in the Upcoming tab

And: `New` tag is not shown for this task in the Upcoming tab

When: The current date is `20 Jan 2022`

Then: `Task 1` is moved to the `Open` tab

And: `New` tag will be shown in the Open tab.

#### Rule 2: Tasks are sorted in Ascending order of the notification date.

Given: `OPen` tab has some open task as per the following `Due date`.

| Task Name                             | Notification Date |
| ------------------------------------- | ----------------- |
| Send Quarterly Report to the client   | 15 Jan 2022       |
| Book Flights Tickets of Jane Brown    | 18 Nov 2021       |
| Check the status of construction site | 12 Feb 2021       |
| Book Flights Tickets of John Brown    | 15 Mar 2022       |
| Send monthly gifting report           | 31 Dec 2021       |

When: I open the list page of `Open` task

Then: Task are sorted in the ascending order of `Due Date` as follows

| Task Name                             | Due Date    | Done Date   |
| ------------------------------------- | ----------- | ----------- |
| Book Flights Tickets of Jane Brown    | 18 Nov 2021 | 25 Nov 2021 |
| Check the status of construction site | 12 Feb 2021 | 28 Nov 2021 |
| Send monthly gifting report           | 31 Dec 2021 | 31 Dec 2021 |
| Book Flights Tickets of John Brown    | 15 Mar 2022 | 02 Jan 2022 |
| Send Quarterly Report to the client   | 15 Jan 2022 | 10 Jan 2022 |

## Browse Completed tasks

- Show all completed tasks here. Each tasks group by year. 
- column are the same as the open tasks tab.
- Sorting order: Task will be sorted descending order of done date. Latest done task will be at top.
- Other logic of the `Blue dot` and `Recurring icon`  will be the same as the current tab.
- On hover, show hover effect and vertmore action at the right side.
  - Vertmore action: `View Task` &  `Reopen`
  - `View Task` action is applicable to meeting/notes task. On click, opens task view dialog.
  - On click of `Reopen`, shows confirmation dialog.
- On click of `Meeting/notes` task, redirects user to that meeting/notes view page.
- On click of `Ad-hoc` & `Recurring` task, open view dialog of that task.

### Scenarios of Browse Completed Tasks

#### Common Scenarios 

[See this](#common-scenarios-of-browse-tasks-tab)

#### Rule 1: Shows all done task here.

Given: `Open` tab has one open task `Task1`.

And: Status of that task is `In Progress`

When: I completed that task and mark as read

Then: Task status will be changed to `Done`.

And: Show the `Task1` in the completed tab

When: User hover on the `Task 1`

And: Click on vertmore action

Then: Shows the `Reopen` action.

#### Rule 2: Task will be sorted descending order of done date. Latest done task will be at top.

Given: `OPen` tab has some open task as per the following `Due date`.

| Task Name                             | Due Date    | Status      |
| ------------------------------------- | ----------- | ----------- |
| Send Quarterly Report to the client   | 15 Jan 2022 | In Progress |
| Book Flights Tickets of Jane Brown    | 18 Nov 2021 | In Progress |
| Check the status of construction site | 12 Feb 2021 | In Progress |
| Book Flights Tickets of John Brown    | 15 Mar 2022 | In Progress |
| Send monthly gifting report           | 31 Dec 2021 | In Progress |

And: I change the status of the above task to `Done`

When: I open the list page of `Completed` task

Then: Task are sorted in the Descending order of `Done Date` as follows

| Task Name                             | Due Date    | Done Date   | Status |
| ------------------------------------- | ----------- | ----------- | ------ |
| Send Quarterly Report to the client   | 15 Jan 2022 | 10 Jan 2022 | Done   |
| Book Flights Tickets of John Brown    | 15 Mar 2022 | 02 Jan 2022 | Done   |
| Send monthly gifting report           | 31 Dec 2021 | 31 Dec 2021 | Done   |
| Check the status of construction site | 12 Feb 2021 | 28 Nov 2021 | Done   |
| Book Flights Tickets of Jane Brown    | 18 Nov 2021 | 25 Nov 2021 | Done   |



## Browse Recurring tasks

- Shows all triggers of the recurring tasks.
- Columns are the same as the open tab. 
- Here triggers has a offset of `Notification Date` and `Start Date`. So shows the offset of the `Notification Date` and `Start Date `.
- Sorting order: 
  - Tasks are primary sorted on alphabetical order of `Family` Name. Secondary sorted on alphabetical order of `Entity` name. Tertiary sorting on `Section` and fourth sorting on `Repeats on` in order of `Monthly`, `Quartly`, `Semi Annual` & `Yearly`. 
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

- In the `View as` dropdown, `View as Admin` action is shown first and login user name is shown second and then other user names are shown in alphabetical order.

- When any other user is selected in the `View as`, table header name will change according to the user's name.
  - For e.g. If the `Ajay Dhameliya` is a login user and the table header name of the {Tab name} tab is `{Before Table header name}`. Now if the user sets `Ravi Hirapara` in the `View as` then the name of the table header will be changed to following table:
  
    | Tab name  | Before Table header name | After Table header name        | After `View as Admin` |
    | --------- | ------------------------ | ------------------------------ | --------------------- |
    | Open      | My Open Task             | Ravi Hirapara's Open Task      | All Open Task         |
    | Upcoming  | My Upcoming Task         | Ravi Hirapara's Upcoming Task  | All Upcoming Task     |
    | Completed | My Completed Task        | Ravi Hirapara's Completed Task | All Completed Task    |
    | Recurring | My Recurring Task        | Ravi Hirapara's Recurring Task | All Recurring Task    |

- When user select `View as Admin` action in the `View as` dropdown then table header name will be changed to {After View as Admin}.

**Case**

- When the filter is already applied and then I select another person as a `View as`, filters won't be reset. It will show the task of the particular user with already applied filters.
  - For e.g. I have opened an `Open` tab where I am the `View As` and I have selected `Ad-hoc`  filter in the `Task Type` filter. Now I changed the `View as ` to `Pavan Rangani` then filter won't be reset. It will show me `Ad-hoc` task of Pavan.

### Scenarios

#### Rule 1: `View as Admin` action is applicable only for admin

| User name        | Role      |
| ---------------- | --------- |
| Ruchita Kheni    | Admin     |
| Trupti Baldaniya | Non-Admin |

 Given: I have open a `Open` task page for `Trupti Baldaniya` user

And: By default `You` is selected in the `View as`

When: I click on the View as field

Then: `View as Admin` action is not shown because trupti is a non-admin user

When: I opened the `Open` task page for `Ruchita`

Then: `View as Admin` action is shown (Ruchita is a admin user)

When: I click on `View as Admin` action

Then: It shows all athena users open task in this page.

And: Page header name will be changed to `All Task`

#### Rule: 2 When any other user is selected in the `View As`, table header will change according to the user's name.

Given: I have open a `Open` task page for `Ajay Dhameliya` user

And: By default `You` is selected in the `View as`

When: I click on the `View as` field

And: Change the View as to `Ravi Hirapara`

Then: `Open` tab will shows the `Ravi` open tasks queue.

And: Table header will be changed to the `Ravi's Task`.



## Mark as Read

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

Case:

- If I have applied some filters and I click on the refresh icon, only the page will be refreshed and the filters will not be reset.



## Filter

Provides a way to filter tasks using following filters. When any of the filter is applied then show `RESET` button. On click, all filters are reset and set to default state.

On tab switch or page reload, filters will be reset and set to default state.

### Task Type

- It is a multi select filter. Default value is `All`.  Possible values are: `All`,  `Systematic`, `Ad-Hoc`, `Meeting/Notes`.

- Its not applicable for `Recurring` tab.

### Family

It is a multi select filter. Default value is `All`.  Shows all associated families of the login user in alphabetical order.

When other user is selected under `View as`, it shows all families of the application in alphabetical order.

### Entity

By default its disable. It will be enable only when any particular Family is selected. Shows all entities of the selected family. It is a multi select filter. Default value is `All`.

### Section

- It is a multi select filter. Default value is `All`. 
- Values are: All, Contact, Communication, Assets, Banking, Estate Plan, Gifting, Insurance, Investments, Partnership, Philanthropy, Tax, Trust, Planning, Other
- Its not applicable for `Recurring` tab.

### Status

- It is a multi select filter. Default value is `All`. Values are: `Notified`, `Ready`, `In-Progress`, `Blocked`, `Done`.
- Its a applicable only for `Open` tab.

### My Role

It is a multi select filter. Default value is `Any`. Values are: `Any`, `Responsible`, `Accountable`, `Consulted`, `Informed`

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

#### Scenarios for Duration field

Rule 1: For `Custom` filter dialog, `From` date should be smaller than `To`.

Rule 2: When `From` and `To` both available, shows task having due date between `From` and `To`.

#### Scenarios for Completed tab

Rule 1: Default `All` filter is selected. On click, opens a dropdown.

| Values       |
| ------------ |
| All          |
| This Month   |
| Last Month   |
| This Quarter |
| Last Quarter |
| This Year    |
| Last Year    |
| Custom       |

Rule 2: For `Custom` dialog,  `From` and `To` both dates won't be a future date.

#### Scenarios for Upcoming tab

Rule 1: Default `This Year` filter is selected. On click opens a dropdown

| Values    |
| --------- |
| This Year |
| Next Year |
| Custom    |

Rule 2: For Custom dialog, `From` and `To` dates will be in between the current date and next 3 years. 



### Include Tax Component

Toggle switch. Default value is `ON`. If it is ON, shows the systematic tasks for the tax component. If it is OFF, doesn't shows systematic tasks of Tax Component.



### Repeats On

- It is a multi select filter. Default value is `All`.  Possible values are: `All`,  `Monthly`, `Quarterly`, `Semi-Annual`, `Yearly`.
- It is applicable only for `Recurring` tab.

#### UX Rule

- When multiple values are selected, shows proper name in this field. For e.g Suppose user selects 2 values `Semi-Annual` & `Yearly`, `Repeats on` field shows `2 Options`.



