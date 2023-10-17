# Mention-features

## Overview

As a User I need someway to highlight for user that they have a specific question in a chat. Same way I need an easy way to loop someone else into the chat if they are not assigned a role on the task

## System Rule

- When user type `@` in the chat box. Opens a dropdown of active Clarius user.
- More than 1 users can be mentioned in a Chat message. In that case, all of the mentioned Users receives notification.
- Same user can also be mentioned multiple times. If same user is mentioned multiple times, user will only get one notification.
- Mentioned User should not receives more than 1 notifications for the same Chat.
- Mentioned User is notified at both times: A new Chat is added OR an existing Chat is updated.
- When a Chat message is edited, only the users mentioned as per the new content are notified; so the users who was mentioned earlier but not after the edit are not notified.
- If CA Pool is added in any task and user adds a Chat, System sends the Chat Notification to other RACI user and CA user of the system.

## UX Rule

- User list dropdown
    - Dropdown will be open when whitespace is followed by `@`.
    - Dropdown is sorted on alphabetical order of Active clarius users name.
    - Shows user profile picture, Name and Email Address in the dropdown. [Image: User dropdown](https://drive.google.com/file/d/1A18YEZr91MIp_jaRbrW4uy9dxxtkOE6D/view?usp=sharing)
        - When profile picture is not available with user, it will show default profile picture.
    - Dropdown will be close when user press `Esc` key or clicks somewhere outside area.
    - Filtering is applied based on the character(s) given by the user, which are matching anywhere on:
        - First Name
        - Last Name
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
        - If user press `Esc` key, then the suggestion list dialogue is closed and user observes cursor blinking in the input field.
    - Chip view
        - Shows mentioned user name in Bold in a Chip view. [Image: Chip](https://drive.google.com/file/d/17r3mgGeGGGK0vR02sp9z6MdCchJ5Xvxd/view?usp=sharing)
        - Using Backspace Chip can be removed from chat
        - On hover of Chip, show tooltip message with following information: [Image: Tooltip]()
            - First name
            - Last Name
            - Email
        - Chip view of mentioned user is preserved in edit Chat too.
        - When user is blocked, then also Tooltip will show name and email

## UI Rule

[Mockup of Chat tab](https://drive.google.com/file/d/1lzSRD8TOtjyC66GnhngYYcoX2KwH0N_F/view?usp=sharing) //Dummy Image
- Toast message: `Pin sucessfully` & `Unpin successfully`.