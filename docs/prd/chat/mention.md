# Overview
- As a User I want system to notify a User when he is mentioeed in a Chat Message, irrespective of the Card's assignments & Account's notification preferences. Because at present, I need to do workaround - assign a card to the user before adding such chat and after chat is sent remove assignment.

## System Rule

- When user type `@` in the chat box. Opens a dropdown of active Clarius user.
- More than 1 users can be mentioned in a Chat  message. In that case, all of the mentioned Users receives notification.
- Mentioned User should not receives more than 1 notifications for the same Chat.
- Mentioned User is notified at both times: A new Chat is added OR an existing Chat is updated.
- When a Chat message is edited, only the users mentioned as per the new content are notified; so the users who was mentioned earlier but not after the edit are not notified.

## UX Rule

- User list dropdown
    - Dropdown will be open when whitespace is followed by `@`.
    - Dropdown is sorted on alphabetical order of name.
    - Dropdown will be close when user press `Esc` key or click any outside area.
        - Keyboard
        - 
    - User list dropdown close
    - Chip view
UI Rule
- Mockup