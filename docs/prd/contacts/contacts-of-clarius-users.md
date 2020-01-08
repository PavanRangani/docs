# Contacts of Clarius users

## System requirements

- All Clarius people are the user of the application. So system creates contacts for each users.  By doing this system can distinguish contacts of Clarius team and other contacts.
- When any new user is added in application, the system will auto create related contact.
- At the time of creating a contact from the user, system will use the name and email address of user to create related contact.
- When any user is blocked, system will archive  related contact.
- When any user is unblocked, its related contact will be activated (unarchived) again.
- Such contact can't be deleted and its email also can’t be changed

## UX requirements

- In view dialog of contact, shows `Clarius user` tag with `email`
- In edit dialog of contact, `email` will be disabled
- On delete shows `Delete not allowed`  dialog with proper message.