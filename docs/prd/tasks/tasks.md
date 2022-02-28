# Tasks

See Overview of [type of tasks](./overview#tasks) 

Meeting/Notes tasks and One time Ad-hoc tasks are exactly same. Only difference is: Meeting/Notes tasks are available with Meeting/Note records. Those tasks can be managed from Meeting/Note page.

Meeting task can't be added once the family of the entity is archived. 

Ad-hoc tasks can be added from header using + button from any page of the application. They are only available in My tasks page. 

## Add task (One time or Recurring)

#### Family

- Shows all families of the application. Alphabetical sorted.

- For `Meeting/notes` task, its a disable field.

#### Entity

- Shows all related entities of a particular family. Shows entity type in the secondary information.
- For `Ad-hoc` task, it's a disabled until the family is not selected.
- For `Meeting/Notes` task, current entity is prefilled.

#### Section

- Default it is a disabled field. It is enabled once the entity is selected. It's a mandatory field.
  - On hover, shows tooltip message. Message is: `First select the entity`

- It's a mandatory field. Shows only the applicable sections of the selected entity. At a time only one section is selected.
- There is two types of Section available in the dropdown: `Tabs` & `Agenda Items`. Possible values of the section dropdown is below:

|                  | Individual & Joint           | Partnership           | Foundation            | Estate               | Trust                |
| ---------------- | ---------------------------- | --------------------- | --------------------- | -------------------- | -------------------- |
| **Tabs**         |                              |                       |                       |                      |                      |
|                  | Contact                      | Contact               | Contact               | Contact              | Contact              |
|                  | Communication                | Communication         | Communication         | Communication        | Communication        |
|                  | Assets                       | Assets                | Assets                | Assets               | Assets               |
|                  | Banking                      | Banking               | Banking               | Banking              | Banking              |
|                  | Estate Plan                  | Insurance             | Insurance             | Insurance            | Gifting              |
|                  | Gifting                      | Investment            | Investment            | Investment           | Insurance            |
|                  | Insurance                    | Partnership           | Partnership           | Partnership          | Investment           |
|                  | Investment                   | Philanthropy          | Philanthropy          | Tax                  | Partnership          |
|                  | Partnership                  | Tax                   | Tax                   | Trusts               | Philanthropy         |
|                  | Philanthropy                 | Trusts                | Trusts                |                      | Tax                  |
|                  | Tax                          |                       |                       |                      | Trusts               |
|                  | Trusts                       |                       |                       |                      |                      |
| **Agenda Items** |                              |                       |                       |                      |                      |
|                  | Bill Pay                     | Accounting & Finance  | Accounting & Finance  | Accounting & Finance | Accounting & Finance |
|                  | Cash Flow                    | Balance sheet         | Balance sheet         | Balance sheet        | Balance sheet        |
|                  | College Savings              | Bill Pay              | Bill Pay              | Bill Pay             | Bill Pay             |
|                  | Human Resources              | Human Resources       | Grantmaking           | Other                | Other                |
|                  | Other                        | Management / strategy | Human Resources       |                      |                      |
|                  | Personal Financial Statement | Other                 | Management / strategy |                      |                      |
|                  | Planning                     |                       |                       |                      |                      |

#### Task Name

Free form text input field. (No restriction for adding a same name task). It's a mandatory field.

#### Notes

Free form text input field. Not mandatory

#### Dates

##### **One time tasks** (Meeting/Notes tasks or One time Ad-hoc tasks)

- **Notification Date** 

  - Date input field. Its applicable only when `Start Date` is greater than current date. It allows to enter a past or future date.

  - It's not a mandatory field. It's always lower than the start date.

- **Start Date**
  - Date input field. It’s a mandatory field. It’s always lower than Due Date. It allows to enter a past or future date.

- **Due Date**
  - Date input field. It’s a mandatory field. It’s not a past date.
  - When any dated is in past then show this error message: `Should be >= Current date`.

- When any of the date is inconsistent, it shows proper error message: 
  - Error message when `Notificaion date` is available: `Dates should be in order of: Notification Date < Start Date < Due Date`.
  - Error message when `Notificaion date` is not available: `Dates should be in order of: Notification Date < Start Date < Due Date`.

##### **Recurring tasks**

Notification Date: Defined as an offset of `N days before Start Date`. Its a mandatory field.

Start Date: Defined as an offset of `N days before Due Date`. Its a mandatory field.

Due Date: Date input field. It’s a mandatory field. It’s not a past date.

#### Repeats on

Only applicable to Recurring tasks. Frequency at which this task should be auto created by system. 

Its possible values are Monthly, Quarterly, Semi-Annual, Annually

#### RACI Roles

- For Meeting/Note, One Time & Instance of Recurring tasks: It's a dropdown of Clarius Employees
- `RACI Roles` and `+` button both are disabled until the `Family` is selected. On hover, shows tooltip message.
  - Tooltip message: `First select the family`
- `Roles` dropdown is divided into two groups: `Client Team` & `Other Team`
- Client team is shown first in the dropdown.
- Client Team
  - It shows all associated users of the family.
  - Sorting order:
    - Primary sorting on roles in order of - Director, Advisor, Investment Director, Associate Advisor, Investment Associate, Client Manager, Client Associate, Operations, Personal Controller
    - Secondary sorting on alphabetical order of user name.
    - Show lead person at top in case of multiple persons in same role.
  - For such users, shows roles names as secondary information in the dropdown.
  - In case of multiple users, shows the `Tick mark` icon for the user is marked as lead for that family. 
- Other Team
  - It shows other users in alphabetical order.

**Responsible** : Mandatory. Multiple users can be added.

**Accountable** : Not mandatory . Only single person is allowed.

**Consulted / Informed** : Not mandatory. Multiple users can be added

Same user can be added in the different roles but same user can not be added in same role. In this case, it will show error `Duplicate value is not allowed`.

For `One time task`, it's a disabled until the family is not selected.

##### Recurring Trigger

- For Recurring trigger: It's a dropdown of families roles.

- If the assigned role is not available at family level, system follows the fallback logic as below:
  - If no Client associate- task rolls to Client Manager
  - If no associate advisor - task rolls to Advisor
  - If no Investment Direct - task rolls to Advisor
  - If no Director, roll to Advisor
  - If no Personal Controller, roll to Advisor

  ###### Known Case
  - If the user changes the date of the trigger in such a way that the first task of the trigger will come in the open tab. So the system will always add new tasks in the Open tab. (Here the system will add a new task even if the old task of that trigger is already open tab) 
    - For e.g.
      - Suppose I have created a Trigger where the Due date is `10 Mar 2022` and the Start date is set to `6` days and the Notification date is set to `6` days. So the first task of this trigger will appear in the `Open` tab and the rest of the tasks will appear in the `Upcoming` tab. 
      - Now When the user opens the Edit trigger dialog and change both dates of `Notification date` and `Start date` from `6` days to `7` days and Save the Trigger.
      - Then system will updates all the upcoming tasks based on the new dates and the Open task will remain as it is. But in this case, the system will again create a new open task in the Open tab.
  
  

## Edit task (One time or Recurring)

- Tasks whose status is `Done` can't be edited. Task in any other status can be edited any time
- For Open Task (Whose notification dates is passed), `Notification date` can not be edited.
- For Upcoming tasks dates can be edited. This means that system doesn't allow to edit task in such a way that task is removed from open tab and move to the Upcoming tab
  - For e.g. Consider one task whose Notification date is 15 November 2021, and today's date is 18 November 2021. So this task will be available in Open tab and when user Edit that task, `Notification date` will be disable. 
- On Edit, If user removes the family name, the values of the `Entity`, `Section` and `RACI Roles` will be reset and disabled.

### Edit One time/Meeting tasks

- One time task can be edited anytime. 
- For Open tasks, 
  - Any of the details can be edited except `Notification date`.
  - If the task doesn't have a notification date and the user changes the start date to a future date, `Notification date` doesn't appear. 

- For Upcoming tasks, user can change any of the details. (Notes: Here consider that task will be moved from `Upcoming` tab to `Open` tab)

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



## View task (One time or Recurring)

- Shows the details of the task in 3 tabs: `Details`, `Notes ` & `Chat`.
- Shows `Star`  on header. On click, opens the `Change Priority` dialog.
- When user opens the view dialog, by default `Details` tab is selected.
- For `Open` task,
  - Show `In Progress` status is in the green colour and `Blocked` status in the red colour.
  - `Change Priority`, `Change Status` & `Delete` action is applicable.
- For `Done` task, 
  - Only `Reopen` action is applicable.
  - Shows done by user name and done date in the header. For e.g. `Task done by Keith V. on Apr 21, 2021`
- **`Details` tab**
  - If the `Due Date` of the open task is overdue then shows it in red colour.
  - Open task can be edited anytime.
  - Shows links for: Entity, Responsible, Accountable, Consulted, Informed (For Recurring trigger, RACI roles won't be a link)
  - On click of Roles, open that users view dialog on same page.
  - Shows `Created by` & `Updated by` at the last of the dialog.
  - Special Rule
    - In edit dialog, we have shown the `Notification Date` after the `Start Date`.
    - But as per the Keith, we have shown the `Notification Date` is first in the view dialog.

- **`Notes` tab**
  - If task has no notes available and user opens the `Notes` tab, the Notes tab will open in edit mode by default..
  - 



### UI Rule

* View of the Open task //TODO mockup

- View of the Recurring task trigger //TODO mockup
- View of the Recurring task instance //TODO mockup



## Delete task (One time or Recurring)

- Tasks whose status is `Done`  can't be deleted. Task in any other status can be deleted any time.
- When any task is deleted, system sends in-app notification to associated users.
- When any families is marked as Archived, 
  - Its open task will remain as it is. But the upcoming task will be deleted.  
  - Its recurring task trigger will be deleted.  
  - Already created Systematic task will remain as it is but new systematic tasks won’t be created


#### Recurring tasks

##### Delete instance

- When user delete any of the instane then only particular instance will be deleted, trigger won't be deleted.

##### Delete trigger

- When the user deletes any of the trigger then the system deletes trigger and all upcoming task. 
- Its open instance won't be deleted. 



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



## Change the Priority of the task

See [Status of the tasks](./overview#priority)

The default task is created with the Normal priority. Users can change a task's priority anytime. For a done task, a user won't be able to change the priority. 

