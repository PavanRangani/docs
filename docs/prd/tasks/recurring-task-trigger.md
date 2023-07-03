# Recurring task trigger

Recurring trigger itself is not a task. System creates one-time tasks instances based on the details provided in Trigger.

## Entity Details

### Task Type
Same as One-Time task. 2 types of Trigger: `Normal Trigger` & `Multi-Step Trigger`

### Family
It's a mandatory field. Any Family of the application

### Entity
It's a mandatory field. Any Legal entity of the above selected Family

### Template Name
Applicable only for `Multi-Step` trigger type. 
Multi-Step template of the application. User can select template based on the frequency and section.

### Sub-Tasks 
Sub-Tasks of the trigger will be same as the [Sub-task of Multi-step task](./task-instance.md#sub-tasks)

#### Due date
Subtask Due date can’t be the exact date. It will be offset of days of parent task due date. Its a mandatory for all status except `Blocked` & `On Hold`.

### Tag
Tag of the Task. Values are: `Money Movement`, `Money Movement - Capital Call`, `Operations - Capital Call`, `Operations - Distribution`, `Operations - QSBS`, `Trading – Cash Raise`, `Trading – General`, `Trading – Loss Harvest` & `Trading – Rebalance`.

### Section
It's a mandatory field. Any one value from Master can be set. See [Master](./task-instance.md#section-master) for possible values.

### Task Name
Name of the task. It's a mandatory field. No restriction for adding a same name task

### Notes
Notes of the task. Rich text input field. Its Optional.

### Due Date (Days): 
Due date of the first instance of the task. It’s a mandatory field.

### Start Date: 
Defined as an offset of `N days before Due Date`. Its a mandatory field.

### Repeats on: 
- Frequency at which this task instance should be auto created by system.
- Its possible values are: Weekly, Semi-Monthly, Monthly - On Specific Date, Monthly - On Specific Day, Quarterly, Semi-Annual, Annually
- When the user selects `Semi-monthly` in `Repeats on`, the task will be created on the 15th of each month and on the last day of the month.
  - For e.g. For the months having 30 days, system will pick 30th. For the months having 31 days, system will pick 31st. For the February month having 28 days, system will pick 28th date.
- When the user selects `Monthly - On Specific Date`, task will be creates on date of the each month.
- When the user selects `Monthly - On Specific Day`, task will be created based on the specific day (Either First or Last) of the month.
  - System ask the `first or last` weekdays in this format: On `First or Last` `Weekdays`. For e.g. On First Monday, On Last Friday. `Weekdays` is a drodown of weekdays. Default `Monday` option is selected.
  - For e.g Suppose user select First Monday. System will create upcoming tasks of the First Monday of each month. If the user selects Last Monday. System will create upcoming tasks of the Last Monday of each month.

### Day of the week:
- Applicable only when `Repeats on` is `Weekly`.
- System creates an instance of the trigger of the Week based on the selected day.
  - E.g If the user selects Weekly as `Repeats on` and selects Monday as `Day of the week`. So the system creates a recurring task every Monday of the week.
- Its possible values are: `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`. 

### End Date:
- Last Date of the trigger after which task instances should not be created by system

### RACI
**Responsible** : Mandatory. Multiple roles can be specified

**Accountable** : Not mandatory . Only single role is allowed

**Consulted / Informed** : Not mandatory. Multiple roles can be specified


## Add Recurring trigger
- When any Recurring Trigger is created, the system creates its tasks instances for up to 3 years in advance. 
- Also at each night system runs one chrone job to ensure it has tasks for 3 years in advance. 
- The 3 years duration is based on the due date of the task. System creates those many tasks in advance whose Due date is in the next 3 years
  > For e.g. Today’s date is 02-22-2022. If I create one Monthly repeating Recurring task whose Due date is 03-01-2022. System creates all of its instances whose Due date is up to 03-01-2025. So in this case a total of 36 instances will be created. If I create one Yearly repeating Recurring task whose Due date is 03-01-2022, the system creates 3 instances.
- Based on the selected RACI roles selected in trigger, its task instances will have RACI persons associated.

- Not all roles are mandatory at family level. So sometimes it is possible that selected role in Trigger is not empty at family level. In such cases, system uses following **fallback logic** to set appropriate person from team
  - If no Client Associate - task rolls to CA Pool
  - If no Associate Advisor - task rolls to Advisor
  - If no Investment Direct - task rolls to Advisor
  - If no Director, roll to Advisor
  - If no Personal Controller, role to Client Associate and if no Client associate, roll to CA Pool
  - If no Reconciliation, role to Personal controller, if no Personal Controller, role to Client Associate and if no Client associate, roll to CA Pool
  - Accountable can be only one person. So if assigned role has multiple persons, system sets person mark as Lead as Accountable
- For `Recurring Trigger`, multiple notes are not allowed. Only single note is allowed.

### UX Rule
- Task Type
  - Default `Normal` type is selected. Users can change it to `Multi-Step` anytime.
- Template Name
  - Template name field have one icon.
  - On click of Icon, opens a template selection dialog. [See more details](../ui-components/template-selection-dialog.md)
    - Template name field have one icon.
  - On click of field, opens a dropdown of template name in alphabetical order. Shows description of template in secondary informatation. Shows template section, frequency and family in meta data.
  - `Sub-Tasks` will be added based on the selected Multi-Step template.
  - When template is changed, it shows confirmation dialog to user about subtasks will be deleted
- Family
  - Family dropdown.
  - Shows all families of the application in alphabetical sorted.
  - Archived family is not availble.
  - When the selected family doesn't have mandatory roles, system shows proper message.
- Legal Entities
  - Default it is a disabled field. It is enabled once the Family is selected. On hover, shows tooltip message.
  - Shows all entities of a particular family. Deceased/Terminated/Archived legal entities are not available
  - Shows entity type in the secondary information.
- Section
  - Default it is a disabled field. It is enabled once the entity is selected. On hover, shows tooltip message.
  - Shows only the applicable sections based on the selected legal entity type. 
  - Dropdown shows records in two groups: `Tabs` & `Agenda Items`.
- Tag
  - It's alphabetical dropdown of tags.
- Task Name
  - Free form text input field
- Dates
  - Due Date
    - Doesn't allow to enter past date. Otherwise shows an proper error message. 
  - Start Date 
    - `0` value is allowed. 
  - Repeats On
    - Dropdown of all Repeats on.
    - Default value is `Monthly`
  - Day of the week
    - Default value is `Monday`.
  - End Date
    - Allows to enter only date greater than `Due date` or `Current date`. Otherwise shows an proper error message. 
- RACI
  - `RACI Roles` and `+` button both are disabled field until the `Family` is selected. On hover, shows tooltip message.
  - Its a dropdown of families roles. 
    - Shows roles in order of - Director, Advisor, Investment Director, Associate Advisor, Investment Associate, Client Manager, Client Associate, Operations, Personal Controller
    - Shows name of the associated users as secondary information in the dropdown. Shows `(L)` for the user who is marked as lead. `Mark as lead` user is shown first and then it shows other user in alphabetical order.
  - Duplicate family role is not allowed in any RACI roles. It means same family role can be added in the different RACI roles but same family role can not be added in same RACI role. In this case, it will show an error.

**Sub-task of the Trigger**
Same as [Multi-step task](./task-instance.md#sub-tasks-1). Other diffrecres are:
  - Due date: It is number input field amd its always less than or equal to start date otherwise system show error message. `0` value is allowed. 
  - Responsible: Responsible is a familiy role not a person. Fallback logic will be same as parent trigger.
  - Sub-task Status of the recurring trigger can't be set to Done.
  - Status: If user change the status of sub-tasks to On Hold or Blocked, system will reset the due days of such sub-tasks.


#### Notes tab
- When user opens the Notes tab of the task, the `Notes` tab will open in edit mode by default.
- We have managed unsaved notes for a Recurring trigger. [See more details](./prefill-unsaved-notes.md#tasks/triggers)

### UI Rule
- Error message for Family field: `Some of the mandatory roles are empty in this family`
- Error message for duplicate RACI Roles: `Duplicate value is not allowed`
- Error message wheb Due date is of past: `Should be >= Current date`
- Error message for End date when less than Due date: `Should be > Due date` 
- Error message for End date when less than current date: `Should be > Current date`
- Tooltip message when Section is disable: `First select the entity`
- Tooltip message when Legal entity and RACI Roles is disable : `First select the family`
- Error message for sub-task due date: `Should be <= Start date`

[Mockup flow of Monthly- On specific days or Date](https://drive.google.com/drive/u/0/folders/1y-nTT-s4LOCcOEhgiLdOrCcFwOrkhxQJ)


## Edit Recurring Trigger

### System Rule
- Triggers can be edited any time.
- When a user changes any details of the trigger, the system will update or re-create the existing Open or Upcoming instances of the trigger.
- System won't be updated the deleted or completed task.

**Task type**
- System will update all upcoming instances.
- For e.g. One recurring trigger has two instances. One in the Open tab and one in the Upcoming tab. This is a Normal task type trigger. Now, user changed its type to Multi-Step. System will update all upcoming instances of the trigger. Open instances will remain as it is.

**General Details**
- General Details means `Task name`, `Family`, `Entity`, `Section` & `Tag`.
- When user change general details , system will update Open and Upcoming instances of the trigger.
  - For e.g One recurring trigger has three instances. One in the Open tab and one in the Upcoming tab and one in the Completed tab. Name of this task is `Task1` and section is `Assets` and Tag is `Trading - General`. Now, user updates the task name to `Task 2` and section to `Other` and tag to `Money Movement`. So system updates both Open and Upcoming instances of the trigger. Completed task will remains as it is.

**Template**
- When a user changes `Template `, the system will update only upcoming instances. (Open instances will remain as it is)  
  - If the user changes the template, the system will also delete manually added subtasks.
  - For e.g Suppose template `T1` has 4 and `T2` has 3 sub-tasks. Now, the user creates one trigger `R1` using template `T1`. So trigger `R1` will have 4 sub-tasks. Now, the user manually adds 2 more sub-tasks in R1. So now, triggers `R1` have a total of 6 sub-tasks. When users change the template from `T1` to `T2` in trigger `R1` (from the edit dialog). Then the system will delete all 6 sub-tasks (tasks of template T1 and tasks which were manually added) and add 3 new sub-tasks (T2 template). 

**Dates**
- Dates means the `Start date` & `Due date`.
- System will update only upcoming instanes. (Open, Deleted & Commpleted instances will remain as it is)
- For e.g Keith has one recurring trigger where due date is `Feb 14, 2023` and start date is `10`. So the first instance of the trigger is in Open tab while other tasks are in upcoming. Now, Keith change the due date to `Mar 10, 2023` and start date is `5`, so system will update existing upcoming task.

**Repeats on & Day of the Week**
- System will deletes all upcoming instances and re-creates new upcoming instances with new value.   
- For e.g. One recurring trigger has three instances. One in Open tab and two in Upcoming tab. `Repeats on` of this task is `Weekly` and `Day of the week` is `Monday`. If user updates the `Repeats on` to `Monthly`, Upcoming instances will be deleted and system will re-create the upcoming instances with new value. (Open instance will remain as it is). 

**End date**
- System will deletes or creates upcoming instances
- Trigger has no End date and user adds a new end date, system will delete all upcoming tasks whose due date is after the new end date.
- Trigger has end date and user removed that end date, system will create new upcoming instnaces for next 3 years.
  - For e.g. Due date of the trigger is `Jan 31, 2023` and End date of the trigger `Jan 30, 2024`. So trigger has total 12 instances where 2 instnaces are open and other instnaecs are Upcoming. Now, user removes the end date, system will create upcoming task for next 3 year.
- Trigger has end date and user changed it, system will create or delete upcoming instances based on the new end date.
- If the trigger has an `End date` and the user changes it such that the system will create an open instance, the system will create the open instance.
  - For e.g Suppose the current date is `Apr 14, 2023` and `Friday`. User creates one trigger with following information: Due date: `Apr 14, 2023`, Start date: `15 days`,  Repeats on: `Monthly-Specific day`, `First Tuesday` & End date: `Apr 25, 2023`. So here, no task will be created because next first Friday is coming on `May 2, 2023`. Now, user change the trigger End date to `May 3, 2023`. So now, system will create one open instance.

  
**RACI Roles**
- System will update all upcoming instances.
- For e.g. One recurring trigger of family 1 has three instances. One in Open tab and two in Upcoming tab. Director role is added as a Responsible. `Keith` is a director and `Sue` is Advisor of the Family 1.  Now, user change the resposible role to Advisor. So system will only update the upcoming instance and added Sue as resposible.

**Notes**
- When a user changes notes, the system will only update open and upcoming tasks that have a single note. (If the task has more than one note, it will not update it.)
- For e.g. One recurring trigger has three instances. One in Open tab and two in Upcoming tab. One open and one upcoming instances have one note which is same as trigger. Second upcoming task have 2 notes. Now, user change the note of the trigger, it will update Open and Upcoming task having single note.

**Sub-task**
- System will update all upcoming tasks..
- For e.g. One multi-step recurring trigger has one upcoming and one open instnaces. Trigger has 2 sub-tasks. Now, if user edit any details (Sub-task name, Tag, Due date, Status, Responsible) or create new sub-task or deletes existing sub-task, system will update only upcoming instances.


### UX Rule
- When template is changed, it shows confirmation dialog to user about subtasks will be deleted
- When the Due date or Start Date or RACI roles of the trigger is updated and trigger has an open tasks, shows a proper warning message about only upcoming tasks will be udpated. [See this](https://drive.google.com/file/d/15uJJ8DGeTzjixvu5OSWE_NeTC2HClEwo/view?usp=share_link). If trigger doesn't have any open tasks, this warning won't be shown. 
- This warning messages is shown under the section where user has updated any details. For e.g. If user change Start date and RACI role, this warning message will be shown for two sections - Dates and RACI roles. 
- If user reset the family name, the values of the `Entity`and `Section` will be reset and disabled while `RACI Roles` won't be reset but it will be disabled. 
- When `Repeats on` or `Day of the Week` is changed then system recreates upcoming tasks and when End date is changed then system deletes some tasks. So when upcoming instances are going to be recreated or deleted and at least one of those instance has any Chat or notes, the system will show warning message to user about chat or notes will be deleted. If any of such upcoming instances doesn't have Notes or Chats, this message won’t be shown.
- If is possible that both type of warning messages can be shown in Dates section. For e.g. User change the Due date and Repeats on and it has some open tasks and upcoming tasks with Chat, it will show both warning messages in Date section. [See this](https://drive.google.com/file/d/1zGp5MFUHiJ63_Vjti7k5b6QqNycZlOWN/view?usp=share_link)

**Resync template**
- When user opens the multi-step trigger edit dialog having template, shows `Resync` action. 
- On click of this action, system shows the confirmation dialog with proper message about template latest sub-tasks and RACI roles will be added to the trigger. 
  - On confirmation, existing sub-tasks of the trigger will be removed and new sub-tasks and RACI roles of the template will be added.

### UI Rules
- Warning message for Dates section: `Dates of only upcoming tasks of this trigger will be updated. Already open tasks won't be updated.`
- Warning message for RACI section: `RACI of only upcoming tasks of this trigger will be updated. Already open tasks won't be updated.`
- Warning message for Sub-task section: `Sub-task details of only upcoming tasks of this trigger will be updated. Already open tasks won’t be updated.`
- Warning message when upcoming instances is recreated or deleted: `Upcoming instances of this trigger will be deleted. Some of the instances have Chats or Notes available.` [See this](https://drive.google.com/file/d/1k0xnaxWD_ssApjlyHl3a2YRmW6jVxjW3/view?usp=share_link)
- [Resync confirmation dialog](https://drive.google.com/file/d/1PnQ5OcKwWnodsk4OQ3XVFY0Fzpdrb7s_/view?usp=share_link)


## Delete Recurring Trigger
### System Rule
- Trigger can be deleted anytime
- When trigger is deleted,the system deletes trigger and all of its upcoming task. Already Open instances of that trigger won't be deleted. 
- When any families is marked as Archived, its recurring task trigger will be deleted.
- Deleted trigger is removed completely from database. Its not like tasks because deleted tasks are not removed from database completely. they are available in Deleted tab to browse

### UX Rule
-  Show delete confirmation dialog with proper message about only upcoming instances will be deleted.

### UI RUle
[Mockup](https://drive.google.com/file/d/1h7uGAlp2XKOXKWGVqseW-D_MecEARG7s/view?usp=sharing)


## View Recurring Trigger
### UX Rule
- Shows the details of the task in 2 tabs: `Details` & `Notes`
- User can create a [duplicate task](./duplicate-task.md#overview) from the task view dialog. 
- For open and upcoming instances, shows vetmore action. Actions are `Duplicate Task` & `Delete` 
- By default shows `Details` tab. 

#### Details tab
  - Shows links for: Entity
  - Shows `Created by` & `Updated by`. [See this](#audit-information)

#### Notes tab
  - If a task has no note available and the user opens the `Notes` tab of that task, the `Notes` tab will open in edit mode by default.
    - Button won't be appear when there is the notes is empty.
  - If the notes are already available and user opens the `Notes` tab, the `Notes` tab will open in view mode. 
    - For that, system shows `Edit Details` action. On click, it will open the note in edit mode.
- To avoid accidental removeal of Notes, UI app stores unsaved changes in local storage. 
  - There is one edgecase: `Sue` exits without saving notes in one task and another user `Mike` adds new notes in the same task. Now when `Sue` opens the Notes tab of that task, She will see the notes added by `Mike` in the Notes tab. But when `Sue` opens that note in edit mode, she will see the her unsaved note saved in the local storage. Now if `Sue` press CANCEL, then her local notes will be removed. If `Sue` press SAVE then her unsaved notes will be save and Mike's notes will be overridden.

### UI Rules
Mockup //TODO

## When Family team is changed
- When there is any change in family team, system updates all recurring triggers of that family. [See more details](./effect-of-changes-at-family.md)
  - All upcoming taks will be updated as per new changes in team. Open tasks won't be updated. It will remain as per old structure. 

## Design decisions

### Why system creates forward tasks of 3 years?
The main reason for generating tasks in advance is to simplify the logic for generating projection reports (Upcoming tab). We have two known use cases of projection report: (1) Someone on leave (Vacation planning) (2) Show report of upcoming 1 year tasks to any client. 

If we don’t generate tasks in advance, we need to generate a dummy task in the Upcoming tab to show the projection which will become tedious and error prone.

### System will create an open instaces on trigger details change.

- In this case, if the trigger has no upcoming task and user change the trigger and based on that update, if first instance will be created for open instance, then system will create open instances. 
- So may be task duplicate case will be happened. //TODO for discussion



## Audit Information

- System shows the creation and updation time with trigger and instances of the trigger.
- Trigger audit information will be copied to its instances. 
  - For e.g If Sue creates one trigger on `Apr 22, 2023`. So system will store the creation time `Created Apr 22, 2023 by Sue` for the trigger and its instances.
- When user updates the instance of the trigger, system will store the updation time for that instnace only.
  - For e.g. Suppose Mike changes the section name of the upcoming instances on `Apr 25, 2023`. So the system will store the updation time and user `Updated Apr 25, 2023 by Mike` for that instances.
- When user change the trigger details (In such a way that system will only update its upcoming instances), instances audit information will also be changed.
  - For e.g. Suppose the Aimee changes the name of the trigger on `Apr 27, 2023`, system will store the updation time to the instances like `Updated Apr 27, 2023 by Aimee`.
- When user change the details of the trigger on `Apr 27, 2023` (In such a way that system will re-create its upcoming instances), trigger and its instances audit will also be changed.
  - Suppose the Keith changes the `Repeats on`, system will be recreate all its instances. So here, system will store the Keith as `Updated Apr 27, 2023 by Keith` for trigger and as a `Created Apr 27, 2023 by Keith` for its instances.  
- System creates the next upcoming instance using Daily night job. In this case, system will copy the auditor name from the last instance and creation time will be stored when task is created.
  - For e.g Suppose the updation time of the last upcoming instances is `Updated Apr 27, 2023 by Aimee`. Now, if the system creates a upcoming instance on `30th Apr 2023`,  system will show the creation time for that instance as `Created Apr 30, 2023 by Aimee`.

