# My Chat

## Overview

Dashboard type of page from where user can track/update all of his chat’s from central place. That is a key feature of Athena chat so that Clarius group users can be efficient and not having to go into each card to update.

## Rules

- By default, this page shows the tasks having unread chat or tasks which are pinned 
- This page shows all tasks regardless of login user is in RACI or not 
- Also shows Done tasks in this page when Login user has any unread chat in that Done task.
  - Case: There is one task where Ajay and Chirag are in the RACI team. Ajay have added one Chat and before Chirag “Mark as read” that chat, Ajay have moved it to Done. So Chirag will still see that task in this page.
- Allows to filter tasks in this page by various filter criterias. See [Filters](#filter)
- Tasks having Unread Chat notification are highlighted so that user can quickly find such tasks
- Provides a way to `Mark as Read` for the task with unread chat.
- When there isn't any matching tasks for applied filters, shows proper message
- My Chat page shows new messsages in Realitime. Left panel count also updated in realtime for unread messages. Organge bar is not shown in realtime (To avoid frequent API calls).

## UX Rules

- When this page is accessed, no family is selected by default. User has to select any family from left panel to see its tasks. 
- In case of overflow of the page width, shows horizontal scroll. During scroll filter bar and Families panel remain sticky.
- When data are being loaded, shows loader in content area
- Sorting order: Families are shown in the alphabetically order.
- When unread task is Pinned. In such case, priority is given to Unread Chat. So this task is shown under Unread group.
- Message when no family selected: `Please Select Family`
- Message when no matching records available with Family: `No Matching Tasks Available`

### Families panel

- Shows all families of the login user which has any Unread Chat or Pinned task. [See this](https://drive.google.com/file/d/1oMs2buW_3yYjtXOUXFRwauG0fXVs3EII/view)
- Families are shown in alphabetical order
- Count in brackets indicates the count of tasks which has unread chat. If nothing is unread, doesn't show any count
- When there isn't any records available in families panel, shows proper message. [See this](https://drive.google.com/file/d/1oKpXtX3xp3I92oyhHHe0Bs6DMJ46JTox/view)

#### Auto-Switch to next family

- If family has one unread Chat (No Pin task available), the user marks that task as unread. So that family will be removed from the families panel and user will be moved to the next family. If it is the last family, system show proper message.
- If a family has one unread Chat and some Pinned task and the user marks that unread Chat as read, family won't be change. It will ramain as it is (Only unread count will be changed).

#### UX Rule

- Message when no Families available: `No Families Available`


### Single task

- Shows details of task and its Chats as single card
- Task details are shown at top and Chats are shown at bottom
- Task Details
  - Name of the legal entity
    - Shows [display name](../legal-entities/display-name.md) name of the legal entity
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
    - Shows BLOCKED in red, IN-PROGRESS in green and ON HOLD in golden colour 
  - NEW or REOPEN tag
    - Shows applicable tag for own task which is New or Reopened
  - Priority
    - Filled star for Critical and outlined start for High Priority. 
- Chat details
  - Chats are shown in same layout as [Task Chat tab](./chat.md#browse-chat-of-a-single-task-chat-tab-on-task-view-dialog). 
  - Only difference are Edit and Delete action for own chat. Shows actions on hover of own chat.  Edit and Delete actions are icon buttons
  - Chatbox will be hidden when a user performs edit or delete action for a Chat on My Chat page.
  - Provides a Way to add new chat. See [Chat box](./chat.md#chat-box-ui-component) for more details. 
  - When task has any Unread task notification or Chat notification and user adds reply from here, all task and chat notifications will be marked as read.
  - For Done task there isn't any way to add new Chat
- Task name is a link and on its click opens `View Task` dialog
- Task having Unread message shows Orange colour bar.
- When task has unread chat or task has NEW or REOPEN tag, provides `Mark as Read` action. On `Mark as Read`, all unread chat messages and NEW or REOPEN tag will be mark as read 
- When task has more Chats, shows scroll in task card. During scroll, Entity name and task name remains sticky
- By default, scroll is auto set such a way that last chat message is visible to user

**Pin/Unpinned icon:** Shows Pin/Unpinned icon at the right side for the pinned task. [See more details](../tasks/pin.md)

**CA Pool icon:**  Shows CA Pool icon at the left side of star icon. On hover, shows tooltip message. message: `CA Pool task`.


## Filter 

- When any filter is applied, shows RESET icon to reset the filter to default state
- `Filter` will be RESET when the user changes the family. It will be RESET on page refresh.

#### My Role

- Multiselect dropdown of Role. Disable when My Task is set to OFF.
- Available options: All, Responsible, Accoutable, Consulted, Informed
- Default value is `All`. 


#### Entity

- Multiselect dropdown of Legal Entities. 
- Shows all entities of the selected family. 
- Default value is `All`.
- Entities are sorted on entity type in order of - Joint, Individual, Partnership, Trusts, Foundation, Estate. Each entity type is alphabetically sorted.
- If this filter is already applied and the user changes the family, the system will first reset the Entity filter to the default state. 


#### Section

- Multiselect dropdown of Section
- Default value is `All`. 
- Values are same as the [Master](../tasks/task-instance.md#section-master)


#### My Tasks

- Toggle switch. By default, it is OFF. It means shows all tasks regardless of login user is in RACI or not.
- If the user changes it to ON, shows only those tasks where the login user is in the RACI roles.


#### Active Chat

- Toggle switch. By default, it is ON. Means shows only those tasks having any chat.
- If the user changes it to OFF, shows all tasks regardless of it has any chat or not.


#### Only Unread/Pinned

- Toggle switch. By default, it is ON. Means shows only unread Chat and Pinned Tasks.
- If user changes it to OFF, shows all tasks regardless of unread notification or Pinned task.


### Design Decision

**Why are we only shown unread/pinned task chats?**

Currently, each family has many tasks. So when a user clicks on any family to view that family's task chat, the server takes more time to respond. That's why we only show unread/pinned task chats so that the server can respond in less time.
