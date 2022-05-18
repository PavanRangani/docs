# Recurring task trigger

Recurring trigger itself is not a task. System creates one-time tasks instances based on the details provided in Trigger.

## Entity Details

### Family
It's a mandatory field. Any Family of the application

### Entity
It's a mandatory field. Any Legal entity of the above selected Family

### Section
It's a mandatory field. Any one value from Master can be set. See [Master](./task-instance.md#section-master) for possible values.

### Task Name
Name of the task. It's a mandatory field. No restriction for adding a same name task

### Notes
Notes of the task. Rich text input field. Its Optional.

### Due Date: 
Due date of the first instance of the task. It’s a mandatory field.

### Start Date: 
Defined as an offset of `N days before Due Date`. Its a mandatory field.

### Repeats on: 
- Frequency at which this task instance should be auto created by system. 
- Its possible values are: Monthly, Quarterly, Semi-Annual, Annually

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
  - If no Client associate - task rolls to Client Manager
  - If no associate advisor - task rolls to Advisor
  - If no Investment Direct - task rolls to Advisor
  - If no Director, roll to Advisor
  - If no personal controller, role to Client Associate and if no Client associate, roll to client Manager
  - Accountable can be only one person. So if assigned role has multiple persons, system sets person mark as Lead as Accountable
- For `Recurring Trigger`, multiple notes are not allowed. Only single note is allowed.

### UX Rule
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
- Task Name
  - Free form text input field
- Dates
  - Due Date
    - Doesn't allow to enter past date. Otherwise shows an proper error message. 
  - Start Date 
    - `0` value is not allowed. 
  - Repeats On
    - Dropdown of all Repeats on.
    - Default value is `Monthly`
  - End Date
    - Allows to enter only date greater than `Due date` or `Current date`. Otherwise shows an proper error message. 
- RACI
  - `RACI Roles` and `+` button both are disabled field until the `Family` is selected. On hover, shows tooltip message.
  - Its a dropdown of families roles. 
    - Shows roles in order of - Director, Advisor, Investment Director, Associate Advisor, Investment Associate, Client Manager, Client Associate, Operations, Personal Controller
    - Shows name of the associated users as secondary information in the dropdown. Shows `(L)` for the user who is marked as lead. `Mark as lead` user is shown first and then it shows other user in alphabetical order.
  - Duplicate family role is not allowed in any RACI roles. It means same family role can be added in the different RACI roles but same family role can not be added in same RACI role. In this case, it will show an error.


### UI Rule
- Error message for Family field: `Some of the mandatory roles are empty in this family`
- Error message for duplicate RACI Roles: `Duplicate value is not allowed`
- Error message wheb Due date is of past: `Should be >= Current date`
- Error message for End date when less than Due date: `Should be > Due date` 
- Error message for End date when less than current date: `Should be > Current date`
- Tooltip message when Section is disable: `First select the entity`
- Tooltip message when Legal entity and RACI Roles is disable : `First select the family`


## Edit Recurring Trigger
### System Rule
- Trigger can be edited any time.
- Due date can not be set less than current date.
- When the dates or RACI roles of the trigger is updated, those changes will be only reflected in the upcoming instance of the trigger. It won't be reflected in open instances of the task. 
- When details of the Trigger other than Dates and RACI is updated, those changes will be reflected in all the instance of the trigger (Upcoming or already created)
- When end date is changed, system deletes all upcoming task whose due date is after the new end date. Open tasks will remain as it is.
- When `Repeats on` is changed, all upcoming tasks of the trigger will be removed and open task will remain as it is. System create new upcoming tasks based on the new value of Repeats on.
  > One recurring tasks has two instances. One in Open tab and one in Upcoming tab. Name of this task is `Task1`. 
  > - If user rename the task to `Task2`, both instances will be updated with new name `Task2`
  > - If user updates the RACI role, only Upcoming instance will be updated with new RACI roles
  > - If user updates the Due date, only Upcoming instance will be updated. Open instance won't be updated.
  > - Here done task won't be updated.

### UX Rule
- When past date is entered in Due date, shows proper error message
- `Repeats on` is disabled when the trigger has any open instance available.
- When the dates or RACI roles of the trigger is updated and trigger has an open tasks, shows a proper warning message.
- On Edit, If user removes the family name, the values of the `Entity`and `Section` will be reset and disabled while `RACI Roles` won't be reset but it will be disabled. 


### UI Rules
- Warning message for Dates section: `Dates of only upcoming tasks of this trigger will be updated. Already open tasks won't be updated.`
- Warning message for RACI section: `RACI of only upcoming tasks of this trigger will be updated. Already open tasks won't be updated.`


## Delete Recurring Trigger
### System Rule
- Trigger can be deleted anytime
- When trigger is deleted,the system deletes trigger and all of its upcoming task. Already Open instances of that trigger won't be deleted. 
- When any families is marked as Archived, its recurring task trigger will be deleted.

### UX Rule
-  Show delete confirmation dialog with proper message about only upcoming instances will be deleted.

### UI RUle
[Mockup](https://drive.google.com/file/d/1h7uGAlp2XKOXKWGVqseW-D_MecEARG7s/view?usp=sharing)


## View Recurring Trigger
### UX Rule
- Shows the details of the task in 2 tabs: `Details` & `Notes`
- By default shows `Details` tab 

#### Details tab
  - Shows links for: Entity
  - Shows `Created by` & `Updated by`

#### Notes tab
  - If a task has no note available and the user opens the `Notes` tab of that task, the `Notes` tab will open in edit mode by default.
    - Button won't be appear when there is the notes is empty.
  - If the notes are already available and user opens the `Notes` tab, the `Notes` tab will open in view mode. 
    - For that, system shows `Edit Details` action. On click, it will open the note in edit mode.

### UI Rules
Mockup //TODO

## When Family team is changed
- When there is any change in family team, system updates all recurring triggers of that family
- All upcoming taks will be updated as per new changes in team. Open tasks won't be updated. It will remain as per old structure.

## Design decisions

### Why system creates forward tasks of 3 years?
The main reason for generating tasks in advance is to simplify the logic for generating projection reports (Upcoming tab). We have two known use cases of projection report: (1) Someone on leave (Vacation planning) (2) Show report of upcoming 1 year tasks to any client. 

If we don’t generate tasks in advance, we need to generate a dummy task in the Upcoming tab to show the projection which will become tedious and error prone.

