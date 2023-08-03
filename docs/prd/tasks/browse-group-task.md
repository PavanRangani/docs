# Group Tasks

## Overview

Sometimes Managers needs to see the tasks of their their team members to help load-balance the work. Sometimes the member of the team are not available for couples of the days, so the manager needs to check his/her queue and change the assignment to other person. So we have implemented a group tasks page where managers where he/she can easily track that information for team members of group. Group tasks page provides some pre-defined groups to view the tasks.


## System Rule
- Group task is accessible to everyone. (Not only admin)
- It shows tasks based on the value selected in the `Group` filter. Group will be: 
    - `Client Services Team` - Client Associates, Client Managers & CA Pool
    - `Client Associates` -  Client Associates & CA Pool
    - `Client Managers` - Client Managers
    - `Operations` - Operations
    - `Associate Advisors` - Associate Advisors
    - `Advisory` - Associate Advisors, Advisors & Directors
    - `Investment Associates` - Investment Associates
    - `Investments` - Investment Director & Investment Associate
    - `Accounting` - Personal Controllers & Reconciliation
- Group tasks will show only those tasks where the associated users of the selected group are added as a Responsible or Accountable role. Associated users of the task are shown in bold.
- Group tasks will show tasks based on the above-selected group. Suppose the user selected `Client Services Team` as a group then the Group task page will show tasks like:
    - System first prepares a list of users who have been added to any family as `Client Associate`, `Client Manager` & `CA Pool`. Suppose `Aimee`, `Andi`, `Michelle` & `Tiffany` is added as a `Client Associate` role and `Betsy`, `Kathleen`, `Oscar`, `Victoria` is added as a `Client Manager`.  So this page will show tasks where these users are associated as CA or CM role under Responsible or Accountable role. In addition to that, it will also include tasks where CA Pool is associated. 
- When person is associated with task as a other team, that task won’t be shown in group tab ever 
- Consulted and Informed columns are not shown in Group task.
- Highlights the name of the user due to which task is shown in this tab
- Group task page will be same as the My Task page. But there are some diffrences for multi-step tasks like
    - My Task page shows all sub-tasks of the login user while this page shows all open subtasks of hte selected group. Done sub-tasks are not shown in the Open tab.
    - Another difference is in showing due date for Multistep task. Group task page shows multi-step task due date based on the selected group. 
- When user applies the filter, system will show tasks or sub-tasks according to selected filter.
    - Suppose the user selects `Money Movement - Wire` in the tag filter, system will show only those tasks or sub-tasks having `Money Movement - Wire` tag.
    - Suppose the user selects any user from the user filter, system will show only those tasks or sub-tasks where the select user is in any role.
- For multi-step task, due date will be auto calculated based on the sub-tasks and tasks will be shown in bucket according to the due date.
- When user selects `Client Services Team` & `Client Associates` group, system will also shows claims CA Pool tasks.     

## Browse Open Task

### UX Rule
- Its same as [Browse Open Task](./browse-my-tasks.md#browse-open-tasks) page. 
- Some of the differences are 
    - Here there is a difference in showing subtask compared to My task page. My task page shows subtasks of only login users while this page shows open subtasks of selected Group. Done sub-tasks are not shown in the Open tab.
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

### Overview
Managers & groups can see what they have accomplished in particular duration. For Example, if Sue wants to review everything the Client Associates have completed last week, She will see tasks where the CA was responsible or accountable and that were marked done last week. It shows normal tasks which are completed in particular durationand also shows any subtasks which are completed in particular duration (even if its parent task is not completed)

### System Rule
- Its same as [Browse Completed Task](./browse-my-tasks.md#browse-completed-tasks) page. But here it only shows tasks where the selected group’s person is `Accountable` or `Responsible`.
- Shows One-Time or Multi-Step tasks (parent task is completed) which is completed in selected duration.
- Also, shows Multi-Step tasks where Parent task is not completed yet but any of its subtask is completed in selected duration.
- All these tasks will sorted in descending order of `Completed On`.

### UX Rule
- Table header shows title name like `{selected group name} Completed Task`. For e.g. `Advisory Completed Tasks`
- For Multi-step tasks, only selected group’s subtasks which are completed in selected duration will be displayed. Other subtasks won't be displayed.
- If any Multi-step task is not completed yet, it will be show in grey color (to separate it out from other tasks). Vertmore action is not applicable for such tasks.

### UI Rule
[Mockup](https://drive.google.com/file/d/1EHb4uLCpHXCrSLlw79MiqDaUXaOnNOmK/view?usp=sharing)


# Design decision
**Should we show sub-tasks that have NA status and parent task is completed in the Completed tab?**
- No. Completed tab will show only the completed tasks or sub-tasks. NA status won't be considered complete status. If any task has NA sub-tasks and user will marks taht tasks as completed, that task will be shown in the completed tab without a NA status sub-task.


## Browse Deleted Task

### UX Rule
- Its same as [Browse Deleted Task](./browse-my-tasks.md#browse-deleted-task) page. But here it shows only tasks of selected Group.
- Table header shows title name like `{selected group name} Deleted Task`. For e.g. `Accounting Deleted Tasks`

### UI Rule
[Mockup](https://drive.google.com/file/d/1Z6Cpwmi-3WrY68Vis_6eDQF1osRF_pvq/view?usp=sharing)


## Filter

- All filters are same as the [My Task page](./browse-my-tasks.md#filter). 
- `New/Reopen`& `My Role` both filters are not appars for the Group task page. Group task have some addtional filters.

### Duration filter of Completed tab
- Values are: `This Week`, `Last Week`, `This Month`, `Last 30-days`, `Last Month`, `This Year`, `Last Year`, `Custom`
- Default value is `Last 30-days`. 
- Duration filter will show tasks based on the `Completed On`. 
- On click of `Custom`, opens a dialog where user can enter any `From` and `To` date. Future date is not allowed.
    - There should be a maximum of 365 days' distance between the "From" and "To" date otherwise the system will show an error.
    - Validation for `From` & `To` are done in following sequence
      1. First check if date is valid or not. If invalid shows error `Invalid Date` 
      2. Date is future date or not. If future date entered, shows error `Future date is not allowed` 
      3. `From` date is higher than `To` date or not. Otherwise shows error : `Date must be >= 'From date'`
      4. Diffrence between `From` & `To` is less than or equal to 365 days. Otherwise shows error : `Date range should be <= 365 days`.

### Group
- Its dropdown of : `Client Services Team`, `Client Associates`, `Operations`, `Associate Advisors`, `Advisory`, `Investment Associates`, `Investments`, `Accounting`. 
- Default `Client Services Team` is selected.

### User
- It is a multi select filter. Default value is `All`.
- Its a dropdown of the unique users of the tasks visible in this. Only accountable and responsible persons are considered in uniqueness logic.
- for e.g. This page is showing four tasks. Unique users in accountable and responsible are 3 users. Keith, Sue and Jarred. So this dropdown will show only these three users. 

### Show CA Pool tasks
- Toggle switch. By default, it is OFF. It means shows all tasks. 
- If the user changes it to ON, shows only CA Pool tasks (Task which has CA Pool assignment once - Tasks with little "P" icon)
- Applicable for all tabs of Group task. 


## Design Decision

**Why we have removed the Pagination only for Open tab?**

- Because tasks are sorted on due date for Open tab. System won't manage the above requirments with pagination for Open tab. Due date range of the multi-step tasks will be diffrent for each user.  That's why sorted order will be diffrent for each user. 
- Upcoming tab are sorted on Start date, Completed tab are sorted on Completion date and Deleted tab are sorted on deletion time. So in these tab, system will implement the above requirement with pagination. 