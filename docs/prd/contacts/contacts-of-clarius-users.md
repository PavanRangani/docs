# Contacts of App Users

## Overview

- Contacts are also created for the users of the application (Clarius users). Such contacts are used in application whenever required for for that user for e.g. as meeting attendees for meeting with clients.  
- In PDF summary of such meeting, actual clients should be listed ahead of such contacts. But application doesn't have any way to distinguish between contact of clients and contacts of the Clarius users.  To solve this problem, we have introduced the concept of  `Contacts of App Users`
- For each user of the application system will create one correspondent contact. System will mark such contacts as `Contacts of App users`

## System requirements

### Create

- Can't be created manually. When any new user is added to the application, system will auto create related contact.
- At the time of creating a contact from the user, system will use the name and email address of user to create related contact.

### Edit

- Email address can't be changed. 
- Name or any other information can be changed

### Delete

- Not possible

### Archive

- Can be activated/archived independent of the User status (active or block)

### View

- Shows some sign to show Contacts of app users



## UX requirements ([Mockups](https://drive.google.com/drive/u/0/folders/1IUuNhsRTdHSMRTavXU0I6pUzOnyv19Px))

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

