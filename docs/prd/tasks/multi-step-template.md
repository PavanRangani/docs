# Multi-Step Template

The use case here is that there are certain tasks that Clarius team repeats that have sub-tasks.  For these, they want the ability to have a library of pre-defined Templates that they can choose from.

Only admin’s should be able to create and manage the multi-step templates. Non-Admin users can see that template 

## Entity details

### Template Name
It's a mandatory field.

### Description
Description about this template. Will be shown on UI with this template name in template dropdown in Add task dialog.

### Notes
- It's a rich text input filter.
- User can add link of the Nuclino for the detail description of this Template here.
- This notes will be cloned to the Tasks created from this template

### RACI Roles
Here family roles can be specified
- Responsible : Mandatory. Multiple roles can be specified
- Accountable : Mandatory . Only single role is allowed
- Consulted / Informed : Not mandatory. Multiple roles can be specified

### Sub-Tasks
Sub-Tasks have these types of fields: `Category`, `Sub-Task Name`, `Responsible`

#### Category
There are some pre-defined categories of the Sub-Task.
There are 5 types of categories: `Accounting`, `Client service`, `Advisory`, `Investments`, `Investment Ops`

#### Sub-Task Name
Name of the Sub-Task. It's a mandatory field.
No restriction for adding the same name Sub-Task

#### Tag
Tag of the Sub-task. Its drodpown of `Trading` & `Money Movement`.

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
    - On hover of subtask, shows X icon to the right side and
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
[Mockup](https://drive.google.com/file/d/1RXs1cr4PMLi44F6jgLUrzlG4k2gdf4Ox/view)
- Message when no Sub-Task available: `No Sub-Task Available`
- Error message: `Please Add at least one Sub-Tasks`
- Error message for duplicate RACI Roles: `Duplicate value is not allowed`

## Edit Template
### UX Rule
- Admin user can be editable anytime.
- When there is any change in the template, the existing Multi-Step task created from this template won't have any effect.

### UI Rule
[Mockup](https://drive.google.com/file/d/1RXs1cr4PMLi44F6jgLUrzlG4k2gdf4Ox/view)


## View Template
### UX Rule
- If the subtask name is too long, it appears in the next line. (Never show ellipsis)
- Sorting order- Sub-Tasks are shown under the category on the view task dialog in the same order in which it was added.

### UI Rule
[Mockup](https://drive.google.com/file/d/1KPGYZNyDayE4xvrnxfHwhWEyaE0EAcZI/view)


## Delete Template
### UX Rule
- Can be deleted anytime
- When any template is deleted, the existing Multi-Task created from this template won't be have any effect.

### UI Rule
[Mockup](//TODO)


## Browse Template
### System Rule
- Applicable only for Admin user

### UX Rule
- Shows proper message when no tempates available.
- Column name
  - Name : If it is too long, it appears in the multi line. (Never show elipsis)
  - Accountable
  - Consulted: It shows the selected families roles. In case of multiple roles, roles are sorted in order of - Director, Advisor, Investment Director, Associate Advisor, Investment Associate, Client Manager, Client Associate, Operations, Personal Controller
  - Informed: Same as Consulted.
  - Description: If it is too long, it appears in the multi line.
- Sorting order: Templates are sorted in the alphabetical order of `Template Name`.
- On click, opens a view dialog of the template.
- On hover, show hover effect and vertmore action menu at right side.
  - Vertmore actions are `Edit` & `Delete`.
- Show the `Refresh` icon on the header. On click, the page will be refreshed.

### UI Rule
- Message for no templates available: `No Template Available`.
Mockup [See this](https://drive.google.com/file/d/1kvHsG1RHnLJ6b4ynYNEySL3-meqicDRb/view?usp=sharing) //TODO
- Dialog when non-admin user opens this page [See this](https://drive.google.com/file/d/1XPxK3nuz3I4CaudPF1pmhEobbQFYcCf0/view?usp=sharing)
