# Trade Logs

## Overview

- Trade Log means details of any trade made for the legal entity

## Entity 

- Date
- Family 
- Legal entity - Any legal entity of above family
- Description


## Enable/Disable
- Trade Log can be enabled/disabled for particular legal entity
- For new legal entity, By default it is disabled.
- User can enable or disable anytime. System allows to enter new trade log only when this setting is enable

## Create
- Create dialog can be opened from 2 ways:
  - `+` icon of table
    - When opened from here, it shows date of Yesterday prefilled
  - `ADD`  icon of group header
    - When opened from here, it shows date of group header prefilled
- All fields are mandatory in dialog.
- Today's date will prefilled in date field of the trade log add dialog. 
- Family dropdown shows only those family names where its legal entity has `Active` button enabled
- Legal entities dropdown only shows names of the entities of selected family &  for which `Trade logs` data exists

## Edit

- Can be edited anytime.
- When a trade log has task, the `Family` and `Entity` fields will be disabled. Otherwise it will be enabled.

## Delete

- Can be deleted anytime
- If trade log has tasks, it can't be deleted. its shows `Delete not Possible` dialog.

### UI Rule
- Dialog of Delete not possbile. [See this](https://drive.google.com/file/d/13167mU6zSKIHJo31aWy1l5ag-tRjjKUV/view?usp=sharing)

## Browse Trade Logs of all legal entities

- This page shows trade log records of all legal entities
- Shows records in descending order of the date
- Records are shown in group by with date
- Columns: 
  - Family
    - Name of the Family
  - Legal entity
    - Name of the Legal Entity
  - Description
    - Description entered while creating/editing Trade log record. Shows full description always. It required shows it in new line (But never truncate)
  - Task
    - When trade logs have tasks, shows the checkmark icon otherwise show -.
  - Editor
    - Name of the user who Created/Updated this record along with date
    - For e.g. When Trade log record is created, this column will show text `Created by Keith Vernon Mar 21, 2020` . When Trade log record is updated, this column will show text like `Updated by Keith Vernon Mar 21, 2020`
- Under each group of date, records are sorted by alphabetical order of family name
- Family name is only shown for first record of that family. (It won't be repeated for all records)
- List is lazy loading. New data will be loaded when scroll reach at bottom.
- On hover of the record, show hover effect and vertmore action menu at right side.
- On click of the record, opens TradeLog Edit dialog (We don't have Tradelog view dialog)
- Context menu actions:
  - Edit
  - Delete

Mockups: [Investments mockups](https://drive.google.com/drive/folders/1A-wnVDLyK2-5pEcxuyrCWys6QMsjiEQR)

### Filter

- Allows to filter records using
  - From & To date
    - `From` & `To` is Date range control.
    - `From` date is aleays greater than `To` date otherwise system shows error message. Error message for To is: `Date Must be > {From date}`
  - Family
    - `Family` dropdown only shows families of available `Legal entities`
    - Not applicable for the Browse Tradelogs of particular Legal entity
  - Legal entity
    - `Legal entities` dropdown only shows legal entities for which `Active` button is enabled & for which trade logs data exists
    - When Family is changed, Legal entities dropdown will be reset
    - Not applicable for the Browse Tradelogs of particular Legal entity
- When any filter is applied, shows a `RESET` button to reset filter to default state

## Browse Tradelogs of particular Legal entity

- This pages shows the investment records of only selected legal entity.
- ADD button is disable for the Archived entities and on hover, tooltip message doesn't appear.
- ADD button is also disable when Tradelog is not Active for this entity. On its hover it shows proper message in tooltip.
- Column in Trade log tab: Date, Description, Editor
  - Date
    - Date of the record
  - Description
    - Description entered while creating/editing Trade log record. Shows full description always. It required shows it in new line (But never truncate)
  - Task
    - When trade logs have tasks, shows the checkmark icon otherwise show -.
  - Editor
    - Name of the user who Created/Updated this record along with date
    - For e.g. When Trade log record is created, this column will show text `Created by Keith Vernon Mar 21, 2020` . When Trade log record is updated, this column will show text like `Updated by Keith Vernon Mar 21, 2020`
  - In Add / Edit dialog, only Date and description can be entered or edited

### UI Rules

See [mockups](https://drive.google.com/drive/u/0/folders/1xfiUGFYjddQQoArdyN_dbkRwdqXNVIcI)
- Tooltip message: `You need to enable Investments in order to perform this action`

## Browse tasks in Add/Edit trade log dialog

### UX Rules
- Shows a new section `Task` in the las of the add trade log dialog where user can add a task for the trade log.
- Shows proper message when task is not added.
- Users can also add multiple tasks under single Tradelog.
- On click of + button, opens the `Add Task` dialog where the user can add a task.
- Shows already added tasks in the Add/Edit Tradelog dialog.
- Columns are
  - Task
    - When the task name is too long then it will be shown in multiple lines.
  - Due date
    - If the due date is passed, it appears in the red color.
  - Status
    - `In Progress` is shown in the green color,`Blocked` status is shown in the red color and `On Hold` status is shown in the golden color.
- Sorting order
  - Primary sorting in Ascending order of `Due date` and secondary sorting in alphabetical order of `Task name`.
- On click of any task row, it opens task view dialog.
- Shows hover effect on hover and vertmore action at the right side.
  - Vertmore actions of task other than done status: `Edit`, `Change Status`, `Delete`. Change Status action is not applicable for the upcoming task.
  - Vertmore action for done task: `Reopen`
- Tasks added from Add Tradelog dialog are not saved until the tradelog is saved. So Chat tab doesn't available for such tasks

**Priority icon**: Based on Priority task, it shows priority icon. Task with normal priority, its doesn't shows any icon. Task with critical or High priority, it shows star icon.

**Chat icon**: Show Chat icon at the right side for the task which has any Chat. If Chat is read, it shows a Green icon. If Chat is unread, it shows Orange icon. On Click of Chat icon, it opens Task dialog where directly Chat tab is opened

### UI Rules
[Mockup](https://drive.google.com/file/d/1i-MxMwjqiQA_Nqu3wGhftCbN2oSiCyoB/view?usp=sharing)