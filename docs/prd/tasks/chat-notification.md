# Chat Notifications
When Chat is added, system sends in-app notification to the concerned team (RACI team) of the task. No email notifications. All such notifications are accessible to login user quickly from header via Notification icon

## System Rules

- When chat is added on any task, system sends notifications to the whole RACI team of the task (Except self user)
- When chat is edited on any task, system doesn't send a notification to the RACI team of the task (This is intentional decision suggested by Keith)
- When chat is deleted, system doesn't send a notification to the RACI team of the task.
- When task is deleted, its chat notifications sent to the RACI team will not be removed. User will need to manually mark it as read.
- Shows unread notifications count and shows all unread notifications in a dialog
- Provides a way to Mark all notification as Read
- Also provides a way to mark single notification as 
- Notification message always shows the current name of the task. 
    - For e.g. At the time of the notification is triggered, name of the task was `Task1` but currently name of the task is changed to `Task2`. In notification dialog, name of that task is shown as `Task2`

## UX Rules

### Chat notification icon

- Shows Chat notification icon in App header and in the Home page.
- Shows count of unread chat messages along with icon
- On click of Icon, opens Chat notification dialog
- Icon is also available when there isn't any unread notifications. On click, opens My Chat page directly

### Chat notification dialog
- Chat notification dialog shows all the chat notifications
- All unread notifications are descending order of its arrival time. Latest notification at the top.
- Notification dialog can be closed using X button and outside click
- For each chat notification 
    - Shows name of the task along with entity name and due date separated by pipe
    - Shows prioriy icon
    - Chat content 
    - Details of the user who has posted chat
    - shows Chat creation Date and Time
    - Way to mark as read
    - Reply icon to reply any particular Chat
- Provides a way to quick navigation to `My Chats` page at bottom of the dialog
- Nothing happens on click of any notification Message
- The maximum height of the notification dialog will be equal to the screen height. In case of overflow shows the scroll.
- During scroll, Header and footer of the dialog remains sticky 
## UI Rules
- When task name is long, it is shown in multiple line

## Quick Reply from Chat notification dialog
- Provides a way to quickly reply any Chat notification directly from Notification dialog. 
- Provides Reply action with each chat notification.
- On `Reply`, 
    - it opens empty Chat box
    - Hides Reply and Mark as Read icon 
- `Send` icon 
    - It is in disable state until user type something. 
    - It becomes enabled, when user types something.
- Way to `Cancel` the Reply. 
    - On Cancel, reply box will be removed and content will also be cleared.
- When reply is sent, Shows feedback to user for a 1 second. After 1 second, feedback is removed and that notification will be auto marked as read (Due to this notification will be removed from dialog)
- Allows to open Reply box for more than one Chat messages at same time


## Mark as Read
- Notification will be removed from dialog when it is `Mark as Read`
- Notification can be `Mark as Read` from three places
    - From Chat tab of the Task. This is done Auto when user opens Chat tab of any task. 
    - From Notification dialog
    - From My Chat page

## Mark All as Read
- Provides a way to Mark all notifications as read from Chat notification dialog
- On click, all notifications in dialog will be marked as read and it will be removed from the dialog.