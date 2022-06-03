# Chat Notifications

When Chat is added, system sends in-app notification to the concerned team (RACI team) of the task. No email notifications. All such notifications are accessible to login user quickly from header via Notification icon

## System Rules

- When chat is added on any task, system sends notifications to the whole RACI team of the task (Except self user)
- When chat is edited on any task, system doesn't send a notification to the RACI team of the task (This is intentional decision suggested by Keith)
- When chat is deleted, system doesn't send a notification to the RACI team of the task.
- Shows unread notifications count and shows all unread notifications in a dialog
- Provides a way to mark single notification as Read
- Notification message always shows the current details (Priority, Task & Due date) of the task. 
  - For e.g. At the time of the notification is triggered, name of the task was `Task1`and Priority of that task `Normal` but currently name of the task is changed to `Task2` and Priority is changed to `Critical`. In notification dialog, name of that task is shown as `Task2` and `Critical` priority icon is shown.

## UX Rules

### Chat notification icon

- Shows Chat notification icon in App header and in the Home page.
- Shows count of unread chat messages along with icon
- On click of Icon, opens Chat notification dialog
- Icon is also available when there isn't any unread notifications. 
  - In such a case, On click, opens My Chat page directly
  - In such a case, if user is already on My Chat page, icon is disable. On hover it shows proper message in tooltip.

### Chat notification dialog
- Instead of showing all notifications, it shows notifications grouped by task
- If user has more than one unread Chat notification for the same task, then only the latest notification is visible in the notification dialog. Other notifications are hidden. It shows the count for hidden notifications.
  - For example, Suppose `Sue` has a total of 5 unread chat messages for one task `Task 1`. But only the latest message is visible in the chat notification dialog. It shows one word for another 4 Chat that says `+4 more`.
- Task having latest chat notification is shown at top
- For each task
  - Shows name of the task along with entity name and due date separated by pipe
  - Show count if task has any hidden notification
  - Shows prioriy icon
  - Latest Chat content 
    - Profile picture of the user. Shows [tooltip](../tasks/task-instance.md#profile-picture-tooltip) on hover of the profile picture
    - Shows Chat creation Date and Time. 
      - Shows relative value. See logic of showing relative value [here](./chat.md#browse-chat-of-a-task-chat-tab)
      - On hover of date, shows tooltip
  - Way to mark as read
  - Reply icon for quick reply. Reply icon is not available when task is done
- Provides a way to quick navigation to `My Chat` page at bottom of the dialog. If user is already on My Chat page, button is disable. On hover it shows proper message in tooltip
- On click of any task, opens the Chat tab of the view dialog of that task
- When any task is marked as read, it will be removed from dialog with Swipe out animation
- When any quick reply is sent, that task will be marked as read.
- Notification dialog can be closed using X button and outside click

## UI Rules
[Mockup](https://drive.google.com/file/d/18Zw0BxA1f0kNqxOrJrNC9MrVxLMH7yq2/view?usp=sharing)
- On mouse hover of notification message, its background colour is changed
- When task name is long, it is shown in multiple line. Task name will be word break (Partial word will break in to new line)
- Message for more then one Chat available: `+{count of unread Chat for same task} more`
- Chat content will not have word break (Partial word won't be shown in new line)
- The maximum height of the notification dialog will be equal to the screen height. In case of overflow shows the scroll.
- During scroll, Header and footer of the dialog remains sticky
- Tooltip message when notification icon is disable or `GO TO MY CHAT` button is disable: `You are already on My Chat page`


## Quick Reply from Chat notification dialog

- Provides a way to quickly reply any Chat notification directly from Notification dialog. 
- Provides Reply action with each task in notification dialog
- On `Reply`, 
  - it opens empty Chat box
  - Hides Reply and Mark as Read icon 
- `Send` icon 
  - It is in disable state until user type something. 
- Way to `Cancel` the Reply. 
  - On Cancel, reply box will be removed and content will also be cleared.
- When reply is sent successfully, Shows feedback in toast and notification will be auto marked as read (Due to this notification will be removed from dialog)
- Allows to open Reply box for more than one task at same time


## Mark as Read

- Notification will be removed from dialog when it is `Mark as Read`
- Notification can be `Mark as Read` from three places
  - From Chat tab of the Task. This is done Auto when user opens Chat tab of any task. 
  - From Notification dialog
  - From My Chat page
- When user click on the `Mark as Read` icon, all Chat notification (Current + Old) of that Task will be marked as read.
- When user adds `Reply`, all Chat notification of that task will be marked as read.

