# Directives

## Entity

| Field Name                                                   |                        | Description                                                  |
| ------------------------------------------------------------ | ---------------------- | ------------------------------------------------------------ |
| Last Review Date                                             |                        | Date input field.                                            |
| Amendment                                                    |                        |                                                              |
|                                                              | Date                   | Date input field. Its mandatory field.                       |
|                                                              | Notes                  | Multiline free form text input field.                        |
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
|                                                              | Nutrition              | Select type dropdown. Values are : `None`  , `I DO WANT to have artificially provided nutrition` & `I DO NOT WANT to have artificially provided nutrition.` Default value is `None`. |
|                                                              | Hydration              | Selected dropdown. Values are : `None`  , `I DO WANT to have artificially provided hydration` & `I DO NOT WANT to have artificially provided hydration`. Default value is `None`. |
| Authorization for Disclosure of Protected Health Information |                        |                                                              |
|                                                              | Execution Date         | Date input field.                                            |
|                                                              | Authorized Individuals | Multi value field.<br />Auto-complete dropdown of Contact. When user enter new name, system will create new contact. |



## Add Directives

### UX Rule

- If any of the directives section have data, then `Execution Date` field will be mandatory for that section. Otherwise its not a mandatory.
- Show proper message when no records available.

### UI Rule

Mockup //TODO

- For Authorized Individual - `No Authorized Individuals Available`.
- First, Second, Third Executor : `First Executor(s) are not specified`, `Second Executor(s) are not specified` & `Third Executor(s) are not specified`.



## Edit Directives

### System Rule

- Can be edited anytime.

### UI Rule

Mockup //TODO



## Amend Directives

### System Rule

- When you want to update `Directives` and want to maintain its history then `Amend` action should be used.
- System maintain history of each amendment.

### UI Rule

Mockup  //TODO



## Browse Directives History

### UX Rule

- Show proper message while no records available.
- Column Name : `Date` & `Notes`.
  -  `Date` 
     -  Shows date of amendment. 
     -  We don't have an amendment date for the initial version, so we will show `Initial version` for the first records.
  -  `Notes` 
     - Shows note of amendment. When Notes is too long it will be shown in multiple line (Never show ellipses)
     - We don't have an amendment note for the initial version, so we will show `-` for the first records.
- Records will be shown in ascending order of date. Oldest record will be shown at top
- Notes column maximum width should be 1000px.
- When Notes is too long it will be shown in multiple line (Never show ellipses)
- On hover of row shows vertmore actions at right side.
- Vertmore action: `Edit`, `Delete`
- On click of Delete, open delete confirmation dialog.
- On click of any row it will open view dialog for that `Directives`.

### UI Rule

Mockup //TODO

- When History is not available then show `No Records Found` message.
- When `Notes` is not available then show `-`.
- View dialog of Directives. //TODO
- Delete confirmation dialog. See this //TODO



## Delete Directives

### System Rule

- Directives can be deleted anytime.

### UX Rule

- Shows delete confirmation dialog.

### UI Rule

Mockup //TODO



## View Directives

### UX Rule

- Column for `Amendment` section : `Date` & `Notes`
- Authorized individuals are sorted in Alphabetical order.
- 

### UI Rule

- Allows to download pdf of current Directives. See this //TODO
  - Download file name: Directives of-{Legal Entity name}.pdf

- When user select `None` value in dropdown, then show `-` in browse page.
- If records is not available then show `-`.
- When no directives available then show `No Directives Available` message.
