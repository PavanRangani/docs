# Pin

## Overview
Currently, when the user clicks on any Chat notification, the system opens a view dialog of that task. Once the view dialog is open, all Chat notifications of that task are auto-marked as read. Sometimes the user realizes that Chat notification is important may be he will work on that notification in the future. So he is able to mark that Chat notification or that task as Pinned. So we have introduced these features.

## System Rule

-Users can Pin any task from the Chat notification dialog, Whole Task is being Pinned. Not a particular Chat message of that Task. 
- Pin can be manage by the user. For e.g. If one user can Pinned any one task, other users can't see that task as Pinned.
- Shows all pinned task in a Pin Task dialog in the header and its a real time managed.
- Chat read/unread functionality and Mark as pin both are diffrent. For e.g If user marked as Pin for any Chat, 


## UX Rule
- Task can be pin/unpin from the View dialog, Pin Task dialog and Chat notification dialog.
- If any user has pinned task, shows pin icon in the header. Icon is not shown when it has no pin task available.
- Pinned Task dialog
    - On click of the Pinned task, open the task view dialog with Details tab.
    - Task can be pin/unpin from the Pin task dialog.
    - Sorting order: Pin tasks are sorted on ascending order of `Pinned On`.
    - Shows status with Pinned task in secondary information. 
        - In Progress status is shown as Green, On Hold status shown in Orange and Blocked status is shown as Red
        - Shows `Deleted` status for deleted task and shows `Completed` for completed task.

    

## UI Rule