# Tax Component Lead
## Overview
- This is just an informative field so that Clarius team can know who is the responsible person for the Tax component of this tax return. There isn’t any logic in application which depends on this field.

## Add/Edit Tax Component Lead

### System Rule
- Each family will have one Clarius user associated as a Tax component lead. Only [CA users](../contact-company/contacts-of-app-users.md#ui-requirement) can be associated as a Tax component lead.
- When Tax component lead is set at the family level, all the open tax returns will have this user set. Existing tax returns of that family which is filed will not have any Tax component lead associated
- When the Tax component user is changed, open tax returns will be updated but filed tax returns will not be updated. 
- When the tax component user is removed, open tax returns will be updated but filed tax returns will not be updated. 
- When any Clarius user’s CA role is removed, the existing family’s tax component field will not have any effect. System will just show one warning.

## UX Rule
- When user changes the Tax Component, the system shows one warning message. 

## UI Rule
- Warning message: `As you changed the Tax Component Lead, open tax return will be updated but the filed tax return won't be updated`
- [See flow](https://drive.google.com/drive/u/0/folders/1tdFxPMko1QVIN57HdDx34PVVAPVw6kH3)


## Shows tax component lead on the family details page

### UX Rule
- In the family details page, shows one field `Tax Component Lead` user.
- It has one pencil icon. On click, opens the tax component edit dialog.
- Pencil icon won’t be shown for the archived family.

### UI Rule
- [See this](https://drive.google.com/file/d/1hqwMHiWiYKVWQin1Rar4CVXPlrYUoK6a/view?usp=sharing)