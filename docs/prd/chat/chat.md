# Chat

It is important for Clarius group to have all information related to a task in one place. Chat in Task is important to keep the discussion done related to particular task at central place. When Chat is added, system will send in-app notification to the concerned team (RACI team) of the task.

## Add Chat

### System Rules

- Chat can be added to task instances. It can’t be added to Recurring trigger
- Any user can add chat to the task. It's not just limited to the RACI team
- Chat can be added to open or upcoming tasks. 
- Chat can not be added to Done tasks 
- When chat is added on any task, System sends notifications to whole RACI team of the task 
- Allows to enter plain text in Chat (No rich text)

### UX Rules

- Chat can be added from
  - Task view dialog
  - From Chat Dashboard
  - From Notification dialog
- Shows time when Chat is added
- When there are any unsaved changes and user switches the tab, Chat data won't be lost. If user close the task dialog intentionally using CANCEL button, any unsaved work will be lost.

### UI notes

Mockup //TODO


## Edit Chat

### System Rule

- User can edit only own Chat
- Chat of Done task can not be edited
- When any Chat is edited, no notification is sent to RACI team. (This is intentional as per Keith's suggestion)

### UX Rules
- For Edited Chat shows time when its Edited
- When any message is edited, UI adjust scroll such a way that Edit box with action buttons is visible in visible area

### UI notes

Mockup //TODO

## Delete Chat

### System Rules

- User can Delete only own Chat of Open and Upcoming task
- Chat of Done task can not be deleted.
- When any Chat is deleted, no notification is sent to RACI team. 

### UX Rules
- For Deleted Chat shows time when its Deleted
- When any message is Deleted, UI adjust scroll such a way that Delete confirmation box with action buttons is visible in visible area

### UI notes

Mockup //TODO

## Browse Chat of a single Task (Chat tab on Task view dialog)

- Tasks of any Chat is visible in Task view dialog or My Chat page

### UX Rules

- Shows `all tasks of the Chat in ascending order of its creation time (Oldest at top and latest at bottom)
- Chat Date and Time
  - For each Chat message, Shows Date & time of the Chat posted  
    - For Edited Chat, shows Date & Time when Chat is Edited. 
    - For Deleted Chat, Shows Date and Time when Chat is Deleted
  - Date an Time is shown in user's browser's timezone
  - For Today's date, shows relative values
    - When time is within one minute, shows `Recently`
    - When time is within an hour, shows `n minutes ago`
    - When time is within 24 hours, shows `n hours ago`
  - For Other than today's date, it shows Date in format of `23 Dec, 1970`. On hover of this Date, shows exact Date and Time in format of `23 Dec, 1970 00:00 AM/PM` and Timezone
- With each Chat message, shows profile picture of the user who has posted it.
  - Profile picture is not shown for own chat. For other user's Chat, Shows Profile picture of that user.
  - On hover of this profile picture, it shows `First name + Last name`, `Email address` and user's role in tooltip. When user doesn't have any role, shows `No role`
- Shows Login user's own chat and other user's chat in different style so that it can be distinguished easily. 
- For Deleted Chat shows `Deleted` message in placeholder text to convey that this chat has been deleted
- For own Chat, shows Edit and Delete action
- When there isn't any Chat in this tab, shows proper message with illustration
- Allows user to add chat from this tab. See [Chat box](./chat.md#chat-box) for more details.
- For Done task
  - Chat box is not available
  - Edit and Delete actions not available for own chat
- When a user is adding any Chat or Notes to a task and switches the tab or close the dialog, unsaved changes won't be lost.
- Shows profile picture of whole RACI team of the task so that user can know about who will get my message
- Data in this tab is realtime. Means if task Chat tab is open and someone posts new message for this task, it will be visible to user directly without any tab change or page refresh. 

### UI Notes

- In case of overflow, show scroll in Chat tab. During scroll, RACI team at Top side and Chat box in footer will remain sticky

## Chat box (UI component)

- Allows user to type message. 
- It only supports plain text (Doesn't support Rich text)
- User can copy & paste any text.
- Send button is disable when message is empty. It becomes enable when user types something. On "Send" message will be sent.
- Keyboard shortcut to send the message: `Ctrl + Enter` or `CMD + Enter`. When message is not typed and user users keyboard shorcut, nothing will happen
- Enter key can be used for the new line in message
- When message is saved, Removes all the spaces & newlines from the beginning and end of the message. However, the whitespaces in the middle of the string are preserved.
- By default box is shown in two line height. Its height will be increased as user types more. Height doesn't grow infinitely, It will have some maximum height after which it will show scroll internally
- On Successfull send, message will be cleared
- When "Send" is failed, message will remain as it is and shows error message `Message send failed`



# TODO

- Pending for Ajay
  - Think about realtime cases in task page, task dialog and My Chat page
  - Mockup of My task button in task notification dialog...Title will be Task Notifications
  - If it is easy to find and highlight url ..then only we should do. Keith clearly mentioned this
    - No usecase of showing task name in Chat
  - When any task is deleted, its chat notifications sent to the RACI team will not be removed. User will need to manually mark it as read