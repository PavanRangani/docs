# Chat

It is important for Clarius group to have all information related to a task in one place. Chat in Task is important to keep the discussion done related to particular task at central place. When Chat is added, system will send in-app notification to the concerned team (RACI team) of the task.

## Add Chat

### System Rules

- Chat can be added to only task instances. It can’t be added to Recurring trigger
- Chat can be added to open or upcoming tasks. 
- Chat can not be added to Done tasks 
- Any user can add chat to the task. It's not just limited to the RACI team
- When chat is added on any task, System sends notifications to whole RACI team of the task 
- Allows to enter plain text in Chat (No rich text)

### UX Rules

- Chat can be added from
  - Task view dialog
  - From Chat Dashboard
  - From Notification dialog
- Shows time when Chat is added
- When there are any unsaved changes and user switches the tab or user close the task dialog intentionally using CANCEL button, any unsaved work won't lost.

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

- User can Delete only own Chat
- Chat of Done task can not be deleted.
- When any Chat is deleted, no notification is sent to RACI team. Already sent notification of this Chat message will be deleted.

### UX Rules
- On Delete, shows that message in red background
- For Deleted Chat shows time when its Deleted
- For Deleted Chat shows `Deleted` message in placeholder text to convey that this chat has been deleted
- When any message is Deleted, UI adjust scroll such a way that Delete confirmation box with action buttons is visible in visible area

### UI notes

Mockup //TODO

## Browse Chat of a single Task (Chat tab on Task view dialog)

- Tasks of any Chat is visible in Task view dialog or My Chat page

### UX Rules

- Shows all tasks of the Chat in ascending order of its creation time (Oldest at top and latest at bottom)
- **Chat Date and Time**
  - For each Chat message, Shows Date & time of the Chat posted  
    - For Edited Chat, shows Date & Time when Chat is Edited with `Edited` prefix
    - For Deleted Chat, Shows Date and Time when Chat is Deleted with `Deleted` prefix
  - Date an Time is shown in user's browser's timezone
  - For Today's date, shows relative values
    - When time is within one minute, shows `Recently`
    - When time is within an hour, shows `n minutes ago`
    - When time is within 24 hours, shows `n hours ago`
  - For Other than today's date, it shows Date in format of `23 Dec, 1970`. On hover of this Date, shows exact Date and Time in format of `23 Dec, 1970 00:00 AM/PM` in browser default tooltip. 
- With each Chat message, shows profile picture of the user who has posted it.
  - Profile picture is not shown for own chat. For other user's Chat, Shows Profile picture of that user.
  - On hover of this profile picture, it shows `First name + Last name`, `Email address` and user's role in tooltip. When user doesn't have any role, shows `No role`. It is possible that user can be in multiple roles for same task, so tooltip shows name of all the roles seprated by comma. 
- Shows Login user's own chat and other user's chat in different style so that it can be distinguished easily. 
- For Deleted Chat shows `Deleted` message in placeholder text to convey that this chat has been deleted
- For own Chat, shows Edit and Delete action
- When there isn't any Chat in this tab, shows proper message with illustration
- Allows user to add chat from this tab. See [Chat box](./chat.md#chat-box) for more details.
- For Done task
  - Chat box is not available
  - Edit and Delete actions not available for own chat
  - When task is done and it doesn't have any Chat messages, shows proper message with illustration
- **Shows profile picture of whole RACI team** of the task so that user can know about RACI team (who will get notification for this message). Profile pictures are shown in order of RACI. Means first Responsible, then Accountable, then Consulted and then informed.
- When Chat tab is opened, 
  - UI app loads all the Chat messages of the task. 
  - Shows loader in Chat tab when data is being loaded
  - When Chat tab is opened, shows scroll at the bottom. 
- If any Chat message has URL, UI app shows that link in blue colour
  - Link can be of either internal link or outer link
  - On click of the URL, internal link is opened in same tab and outer link is opened in new tab
- Data in this tab is realtime. For e.g. if task Chat tab is open and someone posts new message for this task, it will be visible to user directly without any tab change or page refresh. 

### UI Notes

- In case of overflow, show scroll in Chat tab. During scroll, RACI team at Top side and Chat box in footer will remain sticky

## Chat box (UI component)
- Chat can be added from three places in the application: Chat tab of task view dialog, Reply from Chat Notifications dialog and My Chat page
- Allows user to type message. 
- It only supports plain text (Doesn't support Rich text)
- User can copy & paste any text.
- Send button
  - It is disable when message is empty. It becomes enable when user types something. On "Send" message will be sent.
  - Send button becomes disable when `Send` action is in progress to avoid any double click. It becomes enable once `Send` action is completed successfully or failed. 
- Keyboard shortcut to send the message: 
  - `Ctrl + Enter` or `CMD + Enter`. 
  - When message is not typed and user users keyboard shorcut, nothing will happen
- Enter key can be used for the new line in message
- When message is saved, Removes all the spaces & newlines from the beginning and end of the message. However, the whitespaces in the middle of the string are preserved.
- By default box is shown in two line height. Its height will be increased as user types more. Height doesn't grow infinitely, It will have some maximum height after which it will show scroll internally
- On Successfull send action, message will be cleared
- When "Send" action is failed, message will remain as it is and shows error message `Message send failed`. This error message is removed when user updates chat content or if user again perform send action and it is successfull. 

## Stores unsaved changes of Chat in Local storage
- Chat can be added from three places in the application: Chat tab of task view dialog, Reply from Chat Notifications dialog and My Chat page
- To avoid accidental removal of Chat messages, UI app stores unsaved changes in local storage
- UI app stores this unsaved changes on per task basis. This storage is common for all three pages. It means if user has some unsaved changes for any task in My chat tab, that will be also visible in Reply box from Chat notification dialog or My Chat page. 
- Unsaved changes in local storage is saved or updated when user leaves the Chat box (its not updated in live when user is typing the content). For e.g. If user has typed something in Chat tab and user is still in Chat tab, content are not saved in local storage. But if user switches to the `Note` tab or user close the dialog, Unsaved changes in Chat tab will be stored in local storage. 
