# Chat Dashboard

## Overview

Dashboard type of page from where user can track/update all of his chat’s from central place.  That is a key feature of Athena chat so that Clarius group users can be efficient and not having to go into each card to update.

## Rules

- This page shows all Open and Upcoming tasks having atleast one Chat of the particular family
- If the task does not have any chat, that task won’t be shown here. 
- This page shows all tasks regardless of login user is in RACI or not 
- Also shows Done tasks in this page when Login user has any unread chat in that Done task.
  - Case: There is one task where Ajay and Chirag are in the RACI team. Ajay have added one Chat and before Chirag “Mark as read”  that chat, Ajay have moved it to Done. So Chirag will still see that task in this page.
- All tasks in this page are shown in the order selected under “Sort by” dropdown. See [Sort by](...)
- Allows to filter tasks in this page by various filter criterias. See [Filters](...)
- Tasks having Unread Chat notification are highlighted so that user can quickly find such tasks
- Provides a way to `Mark as Read` for the task with `unread chat
- When selected family doesn't have any tasks, shows proper message
- When there isn't any matching tasks for applied filters, shows proper message

## UX Rules

- When this page is accessed, no family is selected by default. User has to select any family from left panel to see its tasks. 
- In case of overflow of the page width, shows horizontal scroll. During scroll filter bar and Families panel remain sticky.
- When data are being loaded, shows loader in content area

### Families panel

- Shows families in two goups: `My Families` and `Other Families`
- `My Families` shows all associated families of the login user in alphabetical order
- `Other Familes` shows those families which are not associated with user but has any open or upcoming task which has at least one chat
- Count in brackets indicates the count of tasks which has unread chat. If nothing is unread, doesn't show any count
- When there isn't any records available in any of the group, that group won't be available
- When there isn't any records in any group, shows proper message

### Single task

- Shows details of task and its Chats as single card
- Task details are shown at top and Chats are shown at bottom
- Task Details
  - Name of the legal entity
    - Shows display name of the legal entity
    - In case of overflow, shows it in mutiple line
  - Task Name
    - In case of overflow, shows it in mutiple line
  - My Role
    - Role of the Login user for a particular task
    - When Login user doesn't have any role, shows dash (-)
  - Team
    - RACI team of the task (Other than login user)
    - Shows only first name of the person. In case of multiple person shows it separated by comma
    - In case of overflow, shows it in mutiple line
    - When team is empty, shows dash (-)
  - Due Date
    - When Due date is passed, shows it in Red
  - Section
    - Shows name of the section in a tag style
  - Status
    - Shows BLOCKED in red and IN-PROGRESS in green colour 
  - NEW or REOPEN tag
    - Shows applicable tag for own task which is New or Reopened
  - Priority
    - Filled star for Critical and outlined start for High Priority. 
- Chat details
  - Chats are shown in same layout as Task Chat tab
  - Only difference are Edit and Delete action for own chat. Shows actions on hover of own chat.  Edit and Delete actions are icon buttons
  - Way to add new chat. For Done task there isn't any way to add Chat
- Provides a Way to open `View Task` and `Edit Task` dialog
- When task has unread chat or task has NEW or REOPEN tag, provides `Mark as Read` action
- On `Mark as Read`, Unread highlight and NEW or REOPEN tag will be removed
- When task has more Chats, shows scroll in task card. During scroll, Entity name and task name remains sticky

## Sort By

- Allows to sort records in this page with various options
- 3 possible values: RACI, Due Date, Priority
- When Sort By = RACI, 
  - Shows tasks in order of RACI role left-to-right. Means Responsible tasks first, then Accountable, then Consulted, then Informed.  
- When Sort By = Priority, 
  - Shows tasks in order of Priority left-to-right. Means Critical first, then High Priority, then Normal. 
- When “Sort by = Due date”, 
  - Shows tasks sorted in Due date left-to-right. Task with Oldest Due date at left side.
- When a user has selected  “Sort by” = RACI or Priority , internal sorting should be based on Due date.
  - For e.g. User has selected “Sort by = RACI” so all responsible tasks will be shown first (left to right). Now if a user has 5 responsible tasks, these 5 tasks will be sorted in Due date internally.  Yes.



## Filter

- When any filter is applied, shows RESET icon to reset the filter to default state

#### My Role

- Multiselect dropdown of Role. 
- Available options: All, Responsible, Accoutable, Consulted, Informed
- Default value is `All`. 

#### Priority

- Multiselect dropdown of Status. 
- Available options are: `Critical`, `High Priority` & `Normal`.
- Default value is `All`

#### Status

- Multiselect dropdown of Status. 
- Available options are: `Notified`, `Ready`, `In-Progress`, `Blocked`, `Done`.
- Default value is `All`.

#### Entity

- Multiselect dropdown of Legal Entities. 
- Shows all entities of the selected family. 
- Default value is `All`.

#### Section

- Multiselect dropdown of Section
- Default value is `All`. 
- Available options are: All, Contact, Communication, Assets, Banking, Estate Plan, Gifting, Insurance, Investments, Partnership, Philanthropy, Tax, Trust, Planning, Other

#### Show only Unread

Toggle switch. By default it is Off. 