# Multi-Step Template

The use case here is that there are certain tasks that Clarius team repeats that have sub-tasks.  For these, they want the ability to have a library of pre-defined Templates that they can choose from.

Only admin’s should be able to create and manage the multi-step templates. Non-Admin users can see that template 

## Entity details

### Template Name
It's a mandatory field.

### Description
Description about this template. Will be shown on UI with this template name in template dropdown in Add task dialog.

### Frequency
- It's a mandatory field. Frequency value: `One-Time`, `Recurring` & `Family`.

### Section
- It's a mandatory field. Section value: `Money Movements`, `New Accounts`, `Investments`, `Philanthropy`, `Tax`, `Planning`, `Partnerships` & `Other`.

### Family
- It's mandatory only when Frequency is `Family`
- It's dropdown of active families.

### Notes
- It's a rich text input filter.
- User can add link of the Nuclino for the detail description of this Template here.
- This notes will be cloned to the Tasks created from this template

### RACI Roles
Here family roles can be specified
- Responsible : Mandatory. Multiple roles can be specified
- Accountable : Mandatory . Only single role is allowed
- Consulted / Informed : Not mandatory. Multiple roles can be specified

### Configure Due days for subtasks
- Default it is OFF. 
- If user wants to add due days with sub-task, change its value to ON. 
- Due days are calculated based on the start date.

### Sub-Tasks
Sub-Tasks have these types of fields: `Category`, `Sub-Task Name`, `Tag` & `Responsible`

#### Category
There are some pre-defined categories of the Sub-Task.
There are 5 types of categories: `Accounting`, `Client service`, `Advisory`, `Investments`, `Investment Ops`

#### Sub-Task Name
Name of the Sub-Task. It's a mandatory field.
No restriction for adding the same name Sub-Task

#### Tag
Tag of the Sub-task. Its alphabetical drodpown of `Money Movement`, `Money Movement - Wire`, `Money Movement - Journal`, `Money Movement - Check / ACH`, `Operations - Capital Call`, `Operations - Distribution`, `Operations - QSBS`, `Trading – Cash Raise`, `Trading – General`, `Trading – Loss Harvest` & `Trading – Rebalance`.

#### Due Date (Days)
- It is applicable only when `Configure Due days for subtasks` is checked. 
- It is an offset of the start date. `0` value is allowed.

#### Responsible
Name of the role whose responsible to complete the Sub-Task as done. Its a mandatory. Allows to select more than one responsible role for one Sub-Task.

## Add Template
### System Rule
- Only Admin user can able to add new template.

### UX Rule
- Shows proper message when no Sub-Task Available.
- Add/Remove Sub-Task under Template
  - Shows + button with Sub-task section. Clicking on the + button, opens the Sub-Task category dropdown. 
    - On click of any above category, Sub-Task will be added under that category.
    - New Sub-Task always be added to the last of the category.
    - On click of X, Sub-Task will be removed.
- Template Name
  - Free form text input field
- Description
  - Its a free form text input field.    
- RACI Roles 
  - Its a dropdown of families roles.
    - Shows roles in order of - Director, Advisor, Investment Director, Associate Advisor, Investment Associate, Client Manager, Client Associate, Operations, Personal Controller
  - Duplicate role is not allowed in any RACI roles. It means same role can be added in the different RACI roles but same role can not be added in same RACI role. In this case, it will show an error.
- Sub-Task Name
  - Free form text input field
  - If the task name is too long it appears in the next line.
- Tag
  - Dropdown of tags
- Responsible
  - Same as above RACI Roles. Its a multi-select input field.
  - If the user selects more than one role then shows the short name of the roles. E.g. `A. Advisor`, `C. Associate` 
  - On hover, shows a tooltip message with the full names of the selected roles.
- Template must have at least one Sub-Task available otherwise the system Shows an error message.
- Change order of Sub-Task
  - On hover of any Sub-Task, Shows Drag handle the left side 
  - Using Drag handle, user can change the position of Sub-Task under the same category.
  - When any particular category has only one Sub-Task then the Drag handle is not shown.

### UI Rule
- [Mockup](https://drive.google.com/file/d/1RXs1cr4PMLi44F6jgLUrzlG4k2gdf4Ox/view)
- [Add template dialog with frequency & Section dropdown](https://drive.google.com/file/d/1NdvsP4zkQ9BhuRaHBnA1IXh9yu1oSDSc/view?usp=drive_link)
- [Mockup with Custom frequency](https://drive.google.com/file/d/15QMRzBNfK_mk01gel3PhsMldURXW--r1/view?usp=drive_link)
- Message when no Sub-Task available: `No Sub-Task Available`
- Error message: `Please Add at least one Sub-Tasks`
- Error message for duplicate RACI Roles: `Duplicate value is not allowed`

## Edit Template
### System Rule
- Admin user can be edit any template anytime.

### UX Rule
- This action is not visible for `Triggers` or `One-Time Task` tab.
- When there is any change in the template, the existing Multi-Step task created from this template won't have any effect.

### UI Rule
[Mockup](https://drive.google.com/file/d/1RXs1cr4PMLi44F6jgLUrzlG4k2gdf4Ox/view)
- When non-admin user opens dialog [See this](https://drive.google.com/file/d/1XPxK3nuz3I4CaudPF1pmhEobbQFYcCf0/view?usp=sharing)


## View Template
### System Rule
- User can see the triggers or one-time tasks where this template is used. (Here One-time tasks means all Open or Upcoming task except recurring tasks)

### UX Rule
- There are total 3 tabs available: `General Information`, `Triggers`, `One-Time Tasks`.
  - General Information: Shows the genral information of the template.
  - Triggers: It shows all triggers name where this template is used.
  - One-Time tasks: It shows all one-time task (Open or Upcoming task except recurring task) where this template is used.  
- Shows proper message when `Triggers` or `One-Time Tasks` doesn't have records.
- Sorting order of sub-task in the General Information tab- Sub-Tasks are shown under the category on the view task dialog in the same order in which it was added.
- If the subtask name is too long, it appears in the next line. (Never show ellipsis)
- Columnn for `Triggers` & `One-Time Tasks` tab
  - Family
    - If family name is too long, show ellipsis.
  - Entity
    - If entity name is too long, show ellipsis.
  - Trigger Name
    - Applicable only for `Triggers` tab.
    - It is a link. On click, open trigger view dialog on the same page.  
    - If trigger name is too long, show trigger name in multiline.
  - Task Name
    - Applicable only for `One-Time Tasks` tab
    - It is a link. On click, open task view dialog on the same page.  
    - If task name is too long, show ellipsis.
  - Records are shown grouped by family and Entity. But we have not shown the family name and Entity name in repeating form.
- Sorting order in the `Triggers` & `One-Time Tasks` tab: Primary sorting on Family, Secondary sorting on Entity name and Territory on Task or trigger name.
- When user open the trigger view dialog from template and close the trigger dialog, it will redirect user to the Trigger tab.
- Same way​​ When user open the trigger view dialog and Edit & Save the trigger, it will redirect user to the Trigger tab.


### UI Rule
- Message when no records available: 
  - For Triggers tab: `No Triggers Available`.
  - For One-Time tasks: `No Tasks Available`.
- [General Information tab](https://drive.google.com/file/d/1-XXOGz_LXJB6s1W0GKY4XHGIaOUlZZAN/view?usp=drive_link) & [Trigger Tab](https://drive.google.com/file/d/1UyudXBe3d9AlM2yJyQ5ot17_CjFqKsvY/view?usp=share_link) & [One-Time Tasks tab](https://drive.google.com/file/d/1tHxm1jhg-I0L3aFcbChb63wEpRx5k2Tm/view?usp=share_link)


## Delete Template
### System Rule
- Only admin user can delete anytime.
- System template can't be deleted.

### UX Rule
- This action is not visible for `Triggers` or `One-Time Task` tab.
- When any template is deleted, the existing Multi-Task created from this template won't be have any effect.

### UI Rule
[Mockup](https://drive.google.com/file/d/1B5qAQDHthG-A1BNhEwxTEP3iYwQSmXqJ/view?usp=share_link))


## Browse Template
### System Rule
- Applicable only for Admin user

### UX Rule
- Shows proper message when no tempates available.
- Column name
  - Frequency
  - Name: If it is too long, it appears in the multi line. (Never show elipsis)
    - Section
  - Family: If family name is available, shows family name otherwise shows `-`.
  - RACI Roles
    - Shows Accountanle, Consulted and Informed roles of the template. Shows short name A,C, I.
    - A,C,I is shown in separate line. 
      - C & I: It shows the selected families roles. In case of multiple roles, roles are sorted in order of - Director, Advisor, Investment Director, Associate Advisor, Investment Associate, Client Manager, Client Associate, Operations, Personal Controller
      - If role name is too long, shows elipsis. On hover, shows tooltip with all users.
      - If user is not available for any role, that role won't be shown.
    - Responsible role is a added in sub-task and sub-tasks won't be shown in the list page. That's why Responsible role won't be shown. 
  - Description: If it is too long, it appears in the multi line. 
- System templates are shown first and other templates are shown second.
- Sorting order:
  - System templates are always shown first.
  - Template are primary sorted on Frequency in order- `One-Time`, `Recurring` & `Custom` and secondary sorted on the alphabetical order of `Template Name`.
- On click, opens a view dialog of the template.
- On hover, show hover effect. For admin user, shows vertmore action menu at right side.
  - Vertmore actions are `Edit` & `Delete`.
  - `Delete` action is not applicable for System template.
- Show the `Refresh` icon on the header. On click, the page will be refreshed.

### UI Rule
- Message for no templates available: `No Template Available`.
- Mockup [See this](https://drive.google.com/file/d/1JKyU5LA0XbL9ATliRb1s3pUarUHwznU7/view?usp=drive_link)


### Filter
#### UX Rule
- Allows to filter records using `Frequency`, `Section` & `Family`
- Show the `RESET` button to the right side when the filter is applied. On click, filter will be reset to default state.

#### Frequency
- It is a multi-select filter.
- Values are: `One-Time`, `Recurring` & `Custom`. By default, all options are selected.


#### Section
- It is a multi-select filter.
- Section value: `Money Movements`, `New Accounts`, `Investments`, `Philanthropy`, `Tax`, `Planning`, `Partnerships` & `Other`. By default, all options are selected.


#### Family
- It is a multi-select filter. Default `All` families are selected.
- Shows all families in the alphabetical order.


## System Template

- For the activity task feature, the system must have some templates to create bulk tasks for the activity. For e.g. `Capital call` type will have one template, `Intial Capital Call` type will have one template, `Cash Distribution` type distribution will have one template and `Stock Distribution` type distribution will have one tempalte, So we have given this feature to handle it. 
- Sometimes, Clarius team need to add funding account from the external account. In this case, he/she can used `Externally Paid` template. 
- System marks those template as `System Template`. So Clarius users can only edit it, but can not delete it.
- By doing this, Clarius team will have full control. They just need to edit the template and the system will pick those updates for the next activity tasks.
- Sometimes, clarius team want to create a task which is exactly same as Activity tasks. So user will be able to create it manually using these system template.


