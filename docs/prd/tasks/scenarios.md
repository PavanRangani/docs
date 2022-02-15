# Scenarios

## Browse My Task

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



## Browse Upcoming Tasks

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



## Browse Completed Task

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



## View as Other User

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



## Durations Filter

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





## Meeting/Notes

### Scenarios of Add/Edit/View page of meeting/note

Rule 1: Shows `Task` section at bottom of meeting/notes add/edit/view page with proper message.

Rule 2: Multiple tasks are Primary sorting on Entity type in order of - {Individuals, Joint, Partnership, Foundation, Estate, Trust}. Each type is alphabetically sorted internally. Secondary sorting on Section name.

Rule 3: Vertmore action for done tasks, only `Reopen` action is shown.

Rule 4: Vertmore action for open tasks, `Edit`, `Change Status`,  `Delete` actions are shown.

Rule 5: `Change Status` action is not shown for the upcoming tasks (Whose notification date is not passed).

Rule 6: For open task, `Start date` and `Due date` both dates are shown in the separate lines.

Rule 7: If the `Due date` is passed away then it is shown in the red colour. (only date not label)

Rule 8: For done task, shows completed date in the dates column.

Rule 9: For open task, `In Progress` status is shown in the green colour and `Blocked` status is shown in the red colour.

Rule 10: For open task, show `-` for upcoming task in the status. (Upcoming task don't have any status.)

Rule 11: For done task, shows the name of the user who completed the task. 

Rule 12: Each role is shown in the separate line in order of `R`, `A`, `C` & ` I`.

Rule 13: If any role is empty, it won't be shown.

Rule 14: Shows short name of the user in the RACI column.

Rule 15: If the roles are too long then it appears in the next line.

Rule 16: On click of record, opens the view dialog.

Rule 17: The `New` , `Reopen` and  `Blue dot` tags will not be shown in this page.



### Scenarios of Delete meeting

Rule 1: If the meeting has any tasks (Done or Open) then meeting/notes can't be deleted and shows `Delete not possible` dialog.

Rule 2: If the meeting doesn't have any tasks then meeting/notes can be deleted and shows delete confirmation dialog.





## Add Task

#### Scenarios of Add task dialog 

Rule 1: Meeting/note task are available with the meeting/notes.

Rule 2: Ad-hoc tasks can be added from header using + button from any page of the application.

Rule 3: Entity name filed is an auto complete dropdown of related entities and current entity is prefilled.

Rule 5: Section name dropdown is a mandatory field and its auto complete dropdown.

Scenario 5.5 Section name dropdown for the individuals or Joint type entity.

| Section       |
| ------------- |
| Contacts      |
| Communication |
| Assets        |
| Banking       |
| Estate Plan   |
| Gifting       |
| Insurance     |
| Investments   |
| Partnership   |
| Philanthropy  |
| Tax           |
| Trust         |
| Planning      |
| Other         |

Rule 6: Task name is a mandatory and free form text input field.

Rule 7: Responsible roles is mandatory field. Multiple roles can be added.

Rule 8: Accountable role is not a mandatory field. only single person is allowed.

Rule 9: Consulted role is not a mandatory. Multiple users can be added.

Rule 10: Informed role is not a mandatory. Multiple users can be added.

Rule 11: `Client team` is shown first in the dropdown. (Client team means users associated with the family)

Rule 12: Same user can be added in the different roles.

Rule 13: Same user can't be added in the same role otherwise system shows error message.



##### Dates section for One time or meeting/note tasks

Rule 1: `Notification date` is a mandatory field and it's always lower than `Start date` and `Due date` otherwise system shows an error.

Scenario 1.1: If the notification is available and any of the date (Start date and due date) is inconsistent, system shows this error.

Rule 2: `Start date` is a mandatory field and it's always lower than `Due date`.

Rule 3: `Due date` is a mandatory field and it's not a past date. 



##### Dates section for Recurring tasks

Rule 1: `Due date` is a mandatory field and it's a not a past date.

Rule 2: `Notification date` and `Start date` is a mandatory field and its an offset of dates.

Rule 3: `Repeats on` is selected dropdown and default value is set to `Monthly`.  



## Edit Task

### Scenarios

Rule 1: Done task can't be editable.

Rule 2: Task in any other status can be edited any time.

### Scenarios for One-time or Meeting/note

#### Rule 1: One time task can be (Other than done task) editable anytime.

##### Scenario 1.1

| Status      |
| ----------- |
| Notify      |
| Ready       |
| In Progress |
| Blocked     |

Given: I have one open task.

And: Status of that task is {status}

Then: user can able to edit the one time task

##### Scenario 1.2

Given: I have one upcoming task (Notification date is not passed).

Then: user can able to edit the one time task

##### Scenario 1.3

Given: I have one open task.

And: Status of that task is done.

Then: user can't able to edit the one time task



#### Rule 2: RACI roles and task details can be changed any time.

##### Scenario 2.1

| Status      |
| ----------- |
| Notify      |
| Ready       |
| In Progress |
| Blocked     |

Given: I have one open task of one trigger.

And: Status of that task is {status}

When: I have edit task dialog open

And: I have updated the value of the RACI roles and Task detail

Then: system allowed me to update those value.

##### Scenario 2.2

Given: I have one upcoming task of one trigger.

When: I have edit task dialog open

And: I have updated the value of the RACI roles and Task detail

Then: system allowed me to update those value.

##### Scenario 2.3

Given: I have one one task of one trigger.

And: Status of that task is done.

Then: Edit action is not available for done task.



#### Rule 3: When trigger has an open and upcoming task and user change the dates of the trigger, this changes is applied only for upcoming task. It won't be applicable for open task.

Given: I have one trigger

#### Rule 4: When trigger has only upcoming task and user change the dates of the trigger, system allows to change the date.



### Scenarios for Recurring task

#### Rule 1: Instance of the task can not be editable. Only trigger can be editable.

Scenario 1.1: 

Given: I have one trigger for the recurring task of `Task1`. 

And: That task has two instance. One is in open tab and one is in Upcoming tab.

When: I open the instance of the task in the both tabs

And: Edit action is not visible for both tab.

Then: I open the trigger of the task `task1`.

And: It shows me the edit action.



#### Rule 2: `Repeats on` of the trigger can be updated only if any instance of that task is never opened. If any instance is opened, Repeats On can not be changed.

##### Scenario 2.1 

Given: I have one trigger for the recurring task of `Task1`. 

And: That task has two instance. One is in open tab and one is in Upcoming tab.

When: I open the edit dialog of `Task 1` trigger

Then: `Repeats on` field is shown disabled.

And: Shows one warning message (//TODO)

##### Scenario 2.2

Given: I have one trigger for the recurring task of `Task1`. 

And: That task has one instance for Upcoming tab.

When: I open the edit dialog of `Task 1` trigger

Then: `Repeats on` field is shown enable.

And: User can change its value.



#### Rule 3: When Dates of the trigger is updated, those changes will be only reflected in upcoming instance of the task. It won't be reflected in Open instance of the task.

##### Scenario 3.1 

Given: I have one trigger for the recurring task of `Task1`. 

And: That task has two instance. One is in open tab and one is in Upcoming tab.

When: I open the edit dialog of `Task 1` trigger

And: I have updated the value of any Dates.

Then: This update is reflected to the instance of the upcoming task 

And: It won't be reflected to the open instance.

##### Scenario 3.2

Given: I have one trigger for the recurring task of `Task1`. 

And: That task has one instance for open tab.

When: I open the edit dialog of `Task 1` trigger

And: I have updated the value of any Dates.

Then: Dates of the upcoming instance is changed.



#### Rule 4: When Details of the Trigger other than Date is updated, those changes will be reflected in all the instance of the task (Upcoming or Open).

##### Scenario 4.1

Given: I have one trigger for the recurring task of `Task1`. 

And: That task has two instance. One is in open tab and one is in Upcoming tab.

When: I open the edit dialog of `Task 1` trigger

And: I have updated the RACI roles.

And: I have updated task name to `Task2`

Then: This update is reflected to the instance of the upcoming task 

And: This update is also reflected to the open instance.





