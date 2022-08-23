# Browse Meeting/Note tasks

### UX Rules
- Shows a new section `Task` in the last of the add meeting/Notes page where users can add a task for the meeting/notes.
- Shows proper message when task is not added.
- Users can also add multiple tasks in a single Meeting/Notes.
- On click of + button, opens the `Add Task` dialog where the user can add a task.
- Shows already added tasks on the add Meeting/Notes page.
- Columns are 
  - Entity
  - Section/Tag
  - Task
    - When task name is too long then it will be shown multiple lines.
    - For `Multi-Step` task, if task name is too long, show ellipsis.
  - Date
    - It shows `Start Date` and `Due Date` for the pending task. Both dates are shown in separate lines. If the due date is already passed then show it in red colour.
    - Shows `Due date` of the Sub-Task. 
    - Shows `Completed Date` for the done task or Sub-Task.
      - Here `Completed Date` means a date when the status of a task/Sub-Task is marked as Done. 
  - Status
    - Show status of the task or Sub-Task. For main task, `In Progress` is shown in the green colour and `Blocked` status is shown in the red colour.
    - Show `-` when status is not available. (Upcoming task don't have any status)
    - For `Done` task/Sub-task, it shows the name of the user also. For e.g. `Done by Keith V.`.
  - RACI Roles
    - Show roles of the particular task. 
    - Each role is shown in the separate line in order of `R`, `A`, `C` & ` I`. If any particular role is empty, that line won't be available. If the roles are too long then it appears in the next line.
    - Show short names of the users in this column. E.g. If the user name is `Keith Vernon` then show it as `Keith V.` here. 
    - For the `Multi-Step` task, show the first name of the selected user. Show multi-user names with comma separator if multi-user is selected. (If it's too long, show an ellipse. Never shows in multiline). On hover, the tooltip shows. The tooltip shows the full names of all users.
- Sorting order: 
  - Primary sorting on Entity type in order of - Individuals, Joint, Partnership, Foundation, Estate, Trust. Each type is alphabetically sorted internally.
  - Secondary sorting on Section name.
- Shows hover effect on hover and vertmore action at the right side.
  - Vertmore actions of  task other than done status: `Edit`, `Change Status`, `Delete`, `Change Status` action is not applicable for the upcoming task.
  - Vertmore action for done task: `Reopen` 
- On click of the Task row, opens task view dialog. 
- Tasks added from Add meeting page are saved after the meeting is saved.
- Chat tab doesn't available to meeting/note tasks until the meeting is not saved.
- **Quick Edit action**: 
  - [See more details](./task-instance.md#quick-action)

**Multi-Step icon:** It indicates that a particular task is a Multi-Step task.

**Priority icon:** Based on Priority task, it shows priority icon. Task with normal priority, its doesn't shows any icon. Task with critical or High priority, it shows star icon.

**Chat icon:** Show Chat icon at the right side for the task which has any Chat. If Chat is read, it shows a Green icon. If Chat is unread, it shows Orange icon. On Click of Chat icon, it opens Task dialog where directly Chat tab is opened

**Pin icon:** Shows Pin icon at the right side for the pinned task. [See more details](./pin.md) 


### UI Rules
Mockup [See this](https://drive.google.com/file/d/1IMYLxbzyth_b6gQDPKPNX6Dc7FZIZP2f/view?usp=sharing)
