# Directives

## Entity

| Field Name                                                   |                        | Description                                                  |
| ------------------------------------------------------------ | ---------------------- | ------------------------------------------------------------ |
| Last Review Date                                             |                        | Date input field.                                            |
| Amendment                                                    |                        |                                                              |
|                                                              | Date                   | Date input field.                                            |
|                                                              | Notes                  | Multiline free form text input field.                        |
| Durable Power of Attorney for Financial Matters              |                        |                                                              |
|                                                              | Execution Date         | Date input field.                                            |
|                                                              | First Executor         | Auto-complete dropdown of Contact.                           |
|                                                              | Second Executor        | Auto-complete dropdown of Contact.                           |
|                                                              | Third Executor         | Auto-complete dropdown of Contact.                           |
|                                                              | Effective as of        | Selected dropdown. Values are : `None`  ,`Time of execution` & `Upon incapacity, disability, or death`. Default value is `None`. |
| Power of Attorney for Health Care Decisions                  |                        |                                                              |
|                                                              | Execution Date         | Date input field.                                            |
|                                                              | First Executor         | Auto-complete dropdown of Contact.                           |
|                                                              | Second Executor        | Auto-complete dropdown of Contact.                           |
|                                                              | Third Executor         | Auto-complete dropdown of Contact.                           |
|                                                              | Effective as of        | Selected dropdown. Values are : `None`  , `Immediately upon execution` & `Upon incapacity or disability`. Default value is `None`. |
| Health Care Directive and Supplement                         |                        |                                                              |
|                                                              | Execution Date         | Date input field.                                            |
|                                                              | Nutrition              | Selected dropdown. Values are : `None`  , `I DO WANT to have artificially provided nutrition` & `I DO NOT WANT to  have artificially provided nutrition.` Default value is `None`. |
|                                                              | Hydration              | Selected dropdown. Values are : `None`  , `I DO WANT to have artificially provided hydration` & `I DO NOT WANT to  have artificially provided hydration`. Default value is `None`. |
| Authorization for Disclosure of Protected Health Information |                        |                                                              |
|                                                              | Execution Date         | Date input field.                                            |
|                                                              | Authorized Individuals | Multi value field.<br /> Always show at least one person. Autocomplete dropdown of Contact. |



## Add Directives

### System Rule

- 

### UI Rule

Mockup //TODO



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

### Directives History

#### UX Rule

- Show proper message while no records available.
- Column Name : `Date` & `Notes`
- Sorting: Descending order of Date.
- Notes column maximum width should be 1000px.
- When Notes is too long it will be shown in multiple line (Never show ellipses)
- On hover of row shows vertmore actions at right side.
- Vertmore action: `Edit`, `Delete`
- On click of Delete, open delete confirmation dialog.
- On click of any row it will open view dialog for that `Directives`.

#### UI Rule

Mockup //TODO

- When History is not available then show `No Records Found` message.
- When `Notes` is not available then show `-`.
- Delete confirmation dialog. See this //TODO



## Delete Directives

### System Rule

- Directives can be deleted anytime.

### UI Rule

Mockup //TODO



## Browse Directives

### UX Rule

- Column for `Amendment` section : `Date` & `Notes`
  - Sorting order: Descending order of `Date`.
- Authorized individuals are sorted in Alphabetical order.

### UI Rule

- When user select `None` value in dropdown, then show `-` in browse page.
- If records is not available then show `-`.

