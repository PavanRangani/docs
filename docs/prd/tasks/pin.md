# Pin

## Overview
Currently, when the user clicks on any Chat notification, the system opens a view dialog of that task. Once the view dialog is open, all Chat notifications of that task are auto-marked as read. Sometimes the user realizes that Chat notification is important maybe he will work on that notification in the future. So he wants to mark that Chat notification or that task as Pinned. So we have introduced these feature. User can mark any task as Pinned and keep it in his/her radar.

## System Rule
- Task can be Pinned. When user Pin any Chat from the Chat notification dialog, the whole task of the Chat will be pinned instead of that particular Chat. 
- Pin task is managed for each user. For e.g. If one user pinned any one task, other users do not see that task pinned.
- Shows all pinned tasks in a `Pinned Task` dialog in the header and it's not a real-time managed.
- Chat read/unread and Mark as Pinned both actions are different. For e.g If one of the chat notifications is `Marked as Pinned` from the Chat notification, the notification of that Chat won't be automatically `Marked as Read`. 

## UX Rule
- Task can be pin/unpin from the View dialog, Pin Task dialog and Chat notification dialog.
- If any user has pinned task, shows pin icon in the header. Icon is not shown when it has no pin task available.
- Pinned Tasks dialog
    - Representation of Task: Task name | Entity name | Due date
    - On click of the Pinned task, open the task view dialog with Details tab.
    - Task can be pin/unpin from the Pin task dialog.
    - Sorting order: Pin tasks are sorted on descending order of `Pinned On`.
    - Shows status with Pinned task in secondary information. 
        - In Progress status is shown as Green, On Hold status shown in Orange and Blocked status is shown as Red
        - Shows `Deleted` status for deleted task and shows `Completed` for completed task.
- Shows toast on completion of Pin/Unpin.

## UI Rule

[UI mockups](https://drive.google.com/drive/folders/1IIw43qTekLnOSdavsgK2i4v7Z2FTfHsf)
- Toast message: `Pin sucessfully` & `Unpin sucessfully`.