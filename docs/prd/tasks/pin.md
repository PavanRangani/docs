# Pin

## Overview
Currently, when the user clicks on any Chat notification, the system opens a view dialog of that task. Once the view dialog is open, all Chat notifications of that task are auto-marked as read. Sometimes the user realizes that Chat notification is important maybe he will work on that notification in the future. So he wants to mark that Chat notification or that task as Pinned. So we have introduced these feature. User can mark any task as Pinned and keep it in his/her radar.

## System Rule
- Task can be Pinned. When user Pin any Chat from the Chat notification dialog, the whole task of the Chat will be pinned instead of that particular Chat. 
- Pin task is managed for each user. For e.g. If one user pinned any one task, other users do not see that task pinned.
- Chat read/unread and Mark as Pinned both actions are different. For e.g If one of the chat notifications is `Marked as Pinned` from the Chat notification, the notification of that Chat won't be automatically `Marked as Read`. 

## UX Rule
- Task can be pin/unpin from the View dialog, Chat notification dialog and My Chat page.
- Pinned task are shown in the Chat notification dialog with `Pinned Task` header. [See more details](../chat/chat-notification.md#chat-notification-dialog)

## UI Rule

[UI mockups](https://drive.google.com/drive/folders/1IIw43qTekLnOSdavsgK2i4v7Z2FTfHsf)