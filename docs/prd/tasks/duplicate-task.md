# Duplicate Task

## Overview

- There are many occasions when Clarius team has a task that he/she does on an infrequent schedule, but more than once. Not frequently enough to create a recurring task, but something that would be VERY convenient and a huge time saver if he/she could just pull up the closed task and `Duplicate` and then update the information.


## UX Rule
- Shows `Duplicate Task` action from the task or trigger view dialog where user can create the duplicate task.
- This action is applicable for all task (Open, Upcoming, Completed or Deleted)
- When user click this action, system will open the add task or trigger dialog and copied all the task information.
- System will copied following information
    - Task type, Template Name, Family name, Entity name, Section, Tag, Task Name, Notes, Dates, RACI roles & Sub-tasks.
- System won't be copied the following information
    - Task Chat, Status, Priority & Pin or Unpinned
- Due date won't be copied if it is overdue.
- If the entity is terminated or deceased, it won't be copied.
- If the clarius team user is blocked, it won't be copied.