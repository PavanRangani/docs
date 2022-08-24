# Group Tasks

## Overview

Sometimes Managers needs to show the tasks of their groups to help load-balance the work. Sometimes the member of the team are not available for couples of the days, so the manager needs to check his/her queue and change the assignment to other person. So we have implemented a group task so that he/she can easily track that information. Group tasks are shown based on pre-defined groups.


## System Rule
- Group task is applicable to everyone. 
- It shows tasks based on the value selected in the `Group` filter. Group will be: 
    - `Client Services Team` - Client Associates, Client Managers & CA Pool
    - `Client Associates` -  Client Associates & CA Pool
    - `Operations` - Operations
    - `Associate Advisors` - Associate Advisors
    - `Advisory` - Associate Advisors, Advisors & Directors
    - `Investment Associates` - Investment Associates
    - `Investments` - Investment Director & Investment Associate
    - `Accounting` - Personal Controllers
- Group tasks will show tasks based on the above-selected group. Suppose the user selected `Client Services Team` as a group then the Group task page will show tasks like:
    - System first prepares a list of users who have been added to any family as `Client Associate`, `Client Manager` & `CA Pool`. Suppose `Aimee`, `Andi`, `Michelle` & `Tiffany` is added as a `Client Associate` role and `Betsy`, `Kathleen`, `Oscar`, `Victoria` is added as a `Client Manager`.  So this page will show tasks where these users are associated as CA or CM role under Responsible or Accountable role. In addition to that, it will also include tasks where CA Pool is associated. 
- When person is associated with task as a other team, that task won’t be shown in group tab ever 


## Browse Open Task

### UX Rule
- Its same as [Browse Open Task](./browse-my-tasks.md#browse-open-tasks) page. 
- Some of the differences are 
    - Here there is a difference in showing subtask compared to My task page. My task page shows subtasks of only login users while this page shows subtasks of selected Group. 
    - Another difference is in showing due date for Multistep task. My task page due date according login users's subtasks. While this page shows due date of parent task.
- Table header shows title name like `{selected group name} Open Task`. For e.g. `Client Services Team Open Tasks`

### UI Rule
[Mockup](https://drive.google.com/file/d/1KEx4p-LGDwsPZfZhCGwewrJBBKOngouM/view?usp=sharing)


## Browse Upcoming Task

### UX Rule
- Its same as [Browse Upcoming Task](./browse-my-tasks.md#browse-upcoming-task) page. But here it shows only tasks of selected Group.
- Table header shows title name like `{selected group name} Upcoming Task`. For e.g. For e.g. `Client Services Team Open Tasks`

### UI Rule

[Mockups](https://drive.google.com/file/d/1TkgEXNifpHtCB67AApyEcnuSvUHAZyBM/view?usp=sharing)


## Browse Completed Task

### UX Rule
- Its same as [Browse Completed Task](./browse-my-tasks.md#browse-completed-tasks) page. But here it shows only tasks of selected Group.
- Table header shows title name like `{selected group name} Completed Task`. For e.g. `Advisory Completed Tasks`

### UI Rule
[Mockup](https://drive.google.com/file/d/1EHb4uLCpHXCrSLlw79MiqDaUXaOnNOmK/view?usp=sharing)


## Browse Deleted Task

### UX Rule
- Its same as [Browse Deleted Task](./browse-my-tasks.md#browse-deleted-task) page. But here it shows only tasks of selected Group.
- Table header shows title name like `{selected group name} Deleted Task`. For e.g. `Accounting Deleted Tasks`

### UI Rule
[Mockup](https://drive.google.com/file/d/1Z6Cpwmi-3WrY68Vis_6eDQF1osRF_pvq/view?usp=sharing)


## Filter

- All filters are same as the [My Task page](./browse-my-tasks.md#filter). 
- `New/Reopen`& `My Role` both filters are not appars for the Group task page. Group task have some addtional filters.

### Group
- It is a single input field. 
- Its values are: `Client Services Team`, `Client Associates`, `Operations`, `Associate Advisors`, `Advisory`, `Investment Associates`, `Investments`, `Accounting`. 
- Default `Client Services Team` is selected.

### User
- It is a multi select filter. Default value is `All`.
- Its a dropdown of the unique users of the tasks visible in this. Only accountable and responsible persons are considered in uniqueness logic.
- for e.g. This page is showing four tasks. Unique users in accountable and responsible are 3 users. Keith, Sue and Jarred. So this dropdown will show only these three users. 