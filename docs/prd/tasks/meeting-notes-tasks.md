# Meeting/Notes tasks

## Browse Tasks of particular Meeting/Note

- Task section will be applied everywhere from where we can add meeting/note. For e.g. `Meeting/Notes tab in Estate Plan` & `Meeting/Notes tab in Investments`.

### **Add / Edit / View Meeting/Notes page**

- Shows a new section `Task` in the last of the add meeting/Notes page where users can add a task for the meeting/notes.
- Shows proper message when task is not added.
- Users can also add multiple tasks in a single Meeting/Notes.
- On click of + button, opens the `Add Task` dialog where the user can add a task.
- Shows already added tasks on the add Meeting/Notes page.
- Columns are 
  - Entity
  - Section
  - Task
    - When task name is too long then it will be shown multiple lines.
  - Date
    - It shows `Start Date` and `Due Date` for the pending task. Both dates are shown in separate lines. If the due date is already passed then show it in red colour.
    - Shows `Completed Date` for the done task.
      - Here `Completed Date` means a date when the status of a task is marked as Done. 
  - Status
    - Show status of the task. `In Progress` is shown in the green colour and `Blocked` status is shown in the red colour.
    - Show `-`  when status is not available. (Upcoming task don't have any status. )
    - For `Done` tasks, it shows the name of the user also. For e.g. `Done by Keith V.`.
  - RACI Roles
    - Show roles of the particular task. 
    - Each role is shown in the separate line in order of `R`, `A`, `C` & ` I`. If any particular role is empty, that line won't be available. If the roles are too long then it appears in the next line.
    - Show short names of the users in this column. E.g. If the user name is `Keith Vernon` then show it as `Keith V.` here. 
- Sorting order: 
  - Primary sorting on Entity type in order of - Individuals, Joint, Partnership, Foundation, Estate, Trust. Each type is alphabetically sorted internally.
  - Secondary sorting on Section name.
- Shows hover effect on hover and vertmore action at the right side.
  - Vertmore actions of  task other than done status: `Edit`, `Change Status`,  `Delete`. `Change Status` action is not applicable for the upcoming task.
  - Vertmore action for done task: `Reopen` 
- On click of the Task row, opens task view dialog.



### Scenarios of Add/Edit/View page of meeting/note

Rule 1: Shows `Task` section at bottom of meeting/notes add/edit/view page with proper message.

Rule 2: Multiple tasks are Primary sorting on Entity type in order of - {Individuals, Joint, Partnership, Foundation, Estate, Trust}. Each type is alphabetically sorted internally. Secondary sorting on Section name.

Rule 3: Vertmore action for done tasks, only `Reopen` action is shown.

Rule 4: Vertmore action for open tasks, `Edit`, `Change Status`,  `Delete` actions are shown.

Rule 5: `Change Status` action is not shown for the upcoming tasks (Whose notification date is not passed).

Rule 6: For open task, `Start date` and `Due date` both dates are shown in the separate lines.

Rule 7: If the `Due date` is passed away then it is shown in the red colour. (only date not label)

Rule 8: For done task, shows completed date in the dates column.

Rule 9: For open task, `In Progress` status is shown in the green colour and `Blocked` status is shown in the red colour.

Rule 10: For open task, show `-` for upcoming task in the status. (Upcoming task don't have any status.)

Rule 11: For done task, shows the name of the user who completed the task. 

Rule 12: Each role is shown in the separate line in order of `R`, `A`, `C` & ` I`.

Rule 13: If any role is empty, it won't be shown.

Rule 14: Shows short name of the user in the RACI column.

Rule 15: If the roles are too long then it appears in the next line.

Rule 16: On click of record, opens the view dialog.

Rule 17: The `New` , `Reopen` and  `Blue dot` tags will not be shown in this page.



## Delete Meeting/Note

[See this for more details]((./../communication/meeting.md#delete))

### Scenarios of Delete meeting

Rule 1: If the meeting has any tasks (Done or Open) then meeting/notes can't be deleted and shows `Delete not possible` dialog.

Rule 2: If the meeting doesn't have any tasks then meeting/notes can be deleted and shows delete confirmation dialog.
