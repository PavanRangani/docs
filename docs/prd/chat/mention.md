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
    - Dropdown is sorted on alphabetical order of Active clarius users name.
    - Shows user profile picture, Name and Email Address in the dropdown.
    - Dropdown will be close when user press `Esc` key or clicks somewhere outside area.
    - Filtering is applied based on the character(s) given by the user, which are matching anywhere on:
        - First Name
        - Last Name
        - Email of the user
    - Keyboard
        - As soon as user types `@` the suggestion list dialogue opens. But:
            - Focus remains on the input field
            - No item in the list is in Active state
        - If user types any character after `@` then the list is filtered out according to the given input and the first item in the list can be observed in Active state.
        - User can use down/up arrow key to navigate between the items in the list.
        - If user press `Enter` key then:
            - The Active item in the list gets selected (can be seen in chip view in the chat input field)
            - The dialogue get closed
        - The cursor can be observed blinking after the chip view and a single whitespace
        - If user press 'Esc' key, then the suggestion list dialogue is closed and user observes cursor blinking in the input field.
    - Chip view
        - Shows mentioned user name in Bold in a Chip view. 
        - On hover of Chip, show tooltip message with following information:
            - First name
            - Last Name
            - Email
        - Chip view of mentioned user is preserved in edit Chat too.

## UI Rule

[Mockup of Chat tab](https://drive.google.com/file/d/1lzSRD8TOtjyC66GnhngYYcoX2KwH0N_F/view?usp=sharing) //Dummy Image