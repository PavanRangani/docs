# In App Notifications

Purpose of the In App Notifications is, Associated users of the task get the alert notification. So they never miss any important updates about task where user is associated.

## System Rules

System shows notification in following four cases where user was associated in any of the RACI roles

- When task is removed from his queue (This means assignment is changed such a way that user is now no longer associated with that task)
- When task is deleted 
- When task is marked as Done
- When task is Reopened

User has to manually mark each notification as read. System allows users to mark any single message as read or all messages as read.

System auto marks `Reopen` notification as read when user perform `Mark as read` action for that `Reopened` task from My tasks page.

## UX Rules

- Shows Notification icon in App header and in Home page
- Shows Unread message count with icon. When there isn't any Unread message, count won't be shown but Icon will be visible always
- On click of Notification icon in header, it shows Notification dialog. This dialog shows all unread notifications sorted by its arrival time. Latest notification will be at top. 
- On mouse hover of any Notification, shows an icon to mark that particular Notification as read. 
- At top of the Notification dialog, shows `MARK ALL AS READ` button. On its click, all notification will be marked as read. 
- Notification dialog can be closed using X button and outside click
- Nothing happens on click of any notification Message
- When therre isn't any messages in notification dialog, it shows proper message and image about it. 

## UI Rules

### Notifciation message text

- When task is removed
  - `Task title|Entity name` has been removed from your queue
- When task is deleted
  - `Task title|Entity name` has been deleted by `User` (Name of the user who has deleted the task)
- When task is marked as Done
  - `Task title|Entity name` has been marked as Done by `User` (Name of the user who has marked that task as Done)
- When task is Reopened
  - `Task title|Entity name` has been Reopened by `User` (Name of the user who has Reopened the task)

### Mockups

https://drive.google.com/drive/folders/1-8VSkIu_AWpDx6Z4Z384T-BD4Vc6LLgI
https://drive.google.com/drive/folders/1-8VSkIu_AWpDx6Z4Z384T-BD4Vc6LLgI
