# Contacts of App Users

## Overview

- Contacts are also created for the users of the application (Clarius Employees). Such contacts are used in application whenever required for that user for e.g. as meeting attendees for meeting with clients.  
- In PDF summary of such meeting, actual clients should be listed ahead of such contacts. But application doesn't have any way to distinguish between contact of clients and contacts of the Clarius Employees.  To solve this problem, we have introduced the concept of  `Contacts of App Users`
- For each user of the application system will create one correspondent contact. System will mark such contacts as `Contacts of App users`

## System requirements

### Create

- Can't be created manually. When any new user is added to the application, system will auto create related contact.
- At the time of creating a contact from the user, system will use the name and email address of user to create related contact.

### Edit

- Email address can't be changed. 
- Name or any other information can be changed. 

#### UI Requirement

- Edit: 
  - Show email as read only and show `Clarius Employees` tag near email field.
  - Shows `Permissions` section for admin users. [See this](https://drive.google.com/file/d/1SHPBchbYmx0IclxLgZjc4g9Abk2hmRkN/view?usp=share_link)
    - Shows one checkbox `Allow wire instruction second check`. Default it is unchecked. 
    - If the admin user wants to allow wire notifications for any Clarius user, he/she will mark this checkbox as true.


### Delete

- Not possible

### Archive

- Can be activated/archived independent of the User status (active or block)

### View

- Shows some sign to show Contacts of app users

#### UI Requirement

- Show `Clarius Employee` tag with name at top
- Show tooltip on hover of Delete button 
  - Tooltip Message: The Contact is Clarius User. So, delete is not allowed.
- Shows `Permissions` section for all users. (Admin or Non-admin) [See this](https://drive.google.com/file/d/1TSMV3pagwSXHqm85oK-qLJSeerLVu6Mv/view?usp=share_link)
  - If checkbox of `Allow wire instruction second check` is true, shows `Yes` otherwise shows `No`.


## Browse Clarius Employees

[Mockups](https://drive.google.com/file/d/19FZ7c0NVAzvmuvF5r_Lq3fg6MlOr_YP6/view?usp=sharing)

- List page:
  - Columns will be same as the `Contact` tab
  - On hover, shows hover effect and vertmore action menu at right side.
    - Vertmore action: `Edit`, `Archive`
- Multiple action doesn't applicable for the `Clarius Employees` contact
- Multi select actions from selection bar for Archived Clarius Employees contact:
  - When single contact is selected or Multiple contacts are selected and one of the contacts is of App User, REPLACE & DELETE, DELETE and ARCHIVE actions will be disabled 
  - Currently when any individual type contact is selected, these actions are already disabled and tooltip is shown. 
  - Same tooltip message will be updated. This tooltip message can be shown for both types of contact: Individual or Contacts of App Users
  - Tooltip message: For Individual/Clarius Employee contacts, This action isn’t supported. So, remove them from selection.



