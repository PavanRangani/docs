# Contacts of App Users

## System requirements

- All Clarius people are the app user of the application. So system creates contacts for each users.  By doing this system can distinguish contacts of App Users and other regular contacts.
- When any new user is added in application, the system will auto create related contact.
- At the time of creating a contact from the user, system will use the name and email address of user to create related contact.
- When any user is blocked, system will archive  related contact.
- When any user is unblocked, its related contact will be activated (unarchived) again.
- Such contact can't be archived or deleted
- its email also can’t be changed

## UX requirements

- View: Show tag with name at top
- View: show tooltip on hover of Delete button 
  - Tooltip Message: The Contact is Clarius User. So, delete is not allowed.
- Edit: Show email as read only and show tag near email field
- List page:
  - Single contact vertmore actions  Delete, Replace & Delete, Archive will be disabled
    - On hover of disabled actions shows tooltip with following message
      - Delete: The Contact is Clarius User. So, delete is not allowed.
      - Archive:  The Contact is Clarius User. So, archive is not allowed.
      - Replace & Delete: The Contact is Clarius User. So, delete is not allowed.
  - Actions from selection bar:
    - When single contact is selected or Multiple contacts are selected and one of the contacts is of App User, REPLACE & DELETE, DELETE and ARCHIVE actions will be disabled 
    - Currently when any individual type contact is selected, these actions are already disabled and tooltip is shown. 
    - Same tooltip message will be updated. This tooltip message can be shown for both types of contact: Individual or Contacts of App Users
    - Tooltip message: For Individual/Clarius User contacts, This action isn’t supported. So, remove them from selection.

