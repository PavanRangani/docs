# Meeting/Notes tasks

## Browse Tasks of particular Meeting/Note

- Task section will be applied everywhere from where we can add meeting/note. For e.g. `Meeting/Notes tab in Estate Plan` & `Meeting/Notes tab in Investments`.

### **Add / Edit Meeting/Notes page**

- Shows a new section `Task` in the last of the add meeting/Notes page where users can add a task for the meeting/notes.
- Shows proper message when task is not added.
- Users can also add multiple tasks in a single Meeting/Notes.
- On click of + button, opens the `Add Task` dialog where the user can add a task.
- Shows already added tasks on the add Meeting/Notes page.
- Columns are 
  - Entity
  - Section
  - Task
  - Date
    - It shows `Start Date` and `Due Date` for the pending task. Both dates are shown in separate lines.
    - Shows `Completed Date` and `Completed by` for the done task.
      - Here `Completed Date` means a date when the status of a task is marked as Done. 
      - `Completed by` means whose user completed the task.
      - If the due date is already passed then show it in red colour.
    - If the due date is already passed then show it in red colour.
  - Status
    - Show status of the task. `In Progress` show in the green colour and `Blocked` status in red colour.
  - RACI Roles
    - Show roles of the particular tasks. Show short names of the users in this column. E.g. If the user name is `Keith Vernon` then show its `Keith V.` here. 
    - Each role shows in the separate line. If the roles are too long then it appears in the next line.
  
- Sorting order: Records are ascending order of due date.
- Shows hover effect on hover and vertmore action at the right side.
  - Vertmore actions are: `Edit`, `Change Status`, `Delete`.
  - On click of `Change Status` action, opens [change status dropdown](https://drive.google.com/file/d/1JNWazeF4VabIDiK8LUYtPTDsl0qju3qz/view).
- On click of the Task, open task view dialog.



### View page of meeting/notes

- Users can also add a task in the view page of meeting/notes.
- Sorting order will be the same as the add meeting/notes page.
- Shows proper message when task is not available.
- On hover, shows hover effect and vertmore action menu at right side.
- Vertmore action: Edit, Change Status, Delete
- On click, open task view dialog.



### Delete Meeting/Note

[See this for more details]((../communication/meeting.md#tasks))



### List page of Meetings/Notes

- Show tasks of meeting in tabular format [See Mockup](https://drive.google.com/file/d/1lBTcOIUKRGHRjeqyTH0q1o7pV0bZ6iV8/view)
  - Columns: Entity Name, Section, Task, Status
  - Sorting order: Records are ascending order of due date.
