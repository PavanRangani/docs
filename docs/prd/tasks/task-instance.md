# Task Instance
See Overview of [type of tasks](./overview#tasks) 

Meeting/Notes tasks and One time Ad-hoc tasks are exactly same. Only difference is: Meeting/Notes tasks are available with Meeting/Note records. Those tasks can be managed from Meeting/Note page.

Meeting task can't be added once the family of the entity is archived. 

Ad-hoc tasks can be added from header using + button from any page of the application. They are only available in My tasks page. 

## Entity details

### Family
It's a mandatory field.
Any Family of the application
### Entity
It's a mandatory field.
Any Legal entity of the above selected Family
### Section
It's a mandatory field. 
Any one value from Master can be set
See [Master](#section-master) for possible values.


### Priority
- Priority of the task. 
- Possible values are: `Critical`, `High Priority`, `Normal`. 
- 
### Task Name
Name of the task. It's a mandatory field.
No restriction for adding a same name task

### Task Source
- Useful to track the Source of the task. Many times task created based on any Email or Phone call.
- Possible values are: `Email` & `Phone call`.
- This is optional field. 

### Date (Task source)
- Applicable only when a `Task Source` is selected. 
- Useful to track the date of Email of Phone call based on which this task is created
- It's a mandatory field. Default value is current date. Future date is not allowed
- Not applicable for the Recurring task trigger.

### Notes
Notes of the task. Free form text input field. Its Optional.

### Dates

#### Notification Date
  - Date input field. Its applicable only when `Start Date` is greater than current date. It allows to enter a past or future date.
  - It's not a mandatory field. It's always lower than the start date.

#### Start Date
  - Date input field. It’s a mandatory field. It’s always lower than Due Date. It allows to enter a past or future date.

#### Due Date
  - Date input field. It’s a mandatory field. It’s not a past date.
  - When any dated is in past then show this error message: `Should be >= Current date`.


### RACI Roles

**Responsible** : Mandatory. Multiple persons can be added.

**Accountable** : Not mandatory . Only single person is allowed.

**Consulted / Informed** : Not mandatory. Multiple persons can be added

Same user can be added in the different roles but same user can not be added in same role. In this case, it will show error `Duplicate value is not allowed`.

For `One time task`, it's a disabled until the family is not selected.


## Add Task
### System rules

### UX Rules
- Family
    - Family dropdown. 
    - Shows all families of the application in alphabetical sorted.
    - Archived family is not availble.
    - For `Meeting/notes` task, current family is prefilled and doesn't allowed to change it
- Legal Entities
    - Shows all entities of a particular family. Deceased/Terminated/Archived legal entities are not available
    - Shows entity type in the secondary information.
    - For `Ad-hoc` task, it's a disabled until the family is not selected.
    - For `Meeting/Notes` task, current legal entity is prefilled and doesn't allowed to change it
- Section
    - Default it is a disabled field. It is enabled once the entity is selected. 
    - On hover, shows tooltip message. Message is: `First select the entity`
    - It's a mandatory field. Shows only the applicable sections of the selected entity. At a time only one section is selected.
    - There is two types of Section available in the dropdown: `Tabs` & `Agenda Items`.
- Priority
    - Dropdown of all priority values.
    - Default value is `Normal`
    - Dropdown shows star icon.
- Taks name
    - Free form text input field
- Dates
    - Notification Date
        - Date input field. Its applicable only when `Start Date` is greater than current date. It allows to enter a past or future date.
        - It's always lower than the Start date.
    - Start Date
        - Date input field. 
        - It’s always lower than Due Date. 
        - Allows to enter a past or future date.
    - Due Date
        - Date input field. 
        - Doesn't allows to enter past date.
        - When any date is in past then show this error message: `Should be >= Current date`.

- RACI
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

### UI notes
- When any of the date is inconsistent, it shows proper error message: 
  - Error message when `Notificaion date` is available: `Dates should be in order of: Notification Date < Start Date < Due Date`.
  - Error message when `Notificaion date` is not available: `Dates should be in order of: Notification Date < Start Date < Due Date`.

- Date (Task source): Error message when future date is selected: `Future date is not allowed`. // TODO: Move to UX section

## Edit Task

- Tasks whose status is `Done` can't be edited. Task in any other status can be edited any time
- For Open Task (Whose notification dates is passed), `Notification date` can not be edited.
- For Upcoming tasks dates can be edited. This means that system doesn't allow to edit task in such a way that task is removed from open tab and move to the Upcoming tab
  - For e.g. Consider one task whose Notification date is 15 November 2021, and today's date is 18 November 2021. So this task will be available in Open tab and when user Edit that task, `Notification date` will be disable. 
- On Edit, If user removes the family name, the values of the `Entity`, `Section` and `RACI Roles` will be reset and disabled.


- One time task can be edited anytime. 
- For Open tasks, 
  - Any of the details can be edited except `Notification date`.
  - If the task doesn't have a notification date and the user changes the start date to a future date, `Notification date` doesn't appear. 
- For Upcoming tasks, user can change any of the details.
- If date is changed, it is possible that task will be moved from `Upcoming` tab to `Open` tab


#### UI Rules

- Show a warning message when the trigger has an open task and the user changes the dates or RACI roles of the trigger. 
  - Warning message for Dates: `Dates of only upcoming tasks of this trigger will be updated. Already open tasks won't be updated.`
  - Warning message for RACI roles: `RACI of only upcoming tasks of this trigger will be updated. Already open tasks won't be updated.`

#### Why status can not be changed from Edit dialog?

There isn't any technical limit but its UX design level decision. Assumption is - Status change is frequent action, So we have given it as separate action. 

#### Why we allows edit of RACI roles?

If someone is going to be away (vacation, maternity, ST disability, etc.), task can be assigned to someone else

## Delete task

- Tasks whose status is `Done`  can't be deleted. Task in any other status can be deleted any time.
- When any task is deleted, system sends in-app notification to associated users.
- When any families is marked as Archived, 
  - Its open task will remain as it is. But the upcoming task will be deleted.  
  - Its recurring task trigger will be deleted.  
  - Already created Systematic task will remain as it is but new systematic tasks won’t be created

- When user delete any of the instane then only particular instance will be deleted, trigger won't be deleted.




## Mark as Done

### System Rule

- Only `Open` tasks can be marked as done. Upcoming tasks can't.
- When any task is marked as done, system sends in-app notification to associated users.
- When any task is marked as done, system ask for `Done Date`. 
- Default value of Done date is current date. User can select any past date. Useful when user knows that task was completed in past but he/she missed to Mark it as done.

### UX Rule

- This action is applicable only for `Open` & `Completed` tab.
- `Done Date` is a mandatory field. By default, the current date is prefiled. Future date is not allowed otherwise system show error message.

### UI Note

Mockup //TODO
- Error message: `Future date is not allowwd`.


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
- By default task is created with the Normal priority. Users can change a task's priority anytime. 
- For a done task, a user won't be able to change the priority. 

## View task

- Shows the details of the task in 3 tabs: `Details`, `Notes ` & `Chat`.
- Shows `Star` on header. On click, opens the `Change Priority` dialog.
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
  - If a task has `Task Source` and `Date`, then it shows like `{Task Source} {Date}` otherwise shows `-`.
  - Shows `Created by` & `Updated by` at the last of the dialog.
  - Special Rule
    - In edit dialog, we have shown the `Notification Date` after the `Start Date`.
    - But as per the Keith, we have shown the `Notification Date` is first in the view dialog.
- **`Notes` tab**
  - If a task has no note available and the user opens the `Notes` tab of that task, the `Notes` tab will open in edit mode by default.
  - If the notes are already available and user opens the `Notes` tab, the `Notes` tab will open in view mode. 
    - For that, system shows `Edit Details` action. On click, it will open the note in edit mode.
    - This action is not applicable for the done task.
  - Shows proper message when no notes are available for the done task. Message is `No Notes Available`.
- **`Chat` tab**
  - Not applicable for the  `Recurring Task Trigger`.
  - See this Requirement //TODO for add link



### UI Rule

- View of the Open task //TODO mockup
- View of the Recurring task trigger //TODO mockup
- View of the Recurring task instance //TODO mockup

## Task view dialog

### Details tab

- If the `Due Date` of the open task is overdue then shows it in red colour.
- Open task can be edited anytime.
- Shows links for: Entity, Responsible, Accountable, Consulted, Informed (For Recurring trigger, RACI roles won't be a link)
- On click of Roles, open that users view dialog on same page.
- Shows `Created by` & `Updated by` at the last of the dialog.
- Special Rule
  - In edit dialog, we have shown the `Notification Date` after the `Start Date`.
  - But as per the Keith, we have shown the `Notification Date` is first in the view dialog.

### Notes tab
- If a task has no note available and the user opens the `Notes` tab of that task, the `Notes` tab will open in edit mode by default.
  - Button won't be appear when there is the notes is empty.
- If the notes are already available and user opens the `Notes` tab, the `Notes` tab will open in view mode. 
  - For that, system shows `Edit Details` action. On click, it will open the note in edit mode.
  - This action is not applicable for the done task.
- Shows proper message when no notes are available for the done task: `No Notes Available`.



### Chat tab

- Not applicable for the  `Recurring Task Trigger`.
- See this Requirement //TODO for add link


## Section master


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
