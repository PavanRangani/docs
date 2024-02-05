# Duplicate Task

## Overview

- There are many occasions when Clarius team has a task that he/she does on an infrequent schedule, but more than once. Not frequently enough to create a recurring task, but something that would be VERY convenient and a huge time saver if he/she could just pull up the closed task and `Duplicate` and then update the information.


## UX Rule
- Recurring trigger or Task instance can be duplicated.
- Allows to duplicate task with Notes or Without Notes
- Shows `Duplicate` action from the task or trigger view dialog where user can create the duplicate task.
- For Open & Upcoming tasks, shows `Duplicate` & `Duplicate with Notes` action in vertmore.
- For Deleted or Completed task, when user click on `Duplicate` action, system shows 2 option: `Duplicate` & `Duplicate with Notes`
- When user select `Duplicate` option, system will copy all infomration except Task Notes.
- When user select `Duplicate with Notes` option, system will copy all information with Task Notes.
- This action is applicable for all task (Open, Upcoming, Completed or Deleted)
- For `Deceased/Terminated` entities done/deleted tasks, this action won't be applicable. For this, shows `Duplicate` action appears disabled. On hover, shows tooltip message. [See this](https://drive.google.com/file/d/1Mei6AeHHkzi3qssGbR9G-Qf9ujgtvr9Z/view?usp=sharing)
- When user click this action, system will open the add task or trigger dialog and copied all the task information.
- System will copy following information
    - Task type, Template Name, Family name, Entity name, Section, Tag, Task Name, Notes, Dates, RACI roles & Sub-tasks.
- System won't be copy the following information
    - Task Chat, Status, Priority & Pin or Unpinned
- Due date won't be copied if it is overdue.
- If the entity is terminated or deceased, it won't be copied.
- If the clarius team user is blocked, it won't be copied.

## UI Rule
- Tooltip message: `This entity is deceased/terminated. So you can’t not reopened/restored it.`
