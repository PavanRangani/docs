# Directives

## Entity

| Field Name                                                   |                        | Description                                                  |
| ------------------------------------------------------------ | ---------------------- | ------------------------------------------------------------ |
| Durable Power of Attorney for Financial Matters              |                        |                                                              |
|                                                              | Execution Date         | Date input field.                                            |
|                                                              | First Executor         | Its a multi value. <br />Auto-complete dropdown of Contact. When user enter new name, system will create new contact. |
|                                                              | Second Executor        | Same as First Executor                                       |
|                                                              | Third Executor         | Same as First Executor                                       |
|                                                              | Effective as of        | Select type dropdown. Values are : `None`  ,`Immediately upon execution` & `Upon incapacity, disability or death`. Default value is `None`. |
| Power of Attorney for Health Care Decisions                  |                        |                                                              |
|                                                              | Execution Date         | Date input field.                                            |
|                                                              | First Executor         | Its a multi value. <br />Auto-complete dropdown of Contact. When user enter new name, system will create new contact. |
|                                                              | Second Executor        | Same as First Executor                                       |
|                                                              | Third Executor         | Same as First Executor                                       |
|                                                              | Effective as of        | Select type dropdown. Values are : `None`  , `Immediately upon execution` & `Upon incapacity or disability`. Default value is `None`. |
| Health Care Directive and Supplement                         |                        |                                                              |
|                                                              | Execution Date         | Date input field.                                            |
|                                                              | Nutrition              | Select type dropdown. Values are : `None`  , `I DO want to have artificially provided nutrition` & `I DO NOT want to have artificially provided nutrition.` Default value is `None`. |
|                                                              | Hydration              | Selected dropdown. Values are : `None`  , `I DO want to have artificially provided hydration` & `I DO NOT want to have artificially provided hydration`. Default value is `None`. |
| Authorization for Disclosure of Protected Health Information |                        |                                                              |
|                                                              | Execution Date         | Date input field.                                            |
|                                                              | Authorized Individuals | Multi value field.<br />Auto-complete dropdown of Contact. When user enter new name, system will create new contact. |



## Add Directives

## System Rule

- First time Add directives dialog will show common add dialog with all four directives.

### UX Rule

- If any of the directives section have data, then `Execution Date` field will be mandatory for that section. Otherwise its not a mandatory.
- Show proper message when no records available.
- If there isn’t any data entered in the add dialog, it doesn’t allow to save. At least one directive data is mandatory. it shows error message on click of add button.

### UI Rule

[Mockup](https://drive.google.com/file/d/1EQLePs9YdVlwOnfNpktN62WRe9MrzxZJ/view?usp=sharing) 

- For Authorized Individual - `No Authorized Individuals Available`.
- First, Second, Third Executor : `First Executor(s) are not specified`, `Second Executor(s) are not specified` & `Third Executor(s) are not specified`.
- Error message: `At least one directive data should be specified`




## Edit Directives

### System Rule

- Each directive section will have their own `Edit` action.

### UX Rule

- Execution date is mandatory in the edit dialog.

### UI Rule

[Durable Power of Attorney for Financial Matters](https://drive.google.com/file/d/15GxB5MODUznXmkPdfiUeGlnXzrgDJ6QQ/view?usp=sharing) 

[Power of Attorney for Health Care Decisions](https://drive.google.com/file/d/15Y5ht-jtEThMD_Fa5sNsvmc_KWfpyZkb/view?usp=sharing)

[Health Care Directive and Supplement](https://drive.google.com/file/d/1HbEokc0ee6H3ZziUslRKVOo-vPqllJgU/view?usp=sharing)

[Authorization for Disclosure of Protected Health Information](https://drive.google.com/file/d/158NEjLdsH5FENTlwOTCqO5ZSm0yuRy4U/view?usp=sharing)




## Create New Directives

### System Rule

- Once the Directives is created and then user want to update that Directives. So the `Create New` action is used for this update.
- Each directives section have their own `Create New` action.


- When you want to create new `Directives` and want to maintain its history then `Create New` action should be used.
- System maintain history of each changes.

### UX Rule

- In `Create New` dialog, `Execution Date` will be reset.
- `Execution Date` is mandatory for Create new.

### UI Rule

[Mockup](https://drive.google.com/file/d/1OQBW0aDrE2pLGYWeiInbvDSXqLfPLP22/view?usp=sharing) 



## Browse Directives History

### UX Rule

- Shows `Directives` history table with four group. One group for each directive.
- Group for directive which doesn’t have any record won’t be shown. 
- Show proper message when no section available.
- Column Name : 
  -  `Date` - Shows date of Execution. 
- Records will be shown in ascending order of date. Oldest record will be shown at top
- On hover of row shows vertmore actions at right side.
  - Vertmore action: `Edit`, `Delete`
- On click of Delete, open delete confirmation dialog.
- On hover of record shows hover effect and on its click opens the view dialog for that Directive.

### UI Rule

[Mockup](https://drive.google.com/file/d/1A8qgvu5MR3vgBl6Fc78JWz5QRYjaNUC3/view?usp=sharing) 

- Message for no history available :  `No Records Found` 
- View dialog of Directives.  [See this](https://drive.google.com/file/d/1cMkNvwndL7wpn8c9VZpEC4Ll8XIL2cvc/view?usp=sharing)




## Delete Directives

### System Rule

- Each section of directives can be deleted anytime.

### UX Rule

- Shows delete confirmation dialog.
- On successful delete shows a toast message

### UI Rule

- Toast message: `Current version of directive {Name of directives section} is deleted successfully`




## View Directives

### UX Rule

- When any Directive section is empty it will show a proper message. For such a directive it won't show Edit icon or vertmore. It will show only the Add icon.
  - On clicking the Add icon, it will open the Add dialog for that directive.
- Show proper message when no directive available.
- On hover of each directives show edit icon. On clicking open edit dialog of that particular directives.
- Each directives have their owns vertmore action
  - Vertmore action are : `Create New` & `Delete`.
  - On click of Create new, opens `Create New` dialog.
  - On click of Delete, opens delete confirmation dialog.
- Authorized individuals are sorted in Alphabetical order.

### UI Rule

[Mockup](https://drive.google.com/file/d/1cMkNvwndL7wpn8c9VZpEC4Ll8XIL2cvc/view?usp=sharing) 

- Empty message for each directives  : `Not Specified`.
- When user select `None` value in dropdown, then show `-` in browse page.
- Message for No directives available :  `No Directives Available`.




## Download PDF

### UX Rule

- Allows to download PDF file for current directives.
- PDF section and sorting order is the same as the current directives tab. There are some changes.
  - Do not show `Amendment` section.
  - If no records available in any of the section of the whole report, show proper message.
- Downloaded file name : `Directives of-{Legal Entity name (First+Last)}.pdf`

### UI Rule

[Mockup](https://drive.google.com/file/d/1kKOXMD4H3uL5SzPD8X2NTRxmC2AM1yWP/view?usp=sharing) 

- Show pdf icon on the header of the current directives.
- Message for section : `Not Specified`.
- Show `-` for general information. (Like Date, Effective as of, Hydration & Nutrition)

