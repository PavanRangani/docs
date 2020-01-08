# Contacts of app users

## System requirements

- All Clarius people are the app user of the application. So system creates contacts for each users.  By doing this system can distinguish contacts of app users and other regular contacts.
- When any new user is added in application, the system will auto create related contact.
- At the time of creating a contact from the user, system will use the name and email address of user to create related contact.
- When any user is blocked, system will archive  related contact.
- When any user is unblocked, its related contact will be activated (unarchived) again.
- Such contact can't be deleted and its email also can’t be changed

## UX requirements

- In view dialog of such contact, shows `Clarius user` tag with `email`
- In edit dialog of such contact, `email` will be read only
- Delete is not allowed. On hover of DELETE button, shows `Delete not allowed message`  in tooltip