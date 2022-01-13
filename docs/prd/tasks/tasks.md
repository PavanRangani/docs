# Tasks

See Overview of [type of tasks](./overview#tasks) 

Meeting/Notes tasks and One time Ad-hoc tasks are exactly same. Only difference is: Meeting/Notes tasks are available with Meeting/Note records. Those tasks can be managed from Meeting/Note page.

Ad-hoc tasks can be added from header using + button from any page of the application. They are only available in My tasks page. 

## Add task (One time or Recurring)

#### Family Name

Shows all families of the application. Alphabetical sorted.

For `Meeting/notes task` its a disable field.

#### Entity Name

Shows all related entities of a particular family. By default, the current entity is prefilled. Shows entity type in the secondary information.

#### Section name

Autocomplete dropdown of Sections. It's a mandatory field. Shows only the applicable sections of the selected entity. 

Possible values are : Contact, Communication, Assets, Banking, Estate Plan, Gifting, Insurance, Investments, Partnership, Philanthropy, Tax, Trust, Planning, Other

In dropdown, order of the section will be same as above.

#### Task Name

Free form text input field. (No restriction for adding a same name task). It's a mandatory field.

#### Notes

Free form text input field. Not mandatory

#### Dates

##### **One time tasks** (Meeting/Notes tasks or One time Ad-hoc tasks)

Notification Date: Date input field. It’s a mandatory field. It's always lower than the start date. Default shows a current date.

Start Date: Date input field. It’s a mandatory field. It’s always lower than Due Date.

Due Date: Date input field. It’s a mandatory field. It’s not a past date.

When any of the date is inconsistent, it shows error message: `Dates should be in order of: Notification Date < Start Date < Due Date`.

When any dated is in past then show this error message: `Should be >= Current date`.

##### **Recurring tasks**

Notification Date: Defined as an offset of `N days before Start Date`.

Start Date: Defined as an offset of `N days before Due Date`.

Due Date: Date input field. It’s a mandatory field. It’s not a past date.

#### Repeats on

Only applicable to Recurring tasks. Frequency at which this task should be auto created by system. 

Its possible values are Monthly, Quarterly, Semi-Annual, Annually

#### RACI Roles

Dropdown of Clarius Employees. Users associated with the family of Entity is shown first. For such users, it shows the word `Client Team` as secondary information in dropdown and users are alphabetically sorted. 

Responsible : Mandatory. Multiple users can be added.

Accountable : Not mandatory . Only single person is allowed.

Consulted / Informed : Not mandatory. Multiple users can be added

Same user can be added in the different roles but same user can not be added in same role. In this case, it will show error `Duplicate value is not allowed`.

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



## Edit task (One time or Recurring)

- Tasks whose status is `Done` can't be edited. Task in any other status can be edited any time
- For Open Task (Whose notification dates is passed), Dates can not be edited. For Upcoming tasks dates can be edited. This means that system doesn't allow to edit task in such a way that task is removed from open tab and move to the Upcoming tab
  - For e.g. Consider one task whose Notification date is 15 November 2021, and today's date is 18 November 2021. So this task will be available in Open tab and when user Edit that task, its Date section will be disable. 

### Edit One time tasks

- One time task can be edited anytime. 
- During the edit of open task `Due`, `Start`, `Notification` date can't be edited. For this, system shows proper warning message. 
  - Warning message: `Dates can't be changed once notification date is passed`.

### Edit Recurring tasks

- Instance of Recurring task can not be edited. Only Trigger can be edited.

- During the Edit of the Trigger, Due date can not be set less than current date.

- When the dates of the trigger is updated, those changes will be only reflected in the upcoming instance of the task. It won't be reflected in open instances of the task and the system shows a proper warning message for those changes.

- When details of the Trigger other than Date is updated, those changes will be reflected in all the instance of the task (Upcoming or already created)

  > One recurring tasks has two instances. One in Open tab and one in Upcoming tab. Name of this task is `Task1`. 
  >
  > - If user rename the task to `Task2`, both instances will be updated with new name `Task2`
  > - If user updates the RACI role, both instances will be updated with new RACI roles
  > - If user updates the Due date, only Upcoming instance will be updated. Open instance won't be updated.SS
  > - Here done task will not be update.

#### UI Rules

- Show a warning message when the trigger has an open task and the user changes the dates of the trigger. 
  - Warning message: `Only upcoming tasks of this trigger will be updated. Already open tasks won't be updated.`

#### Why status can not be changed from Edit dialog?

There isn't any technical limit but its UX design level decision. Assumption is - Status change is frequent action, So we have given it as separate action. 

#### Why we allows edit of RACI roles?

If someone is going to be away (vacation, maternity, ST disability, etc.), task can be assigned to someone else



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



## View task (One time or Recurring)

- Shows the details of the task
- Shows `Created by` & `Updated by` at the last of the dialog.
- For `Open` task,
  - Show `In Progress` status is in the green colour and `Blocked` status in the red colour.
  - If the due date of the task is overdue then shows it in red colour.
  -  `Change Status`, `Edit` & `Delete` action is applicable.
- For `Done` task, 
  - Only `Reopen` action is applicable.
  - Shows done by user name and done date. For e.g. `Done by Keith V. on Apr 21, 2021`
- Shows links for: Entity name, Responsible, Accountable, Consulted, Informed
- On click of Roles, open that users view dialog on same page.

### UI Rule

* View of the Open task //TODO mockup

- View of the Recurring task trigger //TODO mockup
- View of the Recurring task instance //TODO mockup



## Delete task (One time or Recurring)

- Tasks whose status is `Done`  can't be deleted. Task in any other status can be deleted any time.

- When any task is deleted, system sends in-app notification to associated users.

#### Recurring tasks

##### Delete instance

- When user delete any of the instane then only particular instance will be deleted, trigger won't be deleted.

##### Delete trigger

- When the user deletes any of the trigger then the system deletes trigger and all upcoming task. 
- Its open instance won't ne deleted. 



## Reopen task

### System Rule

- Only `Done` tasks can be reopened. 
- When any task is reopened, system sends in-app notification to associated users.

### UX Rule

- This action is applicable only for `Open` & `Completed` tab.
- When any task is reopened, it goes into any bucket and any status of the open tab based on the `Due Date`.



## Change status of the task

See [Status of the tasks](./overview#status)

Once `Start date` is passed, system will ensure that status is marked as Ready and system doesn’t allow to change status back to `Notified`. On the start date of the task, If status of the task is not `Ready`, system auto set its status to `Ready`. If status is other than `Ready`, system doesn't change that status.

User can change task's status anytime. There isn't any restriction. User can manually change task status to `Ready` even if its start date is not arrived.

### UX Rule

- `Notified` action doesn't applicable for any of the task whose status is other than `Notified`.





# TODOs 

- recurring ma date and repeats on change karava dashu..aa date pachi na tasks update thase
- System will also maintain history of the trigger data updates
- projection mate apde for e.g. 3 year na task advance ma create kari laishu
