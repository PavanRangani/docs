# Browse Meeting/Note tasks

### UX Rules
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
    - Show `-` when status is not available. (Upcoming task don't have any status. )
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
- Tasks added from Add meeting page are saved after the meeting is saved. So if task is not saved yet, its Chat tab is shown disable.


### UI Rules
Mockup [See this](https://drive.google.com/file/d/1IMYLxbzyth_b6gQDPKPNX6Dc7FZIZP2f/view?usp=sharing)
