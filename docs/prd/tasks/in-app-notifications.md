# In App Notifications

Purpose of the In App Notifications is, Associated users of the task get the alert notification. So they never miss any important updates about task where user is associated.

## System Rules

System shows notification in following cases where user is associated in any of the RACI roles in Open (Whose notification date is arrived).

- When task is removed from his queue (This means assignment is changed such a way that user is now no longer associated with that task)
- When new task is added or assigned to his queue
- When task is deleted 
- When task is marked as Done
- When task is Reopened

User who has performed this action, won't get the notification. For e.g. If I am deleting any task, I will not get notification but other associated users will get notification.

User has to manually mark each notification as read. System allows users to mark any single message as read or all messages as read.

System auto marks `Reopen` or `New`  notifications as read when user perform `Mark as read` action for that `Reopened` or `New`  task from My tasks page.

Notification message always shows the current name of the task. For e.g. At the time of the notification is triggered, name of the task was `Task1` but currently name of the task is changed to `Task2`. In notification dialog, name of that task is shown as `Task2`

## UX Rules

- Shows the Notification icon always in the App header and in the Home page.
- Shows Unread message count with icon. When there isn't any Unread message, count won't be shown but Icon will be visible always.
- On click of Notification icon in header, it shows Notification dialog. This dialog shows all unread notifications sorted by its arrival time. Latest notification will be at top. 
- Shows arrival date with each notification
- On mouse hover of any Notification, shows an icon to mark that particular Notification as read. 
- At top of the Notification dialog, shows `MARK ALL AS READ` button. On its click, all notification will be marked as read. 
- Notification dialog can be closed using X button and outside click
- Nothing happens on click of any notification Message
- When there isn't any messages in notification dialog, it shows proper message and image about it. 
- If a user updates the task name and the notification of that task is already available then the name of the task will be updated in that notification.
- The maximum height of the notification dialog will be equal to the screen height. In case of overflow the scroller will come.

## UI Rules

[See this Mockups](https://drive.google.com/drive/folders/1QzJUVLPlatfx8D_PHUatSF3t03wITQ3Q)

### Notification message text

- When task is removed from queue
  - `Task title | Entity name} | Due on:{Due date}` has been removed from your queue
- When task is deleted
  - `Task title | Entity name | Due on:{Due date}` has been deleted by `User` (Name of the user who has deleted the task)
- When task is marked as Done
  - `Task title | Entity name | Due on:{Due date}` has been marked as Done by `User` (Name of the user who has marked that task as Done)
- When task is Reopened
  - `Task title | Entity name | Due on:{Due date}` has been Reopened by `User` (Name of the user who has Reopened the task)
- When new task is added or assigned
  - New task `Task title | Entity name | Due on:{Due date}` has been added to your queue.



## Known Case

##### A task has both new and reopen notifications. Now if the user `Mark as Read` the reopen notification, both notifications (New and Reopen) will be `Mark as Read` simultaneously.

**Scenario**

- Given: I have added one one-time task of `Task1`  where I'm added as a Responsible role and `Ajay` is added as Informed role. (Here consider that `Task 1` is an open task)
- And: `Ajay` can see the `New` tag for the `Task 1`.
- When: If I mark that task as done 
- Then: the card will appear in the done bucket for both. 
- And: System sends a notification to `Ajay`.
- When: I reopen that task. 
- Then: system sends another notification to `Ajay`.
- And: when Ajay sees the task, he shows the `Reopen` tag.
- When: If Ajay `Mark as Read` the `Reopen` notification
- Then: The system will also `Mark as Read` the `New` notification of that task.

**Technical point**

- When the reopen notification is "marked as read" the, UI app calls 2 API to mark `New` and `Reopen` notification as read.



## Mark as Read / Mark all as Read

- Applicable only for `New` and `Reopen` tasks.
- Single notification or multiple notifications can also be marked as read.
  - In case of multiple notifications: Shows `Mark ALL AS READ` action in notification dialog. On click, considered all notifications will be marked as read and removed from the dialog.
  - In case of single notification: On hover of notification, shows the icon. On click, a particular notification will be marked as read and removed from the dialog. Notification won't be clickable.
- There are three way to marked the task as read
  1. Even if user opens a view dialog of `New` and `Reopen` task, their notification will be marked as read.
  1. In vertmore action of the `New ` and `Reopen` task
  3. In notification dialog
     1. By `Mark as Read` icon action 
     2. By `Mark all as Read` action button
