# Task Instance
See [Overview](./overview#tasks) 

Meeting/Notes tasks, Trade log task and One time Ad-hoc tasks are exactly same. 
Only difference are: 
- Meeting/Notes tasks can be added from Meeting/Notes only and also available with Meeting/Note records and those tasks can be managed from Meeting/Note page.
- Trade logs tasks can be added from the Trade logs and those tasks can be managed from Trade log page/tabs. 
- Ad-hoc tasks can be added from header using + button from any page of the application. They are only available in My tasks page. 

## Entity details

### Task Type
There are 2 types of `One Time` tasks available: `Normal Task` & `Multi-Step Task`.
There are many cases where the Clarius team needs the ability to create multi-step tasks.  This occurs in two different use cases.  
- Multi-Step Task - one-time use
- Multi-Step Template - task that they perform with regularity so they created a template to pull that pre-defines the steps.

### Family
It's a mandatory field.
Any Family of the application

### Entity
It's a mandatory field.
Shows all active entities and deceased individuals of the family. Terminated or Archived entities is not shown in the dropdown.
Entities are sorted on entity type in order of -Joint, Individual, Partnership, Trusts, Foundation, Estate. Each entity type is alphabetically sorted.

### Section
It's a mandatory field. 
Any one value from Master can be set
See [Master](#section-master) for possible values.

### Tag
Normal task has its own tag. Multi-step task doesn't have its own tag, its a roll-up from their sub-task.
Tags values: `Money Movement - Wire`, `Money Movement - Journal`, `Money Movement - Check / ACH`, `Operations - Capital Call`, `Operations - Distribution`, `Operations - QSBS`, `Trading – Cash Raise`, `Trading – General`, `Trading – Loss Harvest` & `Trading – Rebalance` 

### Template Name
Applicable only for `Multi-Step` task type.
Multi-Step template of the application. User can select template based on the frequency and section. 

### Sub-Tasks
Applicable only for `Multi-Step` task type. 
Sub-Tasks have these types of fields: `Category`, `Sub-Task Name`, `Tag`, `Initiate`, `Approve`, `From Account`, `To Account`, `Responsible`, `Due Date`, `Status`.

#### Category
There are some pre-defind category of the Sub-Task.
There are 5 types of categories: `Accounting`, `Advisory`, `Investments`, `Investment Ops`, `Client Services - General` & `Client Services - Money Movement`.

#### Sub-Task Name
Name of the Sub-Task. It's a mandatory field.
No restriction for adding a same name Sub-Task

#### Tag
Each sub-task has its own tag. Tags values: `Money Movement - Wire`, `Money Movement - Journal`, `Money Movement - Check / ACH`, `Operations - Capital Call`, `Operations - Distribution`, `Operations - QSBS`, `Trading – Cash Raise`, `Trading – General`, `Trading – Loss Harvest` & `Trading – Rebalance`.
For `Client Services - Money Movement`, shows only `Money Movement - Wire`, `Money Movement - Journal` & `Money Movement - Check / ACH`.

#### Intiate
Applicable only for `Client Services - Money Movement` sub-tasks. It's a mandatory field.

#### Approve
Applicable only for `Client Services - Money Movement` sub-tasks. It's a mandatory field.

#### From Account
Applicable only for `Client Services - Money Movement` sub-tasks. It's a mandatory field.

### To Account
Applicable only for `Client Services - Money Movement` sub-tasks. It's a mandatory field.

#### Responsible
Name of the user whose responsible to complete the Sub-Task as done. It's a mandatory field. Multiple persons can be added.

#### Due Date
The date by which the Sub-Task must be successfully completed. It should be less than the due date of the parent task. Past date is also not allowed. It's a mandatory field. 

#### Status
Possible values are same as a Parent task status except `Client Services - Money Movement` category. For that, It has `Pending Approval` status instead of `Pending`. 
Only one difference is, here status can be changed freely. User can set any status anytime. It's a mandatory field. 

### Status

The lifecycle of Athena tasks is similar to that of Kerika tasks, and is noted as a Status value:

**Pending**: The Start Date is still ahead. Not applicable for `Client Services - Money Movement` category

**Ready**: the recommended Start Date has elapsed, so the task should get picked by the Responsible person(s) soon. (System will mark tasks as Ready on the Start Date.) E.g. start renewal process for passport since it takes 6 months.

System runs nightly job to update the status of the upcoming tasks. If the status of the task is `Pending` and its due date is approached its status will be changed to `Ready` by system. 

**Pending Approval**: Applicable only for `Client Services - Money Movement` category. When Initiate user completed his work, he will change the task status to Pending Approval. So Approve user can start his work.

**In Progress**: task is being worked on by the Responsible people. Marked as In Progress by the Responsible people: this could happen even before the Ready state. E.g. ACM is working with the client on getting the application signed, or application has been submitted and we are waiting on the passport office to act upon it.

**On Hold**: task cannot proceed, even though the Start Date has elapsed, for insurmountable reasons. E.g. The client is not available in certain time periods. So the status can be marked as hold for that time period. 

**Blocked**: task cannot proceed, even though the Start Date has elapsed, for insurmountable reasons. E.g. The client is in quarantine and can’t sign any papers or government shutdown.

**NA**: task cannot proceed, even though the Start Date has elapsed, for insurmountable reasons. For E.g. Sometimes step of the task is not valid for task. So simply user can set status to NA.

**Done**: task has been successfully completed. E.g. new passport received.

Note: A task that has not succeeded will be marked as Overdue and In Progress, because the Due Date will have elapsed but the task has not reached a successful conclusion.


### Priority
Priority of the task or Sub-task. Possible values are: `Critical`, `High Priority`, `Normal`. 

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
  - Its always the greater than the current date. Not mandatory for `Blocked`, `On Hold` & `Done` status & `Multi-Step` tasks.
  - For `Multi-Step` task, its calculated field based on the due date of the Sub-task. 

### RAI Roles
**Responsible** : Mandatory for `Normal` task. Multiple persons can be added. Not applicable for `Multi-Step` task. For `Multi-Step`, one responsible person can be added with each Sub-Task. This person is expected to get the task done; the task will show up in their work queue.

**Accountable** : Mandatory for `Multi-Step` task. Not mandatory for `Normal` task. Only single person is allowed. He is ultimately responsible for making sure the work gets done. He will push the Responsible person if task doesn’t start or end on time

**Informed** : Not mandatory for both task types. Multiple persons can be added. They are informed when a work completes successfully or fails.

System maintains role of the user along with task so that it can show proper tasks in Group tab when particular group is selected. For e.g. Ravi is selected as Accountable in one of the task and Ravi's role is CA. So system will maintain that Ravi is associated as CA with this task. 

## Add Task 
### System rules
- When Start date is current or Past, its status will be directly set to Ready. If Start date is on future, its status is set to Pending
- When task is added, notification will sent to RAI team of the task
- Each task can have multiple notes. Each note will have `Created by` & `Updated by` time and user.
- Can't add tasks for entities that do not have a household team.

### UX Rules
- Task Type
  - Default `Normal` type is selected. Users can change it to `Multi-Step` anytime.
- Template Name
  - Template name field have one icon.
  - On click of Icon, opens a template selection dialog. [See more details](../ui-components/template-selection-dialog.md#template-selection-dialog)
  - On click of field, opens a dropdown of template name in alphabetical order. Shows description of template in secondary informatation. Shows template section, frequency and family in meta data.
  - `Sub-Tasks` will be added based on the selected Multi-Step template.
- Family
    - Family dropdown. 
    - Shows all families of the application in alphabetical sorted.
    - Archived family is not available.
    - For `Meeting/notes` task, current family is prefilled and doesn't allowed to change it
    - For `Trade log` task, the selected trade log family is pre-filled and doesn't allow to change it.
    - For `Multi-step` template, if custom frequency template is selected, family name is shown prefilled.
      - It doesn't show prefilled for Entity Task, Meeting/Notes or Tradelogs task. 
- Entity
    - Default it is a disabled field. It is enabled once the Family is selected. 
    - On hover of disabled field, shows tooltip message.
    - When the selected entity doesn't have `Household team`, shows error message in the entity field. See [this](https://drive.google.com/file/d/12Q2dlEAJep48QuMh918jm6pJZ7Bc87WK/view?usp=sharing)
    - Dropdown is group by entity type.
    - Shows `Deceased` word as metadata for deceased Individuals. 
    - When user selects the deceased individual, system shows hint message in the Entity field. [See this](https://drive.google.com/file/d/1RjIbm56RgtSQJ2eAkHmTPydEJ-tQmULa/view?usp=sharing)
    - For `Ad-hoc` task, it's a disabled until the family is not selected.
    - For `Trade log` task, the selected trade log entity is pre-filled and doesn't allow to change it
- Section
    - It's a mandatory field. At a time only one section is selected.
    - For `Trade log` task, `Investment` section is pre-filled and doesn't allow to change it.
    - For `Multi-step` template, Section is auto filled based on the selected template.
      - It is not prefilled for Entity Task, Meeting/Notes or Tradelogs task.
- Tag
  - It's alphabetical sorted dropdown.
- Priority
    - Dropdown of all priority values.
    - Default value is `Normal`
    - Dropdown shows star icon.
- Status
  - Dropdown of all status values.
  - Default value is `Ready`.
  - If `Start date` is future date, the status will be set to `Pending` and the field will be disabled. For e.g. If user has selected `In Progress` in status and then set the start date of the future date, it will reset status to `Pending` and disabled.
  - NA Status won't be applicable for normal task or parent tasks of Multi-step. 
  - `Done` status doesn’t appear in the dropdown.
- Tasks Name
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
    - When user change the start date to future date, task can be removed from Open tab to Upcoming tab. 
    - For `Trade log` task, default start date will be set to `today + 30`. For ex. If the current date is `29th Mar 2022`, start date will be set to the `28th Apr 2022`.
  - Due Date
    - Date input field. By default, it is blank. 
    - Shows error message when user enters a past date.
    - It is always greater than or equal to `Start date` otherwise system shows error message.
    - For `Multi-Step` task, 
      - It's a disabled field and the user can't add it. It shows the highest due date of the Sub-task.
      - It's enabled when the `Configure Due days for subtasks` is true in the template. 
        - When user enter a due date, system will auto calculate sub-tasks due date based on the days entered in the template. (This date is not stored in the database)
        - When user removes the template for the one-time tasks, system will reset the due date of the task and set the max due date of the sub-tasks and field will be disabled.
      - When user change the due date, system won't update the due date of the manually added sub-tasks.
- RAI
  - `RAI Roles` and `+` button both are disabled field until the `Entity` is selected. On hover, shows tooltip message. [See this](https://drive.google.com/file/d/1PiyognACAXBey66w5-DZjlLOpiG5GK1W/view?usp=sharing)
  - For `Trade log` tasks, Responsible roles will be pre filled with the `Investment Associte` of the selected family and allows to change it.
  - `+` button is disable once the user adds one record in the `Accountable` role
  - In each role, a certain definition message appears to identify the purpose of the role.
  - For `Multi-Step` task, Responsible roles are added in the `Sub-Tasks` section. So it isn't available in the RAI roles section.
  - Shows proper message when no roles available.
  - Same user can be added in the different roles but same user can not be added in same role. In this case, it will show error.
  - `Roles` dropdown is divided into two groups: `Client Team` & `Other Team`
  - Client team is shown first in the dropdown.
  - **Client Team**
    - It shows all associated users of the selected entity.
    - If entity has no its own team but it has household as a Service team, shows only associated users of the entity not all team of selected household.
    - Shows CA Pool at last of the dropdown. Shows `Client Associate` as a secondary information.
    - Sorting order:
        - Primary sorting on roles in order of - Director, Advisor, Investment Director, Associate Advisor, Investment Associate, Client Manager, Client Associate, Operations, Personal Controller
        - Secondary sorting on alphabetical order of user name.
        - Show lead person at top in case of multiple persons in same role. Shows the `Tick mark` icon for the such user is marked as lead for that family.
    - For such users, shows roles names as secondary information in the dropdown. 
  - **Other Team**
    -  It shows other users who are not in the entity's household team. It sorted in alphabetical order.

#### Sub-Tasks
- Applicable only for the `Multi-Step` task.
- Shows proper message when no Sub-Tasks Available
- Add/Remove Sub-Task
  - Shows + button with Sub-task section. Clicking on the + button, opens the Sub-Task category dropdown. 
    - On click of any above category, Sub-Task will be added under that category.
    - New Sub-Task always be added to the last of the category.
    - Shows X icon to the right side. On click of X, Sub-Task will be removed. (Done sub-task will also be removed)
- Priority
  - Dropdown of all priority values.
  - Default value is `Normal`
  - Dropdown shows star icon.
- Sub-Task Name
  - Free form text input field
  - If the task name is too long it appears in the next line.
- Tag
  - It's alphabetical sorted dropdown.
- Responsible
  - It's a multi-select dropdown.
  - Dropdown is same as the Parent task RAI dropdown.
  - If the user selects one user then show the user name. If the user selects multiple users then show all users' short names. (If it is too long, shows elipsis)
  - On hover, shows a tooltip. Tooltip shows the full names of all users
- Initiate
  - It is a dropdown of the active clarius user. Only single person is allowed.
  - Shows `CA Pool` user in the dropdown.
  - If a selected family has a `Client Associate` user, the system prefills that user name. 
    - If a family has more than one user, the system prefills the mark as lead user. 
    - If family has no user available, system prefills the `CA Pool`.
- Approve
  - It is a dropdown of the active clarius user. Only single person is allowed.
  - If a selected family has a `Client Manager` user, the system prefills that user name. 
    - If family has more than one user, the system prefills the mark as lead user. 
- From Account
  - It is dropdown of all active funding accounts of the family. If family is not selected, shows all families active funding accounts. 
  - Dropdown is alphabetically sorted.
  - Shows `Funding Account` and `Account Number` with pipeline separated. For e.g. `Lunagariya Schwab Joint Account | 1245`.
  - When tag is selected `Money Movement - Check / ACH`, this dropdown shows all active funding accounts and all `SLOA Moneylinks` of the family. If family is not selected, shows all families active funding accounts and `SLOA MoneyLink`.
  - When user enter a new name which is not available in dropdown, system allows to enter it. Shows `Text` word as metadata.
  - If the selected account is marked as Disposed, system won't auto remove the account. It is prefilled but when the user opens the dropdown, it is not shown in dropdown.
  - When any funding account is deleted, the system will remove the back link to the funding account. Funding account name will be shown as a text.
- To Account
  - Shows all SLOAs of the selected funding account when no tag is selected in sub-tasks.
  - Dropdown is alphabetically sorted.
  - Shows `Funding Account` or `SLOA Account` and `Account Number` with pipeline separated. For e.g. `SLOA Moneylinks | 1245`.
  - Dropdown is changed according to tag: 
    - When tag is `Money Movement - Journal`, shows only `SLOA Journal` type accounts of the selected funding account.
    - When tag is `Money Movement - Wire`, shows only `SLOA Wire (General)` & `SLOA Wire (Investments)` type accounts of the selected funding account.
    - When tag is `Money Movement - Check / ACH`, shows `Funding Accounts`, `SLOA Moneylinks` & `SLOA Check`.  
  - When user enter a new name which is not available in dropdown, system allows to enter it. Shows `Text` word as metadata.
  - If the selected account is marked as Disposed, system won't auto remove the account. It is prefilled but when the user opens the dropdown, it is not shown in dropdown.
  - When any funding account is deleted, the system will remove the back link to the funding account. Funding account name will be shown as a text.
- Amount
  - It is amount input field. Decimal is allowed. Default it shows `$0.00`.
- Due Date
  - Date input field. Doesn't allow to enter past date otherwise system shows error message.
  - For `Blocked` & `On Hold` status, it's not a mandatory field.
  - It's always greater than the Star date otherwise system shows error message.
  - For task created using template,  
    - Suppose the sub-tasks of the template will have Due days, shows the due date will shown according to them.
- Status
  - Status dropdown. Default `Pending` status is selected.
  - For `Client Services - Money Movement` category, default `Ready` status is selected.
  - `Done` status is not available in the Add dialog (There is no point by adding subtask which is already done)
- Auto create Sub-task from template
  - When Template is selected, Sub-tasks will be auto created from the Template
  - Sub-Tasks will be created in same order as available in Template
  - Responsible value is auto-prefilled from template Role and Family team. If family is not yet selected, Responsible remains blank. When family is selected, Responsible is prefilled.
  - Resolution of Responsible person from template role and Family is as per [this](./recurring-task-trigger.md#add-recurring-trigger). When any role has multiple persons, Person having Lead role will be choosen always.
  - Due date is never prefilled.
- It is possible that some Sub-tasks are derived from template and Sub-tasks are added manually by user.
- Multi-step task must have at least one Sub-Task available otherwise the system Shows an error message.
- When user change the template, all the current Sub-Tasks (Manually added + template) will be removed and new template Sub-Tasks will be created. For this, system shows confirmation dialog.
- Change order of Sub-Task
  - On hover of any Sub-Task, Shows Drag handle the left side 
  - Using Drag handle, user can change the position of Sub-Task under the same category.
  - When any particular category has only one Sub-Task then the Drag handle is not shown.
- Type Change
  - When user change the task type from `Normal` to `Multi-Step`, shows confirmation dialog. On confirmation, task type is chnaged to `Multi-Step` and `Responsible` role will be removed and `Sub-Tasks` section becomes available in dialog at the bottom.
  - When user change the task type from `Multi-Step` to `Normal`, shows confirmation dialog. On confirmation by typing `Yes`, task type is changed to `Normal` and all Sub-Tasks will be removed.
  - Both confirmation dialog will show only if the data is being lost otherwise not shows.
- When sub-task is pulled based on selected template and selected roles of multi-step template is not available for the family. System uses fallback logic to set appropriate person from team. [See more details of fallback logic](./recurring-task-trigger.md#add-recurring-trigger)
- Hint message logic for `From` & `To`
  - Shows hint message until user enters a text in `From` and `To` account.
  - For `To Account`, show hint message when selected `From Account` doesn't have SLOA.
  
#### Notes tab
- When user opens the Notes tab of the task, one note will be open in edit mode by default.
- Shows + button at the top left side. At a time only a single note can be added. So the + button is disabled when one note is already open in edit mode. For the that note `Cancel` button is not available.
- On hover of Saved notes, shows hover effect and `Edit` & `Delete` action to the right side.
  - On click of Delete, shows a confirmation message. On confirmation, notes will be removed.
- Edit mode
  - When user opens existing note in edit mode, shows the `Cancel` button to close the edit mode.
  - If user changes the note, shows the `Discard` & `Save` button.   
- Sorting: latest notes always shown at top. 
- Notes are not saved until the task is saved.
- We have managed unsaved notes for tasks. [See more details](./prefill-unsaved-notes.md#tasks/triggers)


### UI notes
Normal Task
- Mockup for `Normal` task type [See this](https://drive.google.com/file/d/1JNrfDWzDt26PpJX7b0uJr6KyYxPkIyDa/view)
- Task: Hint message when deceased Individual is selected: `This is Deceased Individual`

Multi-Step
- Mockup for `Multi-Step` task type [See this](https://drive.google.com/file/d/1ai5mKSv_kcA4ZPlWEkwOw6lDsHbmNZ7g/view?usp=drive_link)
- Message when no Sub-Task available: `No Sub-Task Available`
- Error message for Multi-Step task: `Please Add at least one Sub-Tasks`
- Mockup of `Multi-Step` task type having Sub-Tasks: [See this](https://drive.google.com/file/d/1y0Pv4629jgm2GxSUYbwLdNeFX1J958kl/view)
- Mockup of confirmation dialog of `Multi-Step` to `Normal`: [See this](https://drive.google.com/file/d/1hq_blGmLfyKoblqkZsEZPLji5P8iCMbP/view)
- Mockup of confirmation dialog of `Normal` to `Multi-Step`. [See this](https://drive.google.com/file/d/1S4sgF5_vkYVXOZnFXmIsSRfWFJhYakHV/view)
- Warning message for template changes: [See this](https://drive.google.com/file/d/1gVF_x10aoXo-qzZnDwUKpirsaEEYij8H/view?usp=sharing)

Common for both
- Error message 
    - when start date is greater than Due date: `Should be <= Due Date`.
    - when due date is past: `Should be >= Current date`.
    - When Date (Task Source) is future: `Future date is not allowed`
    - When Due date of the Sub-Task is greater than the Due date of parent task: `Should be <= {Due date of Parent task} (Parent Task)` [See this](https://drive.google.com/file/d/1Er86IVWj97q9zSKh2_SExvhPVM3PcRuD/view)
- Error message for RAI Roles: `Duplicate value is not allowed`
- Erorr message when entity doesn't have household team: `This entity doesn't have a Household team. So you can't add task for this entity.` [See this](https://drive.google.com/file/d/12Q2dlEAJep48QuMh918jm6pJZ7Bc87WK/view?usp=sharing)

- Tooltip message 
    - Section and RAI Roles: `First select the entity`. [See this](https://drive.google.com/file/d/1PiyognACAXBey66w5-DZjlLOpiG5GK1W/view?usp=sharing)
    - Entity: `First select the family`
- Proper message when no records available
  - Accontable: `No Accountable Available`
  - Informed: `No Informed Available`
- Message with each roles
  - Responsible: `Does the work and completes the task`
  - Accountable: `Reserved for tasks requiring review and/or dual control; ultimately accountable`
  - Informed: `Those who are kept up-to-date on progress, often only on completion`
- Hint message for `From` and `To` account
  - Until user enter text: `You can enter new text`
  - For `To Account`: `From account doesn't have SLOA. You can enter new text also.`
- [Mockup of Trade log task](https://drive.google.com/file/d/1RbOXZo9YZrrmKERqpEDgkbl40FrLDpB4/view?usp=sharing)


## Edit Task
### System Rule
- Tasks whose status is `Done` can't be edited. Task in any other status can be edited any time
- During the edit of the task, Status of the `Sub-Tasks` can not be set to `Done`.

### UX Rule
- During Edit, If Family is reset, the values of the `Entity` and `Section` will also be reset and disabled while `RAI Roles` won't be reset but it will be disabled.
  - In this case, the family will change but the RAI roles will remain the same as in the old family.
- When a user changes the template, the system will ask a confirmation dialog. On confirmation, templates will be changed. All sub-tasks and RAI roles will be removed. New sub-task and RAI roles will be added according to the new template.
- If a user changes the template for open tasks and it has done a sub-tasks, all sub-tasks (Open or Done) will be deleted and new sub-tasks will be created as per new template.
- For `One-time multi-step task`,
  - By default due date of the parent task is disabled. 
  - But it shown `Due date` field enabled when the user set the template whose configure due in days is true or perform the resync action for template whose configure due in days is true
- For multi-step tasks, if the user changes the status of the parent task to On Hold & Blocked, the system won't remove the due date of sub-tasks.
- The due date will not be removed when the status Changes to blocked.

**Resync template**
- When the user opens the multi-step task edit dialog having a template, shows the `Resync` action. 
- On click of this action, the system shows the confirmation dialog with a proper message about the template's latest sub-tasks and the RAI role will be added to the task. 
  - On confirmation, existing sub-tasks and RAI roles of the task will be removed and the latest sub-tasks and RAI roles of the template will be added.
- Resync action doesn’t have any relation with `Frequency`, `Section`, `Family`, `Template Name`.
- If no any sub-task of a template is changed and a user clicks on the Resync button, the due date of the sub-tasks is removed.  

### UI Rule
- Mockup of Normal task [see this](https://drive.google.com/file/d/1j-wKyQjnBKKD1HAVMEhNdH7rnZyU4Xwx/view)
- Mockup of a multi-step task having template [See this](https://drive.google.com/file/d/1yGjeuXZofeWZShBWq5sSUGAFb1KUD2rI/view?usp=share_link)
- Mockup of resync confirmation dialog [See this](https://drive.google.com/file/d/1PnQ5OcKwWnodsk4OQ3XVFY0Fzpdrb7s_/view?usp=share_link)
- [Confirmation dialog on template change](https://drive.google.com/file/d/1IIlwEhwbXdH0zBCS49eA2Dmx59ZQO8b7/view?usp=share_link)


## Delete task
- Tasks whose status is `Done` can't be deleted. Task in any other status can be deleted any time.
- Task can't be permanently deleted. When any task is deleted, it moves the task to the Deleted tab.
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
- User can't not able to done task or sub-tasks except NA status task without due date. 
- Parent task can't be marked as Done if it has any Open Sub-Tasks.
  - If a multi-step task has an Open NA status sub-task, the system can mark that parent task as complete.

### UX Rule
- This action is applicable only for `Open` tab.
- Default value of Done date is current date. User can select any past date otherwise system show error message.
- Shows a` Mark as done not possible` dialog when the user marks the parent task as done and it has some open tasks.
- `Done Date` is a mandatory field. By default, the current date is prefiled. Future date is not allowed otherwise shows an error message: `Future date is not allowed`.
- When any tasks or sub-tasks (On Hold or Blocked status tasks) has no due date and user marks that task as done, system will ask `Enter Due Date` dialog. Once user enters a due date and save it. System will shows Done confirmation dialog.
- If a task/sub-task has no due date and the user done that task/sub-task, the system shows a dialog for entering the due date.

### UI Rule
Mockup [See this](https://drive.google.com/file/d/1DS-yGAswDIyX6vJNBbzn8AeO6nlpJDs2/view?usp=sharing)
Mockup of Mark as Done not possible [See this](https://drive.google.com/file/d/1ANcLfcB_shd1YBbWf01RbR-60BBnP5eY/view)
[Enter due date](https://drive.google.com/file/d/16glz0Y9cf2wbEWj5-hRy-DXUqugYTEBf/view?usp=sharing)


## Reopen task

### System Rule
- Only `Done` tasks can be reopened. 
- When any task is reopened, system sends in-app notification to associated users.
- When any task is reopened, if role of the user is changed currently then it sets new role with task. For e.g. Ravi was CA in Brown family and his some of the tasks are completed. Currently Ravi's role is changed to Advisor and completed task is reopened, then Ravi's role will be changed from CA to Advisor in that task
- When any entity of the tasks is deceased/terminated, task won't be reopened.

### UX Rule
- This action is applicable from `Completed` tab.
- When any task is reopened, system shows confirmation dialog.
- If a completed task is reopened, all blocked user will be auto removed from that task.
- If a blocked user is added to a mandatory role (e.g. Responsible role or Accountable role in Multi-step) in the task and there is no other user available for the same role in that task, Reopen action should not be allowed.
- On confirmation, it goes into any bucket based on the `Due date` and any status of the open tab based on the `Start Date`.
- When done task is not re-opened, shows re-open not possible dialog.

### UI Rule
[Mockup](https://drive.google.com/file/d/1pEFvVMgBtnmxgV8T_wGjzsxmhLUGJq7m/view?usp=sharing)
[Re-open not possible when blocked user is added in mandatory role](https://drive.google.com/file/d/1S5VSQKY1PwHMv8qu3vpNb2qgFqk71F-e/view?usp=sharing)
[Reopen not possible when entity is deceased/terminated](https://drive.google.com/file/d/1-SuiL_yIbteBk813CNgTTOkMmLtwS_4U/view?usp=sharing)



## Restore task

### System Rule
- Only `Deleted` tasks can be restored. 
- When any task is restored to the Open tab, system sends in-app notification to associated users.
- When any task is reopened, if role of the user is changed currently then it sets new role with task. For e.g. Ravi was CA in Brown family and his some of the tasks are Deleted. Currently Ravi's role is changed to Advisor and completed task is Restored, then Ravi's role will be changed from CA to Advisor in that task
- When any entity of the tasks is deceased/terminated, task won't be reopened.

### UX Rule
- This action is applicable from `Deleted` tab.
- When any task is restored, system shows confirmation dialog.
- If a deleted task is restored, all blocked user will be auto removed from that task.
- If a blocked user is added to a mandatory role (e.g. Responsible role or Accountable role in Multi-step) in the task and there is no other user available for the same role in that task, Restore action should not be allowed.
- On confirmation, it goes into any tab based on `Start date` and status will be set based on the `Due Date`.
- When deleted task is not restored, shows re-open not possible dialog.

### UI Rule
[Mockup](https://drive.google.com/file/d/1pEFvVMgBtnmxgV8T_wGjzsxmhLUGJq7m/view?usp=sharing)
[Restore not possible when blocked user is added in mandatory role](https://drive.google.com/file/d/1ixKGOc26wEfaHpiTzM1KE1UvpAVTb8rN/view?usp=sharing)
[Restore not possible when entity is deceased/terminated](https://drive.google.com/file/d/1njCKUQ8mYBmy_ZjZduxFFUEXXaO9zgtQ/view?usp=sharing)


## Change status of the task

See [Status of the tasks](./overview#status)

Once `Start date` is passed, system will ensure that status is marked as `Ready`.

User can change task's status anytime. There isn't any restriction.

### UX Rule
- `Ready` action doesn't applicable for any of the task whose status is other than `Ready`.
- When user change the status of task to ON Hold or NA, system will reset the due date of the task or sub-task.

## Change the Priority of the task/sub-tasks
- By default task/sub-task is created with the Normal priority. Users can change a it's priority anytime. 
- For a done task/sub-task, a user won't be able to change the priority. 

### UI Rule
[Mockup](https://drive.google.com/drive/u/0/folders/15REKYy3f7UcHMi6Ocue_Cu2zR5M-EsN-)

## View task

- Shows the details of the task in 3 tabs: `Details`, `Notes` & `Chat`.
- `Chat` tab is shown once the task has been created.
- Shows `Star` on header. On click, opens the `Change Priority` dialog.
- Shows `CA Pool` icon on the header. On hover, shows tooltip message.
- User can create a [duplicate task](./duplicate-task.md#overview) from the task view dialog. 
- For open and upcoming instances, shows vetmore action. Actions are `Duplicate Task` & `Delete` 
- When user opens the view dialog, by default `Details` tab is selected.
- For `Open` task,
  - Show `In Progress` status is in the green colour, `On Hold` status is in the golden colour and `Blocked` status in the red colour.
  - `Change Priority`, `Change Status` & `Delete` action is applicable.
- For `Done` task, 
  - Only `Reopen` action is applicable.
  - Shows done by user name and done date in the header. For e.g. `Task done by Keith V. on Apr 21, 2021`.
- For `Delete` task,
  - Only `Restore` action is applicable.
  - Show deleted by user name and delet date in the header. For e.g. `Task deleted by Keith V. on Apr 21, 2021`.
- All three tab shows profile picture of whole RAI team of the task so that user can know about RAI team (who will get notification for this message). Profile pictures are shown in order of RAI. Means first Responsible, then Accountable and then Informed. On hover of this profile picture, shows [tooltip](./task-instance.md#profile-picture-tooltip) message.
  - If the task has more profile pictures, it shows hidden. (Never appears on the next line.)
  - If a user does not have a profile picture then the default profile picture will appear.

### Details tab
  - If the `Due Date` of the open task is overdue then shows it in red colour.
  - Open task can be edited anytime.
  - Shows links for: Entity, Responsible, Accountable, Informed
  - `Due date` field: For `Multi-Step` task, it shows data range between Smallest subtasks to Highest subtask due date.
  - On click of Roles, open that users view dialog on same page.
  - If a task has `Task Source` and `Date`, then it shows like `{Task Source} {Date}` otherwise shows `-`.
  - Shows `Created by` & `Updated by` at the last of the dialog.
  - For multi-step tasks, if a task has more than one tag and those tags can’t fit on a single line, show the tags on a new line.
  - Once the user opens the Task `Details` tab, all unread notifications for that task will be marked as read.
  - **Quick Edit action from View dialog**
    - [See more details](#quick-action)
  - Shows a `Assign/Claim CA Pool tasks` button. [See more details](#ca-pull-button) 

#### **Sub-Tasks**
- Shows all Sub-Tasks of any user of the RAI roles.
- Sorting order: Sub-Tasks are shown under the category on the view task dialog in the same order in which it was added.
- Sub-Task can't be clickable.
- Shows `Star` iconn before the sub-task name. On click, opens the `Change Priority` dialog.
- Columns of the subtask
  - Sub-Task Name: If task name is too long, it appears in the next line.
  - Tag: Shows tag of the sub-task.
  - Responsible (Here we are not showing name as a link intentionally). Each username is shown in a multi-line.
  - Due Date: For `Open` Sub-Task, due date is already passed then it shown in red colour.
  - Status: Show `In Progress` status is in the green colour, `On Hold` status is in the golden colour and `Blocked` status in the red colour.
- On hover, shows vertmore action on the right side. Vertmore action for the Open task is `Delete` and the Done task is `Reopen`.
- Vertmore action of the sub-task will not appear for the done parent task.
- Show the quick edit icon near Responsible, Date and Status for the Open Sub-Task record so that users can take quick action to change `Responsible`,` Due Date` and `Status`.
- On the hover of the status of the Done Sub-Task, shows the tooltip message.
- Shows checkbox icon for each sub-tasks. If tasks is open, shows an unchecked icon. If task is Done, shows a checked icon.
  - Shows the disabled Checkbox for the NA status sub-tasks.
- **Client Services - Money Movement**
  - This category will have its own table. 
  - Columns
    - Sub-Task Name
      - Show sub-task name. If sub-task name is too long, shows it in multiline.
    - Tag
      - Shows `-` when tag is not selected.
    - Initiate
      - Shows Initiate user name
      - When `Initiator` is changed status to `Pending Approval`, shows `Initiate` user in disabled. On hover, shows tooltip message.
    - Approve
    - Due Date
    - Status
      - Other status are same as parent. `Pending Approval` status is shown in blue.
  - Shows `From`, `To` & `Amount` at a secondary information of each sub-task. 
    - Label is shown in bold and its value is shown in normal color.
    - Each of the value is shown in next line. 
    - When name is too long, shows it in multiline.
  - Vertmore action and other logic are same as normal sub-tasks.

### Notes tab
- User can also add new note from the view dialog. Notes can't be added for the Done task.
- Notes tab behavior is same as the [Add Task - Notes tab](#add-task). There are some diffrences as below
  - Shows `Created by` & `Updated by` with each notes.
  - Hover effect and action is not applicable for the done task.
  - Shows proper message when no notes are available for the done task. Message is `No Notes Available`.
  - To avoid accidental removeal of Notes, UI app stores unsaved changes in local storage. 
    - There is one edge case: `Sue` exits without saving notes in one task. When `Sue` opens a note for other tasks in add mode, she will see her unsaved note in the local storage. Now if `Sue` press CANCEL, then her local notes will be removed. If `Sue` press SAVE then her unsaved notes will be saved.

### Chat tab
  - Not applicable for the  `Recurring Task Trigger`.
  - Chat tab doesn't available to meeting/note tasks until the meeting is not saved.
  - Once the user opens the Task `Chat` tab, all unread notifications for that Chat will be marked as read.
  - See this [Chat tab](../chat/chat.md#browse-chat-of-a-single-task-chat-tab-on-task-view-dialog) for more details


### UI Rule
- Message when no notes available for done task: `No Notes Available`
- Tooltip message when Initiate role is disabled: `Initiation is completed`
- Tooltip message for CA Pool icon: `CA Pool task`
- View of the Open task [See this](https://drive.google.com/file/d/1RFXlvgbtUoAJhLPFX0fopcBkx23RJHIh/view?usp=sharing)
- View dialog of Multi-Step task [See this](https://drive.google.com/file/d/13yDJy47ibfaeO1xX_mCqQCzhpVW2lKXm/view?usp=sharing)
- Tooltip message of the status column for the Done Sub-Task: `Done by {Name of the user who marked the task as done} on {Completion date}`
- View notes tab: [See this](https://drive.google.com/file/d/1clACeErHA4ukrtwbPQenmgdoC1oKgjEH/view)
- View of the Recurring task trigger //TODO mockup
- View of the Recurring task instance //TODO mockup

## Assign/Claim CA Pull Tasks button
- If a task has added `CA Pool` more than once and user wants to add himself or other clarius team member with `CA Pool` with single click then he can do it using this button.
- Shows a `ASSIGN/CLAIM CA POOL TASKS` button when there is a `CA Pool` associated in any role. [See this](https://drive.google.com/file/d/1kf7yjVa6ZMzAJOZFQSno2C7WRWfyhR3n/view?usp=share_link)
- When there is CA Pool available in any role, then only this button is visible.
- On click of a button, opens the dropdown of clarius team member(Login user won't be shown). If the login user wants to self-claim, shows the `Claim Myself` option in the dropdown. [See this](https://drive.google.com/file/d/1PEK3rpsDdIWYUOpuh71lqrzznQx_tFaB/view?usp=share_link)
  - If the `CA Pool` is added as R, A, C & I role of the task and user clicks on `Claim Myself` option, CA Pool will be replaced by the login user otherwise selected other team member will be replaced.


## Profile Picture tooltip
- On hover of this profile picture, it shows First name + Last name, Email address and current user's role in tooltip. When user doesn't have any role, shows No role. It is possible that user can be in multiple roles for same task, so tooltip shows name of all the roles seprated by comma.
- Known case: We are not showing user’s role in tooltip under Chat notification dialog just to minimize the API response time.

## Nightly job to change status of the task
- System runs nightly job to update the status of the upcoming tasks
- If the status of the Upcomig task is `Pending` and its due date is approached its status will be changed to `Ready`


## Quick Action

- On hover of `Status`, `Due date`, `Start date` & `RAI`, edit icon for quick action with value appears. In case of multiple, it will be shown at only first record. 
- This action are applicable only for Open & Upcoming task.
- When user perfoms quick action for Due date change: If the task status is On Hold & Blocked, show `No Date` options in the date picker. (Because Due date isn't mandatory for `On Hold & Blocked`)
- Quick action is perform from List page and View dialog 
- For other task except Multi-Step
  - For Responsible, opens multi-select. At least one user is mandatory
  - For Accountable, open single select dialog. Not mandatory and only one person is selected
  - For Informed, opens multi-select. Not mandatory
- For Multi-Step
  - Quick action of Due date is not applicable. (Because the Multi-step task has a due date range, so we aren't allowed to change the date range).
  - For Accountable, open single select dialog. At least one user is mandatory
  - For Informed, opens multi-select. Not mandatory 

## Section master
-  All sections are alphabetical sorted.

| Sections                     |
|------------------------------|
| Accounting & Finance         |
| Assets                       |
| Banking                      |
| Balance sheet                |
| Bill Pay                     |
| Cash Flow                    |
| College Savings              |
| Communication                |
| Contact                      |
| Estate Plan                  |
| Gifting                      |
| Grantmaking                  |
| Human Resources              |
| Insurance                    |
| Investment                   |
| Legal                        |
| Management / strategy        |
| Money Movement               |
| New Accounts                 |
| Onboarding                   |
| Other                        |
| Partnerships                 |
| Personal Financial Statement |
| Philanthropy                 |
| Planning                     |
| Private Travel               |
| Tax                          |
| Trusts                       |


## Design decision

#### Why status can not be changed from Edit dialog?

There isn't any technical limit but its UX design level decision. Assumption is - Status change is frequent action, So we have given it as separate action. 

#### Why we allows edit of RAI roles?

If someone is going to be away (vacation, maternity, ST disability, etc.), task can be assigned to someone else


#### Why I can not see the due date which I set at the time of creating a one-time multi-step task?

- Due date appears disabled for multi-step tasks because the parent task's due date is set based on their sub-tasks due date. But it will be enabled for one-time multi-step tasks having a template whose `Configure Due days for subtasks` checkbox is ON. Such templates have due days with each sub-tasks. So when the user selects such template, the system will calculate the due days of sub-tasks according to the selected due date. Once the task is saved, the system will set the min-max sub-tasks due date to the parent level. That is why the due date entered manually by the user will not appear. 
- For e.g. If a user creates one template `Temp1` whose `Configure Due days for subtasks` checkbox is ON and user adds 2 sub-tasks whose due days are 2, 3. Now, a user creates a one-time multi-step task and selects the `Temp 1` template and enters `29 May 2023` as the due date. So the system will show 2 sub-tasks with `27 May 2023` & `26 May 2023` due dates. When user open edit dialog it shows due date `26 May-27 May`. You will not see `29 May` as due date.
