# Tasks

See Overview of [type of tasks](./overview#tasks) 

Meeting/Notes tasks and One time Ad-hoc tasks are exactly same. Only difference is: Meeting/Notes tasks are available with Meeting/Note records. Those tasks can be managed from Meeting/Note page.

Ad-hoc tasks can be added from header using + button from any page of the application. They are only available in My tasks page. 

## Add task (One time or Recurring)

#### Entity Name

Shows all related entities of a particular family. By default, the current entity is prefilled. Show display name instead of legal name.

#### Section name

Autocomplete dropdown of Sections. It's a mandatory field. Shows only the applicable sections of the selected entity. (It will be same as implemented in the reporting tab)

#### Task Name

Free form text input field. (No restriction for adding a same name task). It's a mandatory field.

#### Notes

Free form text input field. Not mandatory

#### Dates

##### **One time tasks** (Meeting/Notes tasks or One time Ad-hoc tasks)

Notification Date: Date input field. It’s not a mandatory field. It's always lower than the start date

Start Date: Date input field. It’s a mandatory field. It’s always lower than Due Date

Due Date: Date input field. It’s a mandatory field. It’s always greater than Start date

When notification is not added, and any of the date (start date and due date) is  inconsistent shows Error message: `Dates should be in order of: Start Date  < Due Date`

When notification date is available and any of the date is inconsistent shows error message: `Dates should be in order of: Notification Date < Start Date  < Due Date`

##### **Recurring tasks**

Notification Date: Defined as an offset of `N days before Start Date`.

Start Date: Defined as an offset of `N days before Due Date`.

Due Date: Date input field. It’s a mandatory field. Doesn't allow to select past date

#### Repeats on

Only applicable to Recurring tasks. Frequency at which this task should be auto created by system. 

Its possible values are Monthly, Quarterly, Half yearly, Annually

#### RACI Roles

Dropdown of Clarius Employees. Users associated with the family of Entity is shown first. For such users, it shows the word `Client Team` as secondary information in dropdown and users are alphabetically sorted. 

Responsible : Mandatory. Multiple users can be added
Accountable : Not mandatory . Only single person is allowed.
Consulted / Informed : Not mandatory. Multiple users can be added

Same user can be added in the different roles but same user can not be added in same role. In this case, it will show error `Duplicate value is not allowed`.



## Edit task (One time or Recurring)

- Tasks whose status is `Done` can't be edited. Task in any other status can be edited any time
- For Open Task (Whose notification dates is passed), Dates can not be edited. For Upcoming tasks dates can be edited. This means that system doesn't allow to edit task in such a way that task is removed from open tab and move to the Upcoming tab
  - For e.g. Consider one task whose Notification date is 15 November 2021, and today's date is 18 November 2021. So this task will be available in Open tab and when user Edit that task, its Date section will be disable. 

### Edit One time tasks

- One time task can be editable anytime. 
- During the edit of one time task `Due`, `Start`, `Notification` date can't be edited. For this, system shows proper warning message. 
  - Warning message: //TODO

### Edit Recurring tasks

- Instance of Recurring task can not be edited. Only Trigger can be edited.

- During the Edit of the Trigger, Due date can not be set less than current date.

- `Repeats on` of the trigger can be updated only if any instance of that task is never opened. If any instance is opened, `Repeats On` can not be changed

- When Dates of the trigger is udpated, those changes will be only reflected in upcoming instance of the task. It won't be reflected in Open instance of the task (To avoid the cases where open instance can be removed from queue. TODO//Example)

- When Details of the Trigger other than Date is updated, those changes will be reflected in all the instance of the task (Upcoming or Open)

  > One recurring tasks has two instances. One in Open tab and one in Upcoming tab. Name of this task is `Task1`. 
  >
  > - If user rename the task to `Task2`, both instances will be updated with new name `Task2`
  >- If user updates the RACI role, both instances will be updated with new RACI roles
  > - If user updates the Due date, only Upcoming instance will be updated. Open instance won't be updated.
  >- Here User won't be able to update Repeats on
  > - Here done task will not be update.

### UX Rules

- If any instance of the trigger is open then `repeats on`  field showing disabled and the system shows a proper warning message.
  - Warning message: `RACI roles cannot be edited while the task is open`. //TODO (Message review with AD sir)
- Show a warning message when the trigger has an open task and the user changes the date. 
  - Warning message: `Dates changes won't be reflected the open task of this trigger`. //TODO (Message review with AD sir)

#### Why status can not be changed from Edit dialog?

There isn't any technical limit but its UX design level decision. Assumption is - Status change is frequent action, So we have given it as separate action but Edit action is not a frequent action.

#### Why we allows edit of RACI roles?

If someone is going to be away (vacation, maternity, ST disability, etc.), task can be assigned to someone else



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

- Delete only this instance of this task
- Delete already created instances of this task
- Delete all  - Already created instances and Upcoming instances

##### Delete trigger

- Delete already created instances of this task
- Delete only upcoming future instances
- Delete all  - Already created instances and Upcoming future instances



## Reopen task

- Only `Done` tasks can be reopened. 
- When any task is reopened, system sends in-app notificaiton to associated users.

## Change status of the task

See [Status of the tasks](./overview#status)

Once `Start date` is passed, system will ensure that status is marked as Ready and system doesn’t allow to change status back to `Notified`. On the start date of the task, If status of the task is not `Ready`, system auto set its status to `Ready`. If status is other than `Ready`, system doesn't change that status.

User can change task's status anytime. There isn't any restriction. User can manually change task status to `Ready` even if its start date is not arrived.

