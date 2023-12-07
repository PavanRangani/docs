# Textual Description

## Overview
- There are many fields in many modules whose purpose is not clear from just the field name. If we show any tooltip with such fields, it will be helpful to Clarius team members. Specially new members. 
- This field descriptions can be hardcoded in code but when Athena admins wants to update it, they need to ask developers and developers need to deploy new code just to update the description. 
- This feature is useful to manage tooltip text of such fields. Athena admin can have controll over such field description. They can update it anytime and application will show updated text in realtime. No code change needed.


## Entity Details
- Description
    - It is a rich text input field.


## Browse Texual Description

### UX Rule
- Shows all the fields grouped by module name
- Modules can be like : `Asset`, `Banking`, `Tax`, `Investment` & `Insurance`
- Athena admin user can't manually add fields. Athena admin will ask developer to add any fieldd under any module
- Investment have 3 fields for now
    - Accredited Investor
    - Qualified Client
    - Qualified Purchaser
- Columns:
    - Field Name
        - It shows name of the field.
    - Descriptions
        - It is a rich text box. 
        - Show `-` when no data available.
- There isn't any specific sorting order under module.
- On hover of any field, shows hover effect and pencil icon at right side of the row.
- On click of pencil icon, opens the edit dialog where user can enter a description of the field.
- When description is blank, it shows blank tooltip on that field.

### UI Rule
- Placeholder message: `No Records Available`
- [See the flow](https://drive.google.com/drive/u/0/folders/17CH61e0DwpvKxWIuhwSRRr8aDlsT9AcY)


## Edit Description

### UX Rule
- Show `Field Name` as a field view.
- Show proper message in the Description until no notes enter.
- There is no separate UI for remove Description. User can remove clear description from edit dialog and toltip will not be shown. 

### UI Rule
- Message: `Enter Description`

## Tooltip on field
- Shows `i` on field [icon](https://drive.google.com/file/d/1cnON9qQIM9lar3QQM7WD_Fc922RMXeHU/view?usp=sharing)
- On click of icon, system opens the tooltip dialog. Shows the description of that field in tooltip dialog. 
- When description is not available, show empty tooltip.
- When tooltip has link and user clicks on link, system will open that link in new page.
- When tooltip is open and user clicks on outer area, tooltip dialog will close.

## Technical Notes
- This feature is implemented such a way that when we want to show tooltip on any field only UI work is required. No server work is required at that time.
- So when the Keith wants to show tooltip for any field, He will give us the field name. UI team will add that new field under the module name and put `i` icon for that field in the application. Just UI Code deployment is required here.
- Now Athena admin user can enter a description. System will store that field description in database. so when user clicks the `i` icon of that field from the application, system will show the description in the tooltip.

