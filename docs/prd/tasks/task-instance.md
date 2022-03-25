# Task Instance
See [Overview](./overview#tasks) 

Meeting/Notes tasks and One time Ad-hoc tasks are exactly same. Only difference is: Meeting/Notes tasks can be added from Meeting/Notes only and also available with Meeting/Note records. Those tasks can be managed from Meeting/Note page.

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

### Status

The lifecycle of Athena tasks is similar to that of Kerika tasks, and is noted as a Status value:

**Pending**: The Start Date is still ahead.

**Ready**: the recommended Start Date has elapsed, so the task should get picked by the Responsible person(s) soon. (System will mark tasks as Ready on the Start Date.) E.g. start renewal process for passport since it takes 6 months.

System runs nightly job to update the status of the upcoming tasks. If the status of the task is `Pending` and its due date is approached its status will be changed to `Ready` by system. 

**In Progress**: task is being worked on by the Responsible people. Marked as In Progress by the Responsible people: this could happen even before the Ready state. E.g. ACM is working with the client on getting the application signed, or application has been submitted and we are waiting on the passport office to act upon it.

**On Hold**: task cannot proceed, even though the Start Date has elapsed, for insurmountable reasons. E.g. The client is not available in certain time periods. So the status can be marked as hold for that time period. 

**Blocked**: task cannot proceed, even though the Start Date has elapsed, for insurmountable reasons. E.g. The client is in quarantine and can’t sign any papers or government shutdown.

**Done**: task has been successfully completed. E.g. new passport received.

Note: A task that has not succeeded will be marked as Overdue and In Progress, because the Due Date will have elapsed but the task has not reached a successful conclusion.


### Priority
Priority of the task. Possible values are: `Critical`, `High Priority`, `Normal`. 

**Critical**: Task whose priority is too high

**High Priority:** Task whose priority is high

**Normal:** Task whose priority is normal

### Task Name
- Name of the task. It's a mandatory field.
- No restriction for adding a same name task

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
Notes of the task. Rich text input field. Its Optional.

### Dates

#### Start Date
  - The date by which the task is expected to start to avoid risks: e.g. start a passport renewal 6 months before expiry.
  - Start date is exact date. It’s always lower than Due Date

#### Due Date
  - The date by which the task must be successfully completed.


### RACI Roles

**Responsible** : Mandatory. Multiple persons can be added. This person is expected to get the task done; the task will show up in their work queue.

**Accountable** : Not mandatory . Only single person is allowed. He is ultimately responsible for making sure the work gets done. He will push the Responsible person if task doesn’t start or end on time

**Consulted** : Not mandatory. Multiple persons can be added. They are expected to contribute to the work, and so the task will appear in their work queues as well so they can anticipate being called upon.

**Informed** : Not mandatory. Multiple persons can be added. They are informed when a work completes successfully or fails.


## Add Task
### System rules
- When Start date is current or Past, its status will be directly set to Ready. If Start date is on future, its status is set to Pending
- When task is added, notification will sent to RACI team of the task
### UX Rules
- Family
    - Family dropdown. 
    - Shows all families of the application in alphabetical sorted.
    - Archived family is not availble.
    - For `Meeting/notes` task, current family is prefilled and doesn't allowed to change it
- Legal Entities
    - Default it is a disabled field. It is enabled once the Family is selected. 
    - On hover, shows tooltip message.
    - Shows all entities of a particular family. Deceased/Terminated/Archived legal entities are not available
    - Shows entity type in the secondary information.
    - For `Ad-hoc` task, it's a disabled until the family is not selected.
- Section
    - Default it is a disabled field. It is enabled once the entity is selected. 
    - On hover, shows tooltip message.
    - It's a mandatory field. Shows only the applicable sections of the selected entity. At a time only one section is selected.
- Priority
    - Dropdown of all priority values.
    - Default value is `Normal`
    - Dropdown shows star icon.
- Status
  - Dropdown of all status values
  - Default value is `Ready`.
  - If `Start date` is future date, the status will be set to `Pending` and the field will be disabled. For e.g. If user has selected `In Progress` in status and then set the start date of the future date, it will reset status to `Pending` and disabled.
  - `Done` status doesn’t appear in the dropdown.
- Taks name
    - Free form text input field
- Task Source
-   Its a dropdown field.
- Date (Task source)
    - Default it is a disabled field. It is enabled once the Task Source is selected.
    - Default current date is prefilled. Doesn't allows to enter a future date otherwise system shows erroe message.
- Dates
    - Start Date
        - Date input field. Default current date is prefiled. 
        - Allows to enter a past or future date.
    - Due Date
        - Date input field.
        - Doesn't allows to enter past date otherwise system shows error message.
- RACI
    - `RACI Roles` and `+` button both are disabled field until the `Family` is selected. On hover, shows tooltip message.
    - `+` button is disable once the user adds one record in the `Accountable` role
    - In each role, a certain definition message appears to identify the purpose of the role.
    - Shows proper message when no roles available.
    - Same user can be added in the different roles but same user can not be added in same role. In this case, it will show error.
    - `Roles` dropdown is divided into two groups: `Client Team` & `Other Team`
    - Client team is shown first in the dropdown.
    - **Client Team**
      - It shows all associated users of the family.
      - Sorting order:
          - Primary sorting on roles in order of - Director, Advisor, Investment Director, Associate Advisor, Investment Associate, Client Manager, Client Associate, Operations, Personal Controller
          - Secondary sorting on alphabetical order of user name.
          - Show lead person at top in case of multiple persons in same role. Shows the `Tick mark` icon for the such user is marked as lead for that family.
      - For such users, shows roles names as secondary information in the dropdown. 
    - **Other Team**
    -   It shows other users in alphabetical order.

### UI notes
Mockup [See this](https://drive.google.com/file/d/1xy60U4OoMbO2SlrUDIXfr-qgUVZ1s4aM/view?usp=sharing)
- Error message 
    - when start date is greater than Due date: `Should be <= Due Date`.
    - when due date is past: `Should be >= Current date`.
    - When Date (Task Source) is future: `Future date is not allowed`
- Error message for RACI Roles: `Duplicate value is not allowed`
- Tooltip message 
    - Section: `First select the entity`
    - Familiy and RACI Roles: `First select the family`
- Proper message when no records available
  - Accontable: `No Accountable Available`
  - Consulted: `No Consulted Available`
  - Informed: `No Informed Available`
- Message with each roles
  - Responsible: `Does the work and completes the task`
  - Accountable: `Reserved for tasks requiring review and/or dual control; ultimately accountable`
  - Consulted: `Those whose opinions are sought`
  - Informed: `Those who are kept up-to-date on progress, often only on completion`

## Edit Task
### System Rule
- Tasks whose status is `Done` can't be edited. Task in any other status can be edited any time
- For Upcoming tasks dates can be edited. Open task's date can not be edited because we don't want to allow edit of task in such a way that task is removed from open tab and move to the Upcoming tab
  - For e.g. Consider one task whose Start date is `15 November 2021`, and today's date is `18 November 2021`. So this task will be available in Open tab and when user Edit that task, `Start date` will be disable. 
- During Edit, If Family is reset, the values of the `Entity` and `Section` will also be reset and disabled while `RACI Roles` won't be reset but it will be disabled. 

### UI Rule
Mockup //TODO


## Delete task
- Tasks whose status is `Done` can't be deleted. Task in any other status can be deleted any time.
- When any task is deleted, system sends in-app notification to associated users.
- When any families is marked as Archived, all of its open tasks will remain as it is. But all the upcoming tasks will be auto deleted.
### UX Rules
- When user deletes any recurring task instance, it shows the link of the trigger in the delete confirmation dialog. If triggers is already deleted, it shows message about triggers is already deleted.

### UI Rules
- Mockup of Recurring task instance delete dialog whose trigger is still available [See this](https://drive.google.com/file/d/1SEmiroY9rAqnK88y48DKEkLG3cKZFH-b/view?usp=sharing)
- Mockup of Recurring task instance delete dialog whose trigger is already deleted [See this](https://drive.google.com/file/d/1qUj8c50lHeqQkgO-j4FarpfQ9gr6-j0d/view?usp=sharing)
- Mockup of one-time task delete dialog [See this](https://drive.google.com/file/d/1vkONaTaWEE7BvdGjH0dYL3dGHBIj1AoQ/view?usp=sharing)


## Mark as Done

### System Rule

- Only `Open` tasks can be marked as done. Upcoming tasks can't.
- When any task is marked as done, system sends in-app notification to associated users.
- When any task is marked as done, system ask for `Done Date`. Useful when user knows that task was completed in past but it was missed to Mark as done.

### UX Rule

- This action is applicable only for `Open` tab.
- Default value of Done date is current date. User can select any past date otherwise system show error message.
- `Done Date` is a mandatory field. By default, the current date is prefiled. Future date is not allowed otherwise shows an error message: `Future date is not allowed`.

### UI Rule
Mockup [See this](https://drive.google.com/file/d/1DS-yGAswDIyX6vJNBbzn8AeO6nlpJDs2/view?usp=sharing)


## Reopen task

### System Rule

- Only `Done` tasks can be reopened. 
- When any task is reopened, system sends in-app notification to associated users.

### UX Rule

- This action is applicable from `Done bucket in Open tab` & `Completed` tab.
- When any task is reopened, system shows confirmation dialog.
- On confirmation, it goes into any bucket based on the `Due date` and any status of the open tab based on the `Start Date`.

### UI Rule
[Mockup](https://drive.google.com/file/d/1pEFvVMgBtnmxgV8T_wGjzsxmhLUGJq7m/view?usp=sharing)



## Change status of the task

See [Status of the tasks](./overview#status)

Once `Start date` is passed, system will ensure that status is marked as `Ready`.

User can change task's status anytime. There isn't any restriction.

### UX Rule
- `Ready` action doesn't applicable for any of the task whose status is other than `Ready`.

## Change the Priority of the task
- By default task is created with the Normal priority. Users can change a task's priority anytime. 
- For a done task, a user won't be able to change the priority. 

## View task

- Shows the details of the task in 3 tabs: `Details`, `Notes` & `Chat`.
- Shows `Star` on header. On click, opens the `Change Priority` dialog.
- When user opens the view dialog, by default `Details` tab is selected.
- For `Open` task,
  - Show `In Progress` status is in the green colour and `Blocked` status in the red colour.
  - `Change Priority`, `Change Status` & `Delete` action is applicable.
- For `Done` task, 
  - Only `Reopen` action is applicable.
  - Shows done by user name and done date in the header. For e.g. `Task done by Keith V. on Apr 21, 2021`.

### Details tab
  - If the `Due Date` of the open task is overdue then shows it in red colour.
  - Open task can be edited anytime.
  - Shows links for: Entity, Responsible, Accountable, Consulted, Informed
  - On click of Roles, open that users view dialog on same page.
  - If a task has `Task Source` and `Date`, then it shows like `{Task Source} {Date}` otherwise shows `-`.
  - Shows `Created by` & `Updated by` at the last of the dialog.

### Notes tab
  - If a task has no note available and the user opens the `Notes` tab of that task, the `Notes` tab will open in edit mode by default.
    - Button won't be appear when there is the notes is empty.
  - If the notes are already available and user opens the `Notes` tab, the `Notes` tab will open in view mode. 
    - For that, system shows `Edit Details` action. On click, it will open the note in edit mode.
    - This action is not applicable for the done task.
  - Shows proper message when no notes are available for the done task. Message is `No Notes Available`.

### Chat tab
  - Not applicable for the  `Recurring Task Trigger`.
  - Chat tab doesn't available to meeting/note tasks until the meeting is not saved.
  - See this [Chat tab](./../chat/chat.md#browse-chat-of-a-single-task-chat-tab-on-task-view-dialog) for more details


### UI Rule
- Message when no notes available for done task: `No Notes Available`
- View of the Open task [See this](https://drive.google.com/file/d/1RFXlvgbtUoAJhLPFX0fopcBkx23RJHIh/view?usp=sharing)
- View of the Recurring task trigger //TODO mockup
- View of the Recurring task instance //TODO mockup

## Nightly job to change status of the task
- System runs nightly job to update the status of the upcoming tasks
- If the status of the Upcomig task is `Pending` and its due date is approached its status will be changed to `Ready`

## Section master
-  Its a combination of all applicable tabs and all Meeting agenda sections of a particular legal entity type.


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


## Design decision

#### Why status can not be changed from Edit dialog?

There isn't any technical limit but its UX design level decision. Assumption is - Status change is frequent action, So we have given it as separate action. 

#### Why we allows edit of RACI roles?

If someone is going to be away (vacation, maternity, ST disability, etc.), task can be assigned to someone else