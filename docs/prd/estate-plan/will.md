# Will

## Entity

| Field Name                |                  | Description                                                  |
| ------------------------- | ---------------- | ------------------------------------------------------------ |
| Execution Date            |                  | Date input field. Its mandatory field.                       |
| Location of Original Will |                  | Single line free form text input field.                      |
| Last Review Date          |                  | Date input field.                                            |
| Codicil                   |                  | Multi value field. Not applicable for `Add` and `Amend` will. |
|                           | Date             | Date input field.                                            |
|                           | Notes            | Multiline free form text input field.                        |
| Amendments                |                  |                                                              |
|                           | Date             | Date input field                                             |
|                           | Notes            | Multiline free form text input field.                        |
| Executor                  |                  |                                                              |
|                           | First Executor   | Its a mandatory field. <br />Auto-complete dropdown of Contact. |
|                           | Second Executor  | Same as `First Executor`.                                    |
|                           | Third Executor   | Same as `First Executor`.                                    |
| Guardians                 |                  |                                                              |
|                           | First Guardians  | Multi value field. <br />Auto-complete dropdown of Contact.  |
|                           | Second Guardians | Multi value field. <br />Auto-complete dropdown of Contact.  |
| Specific Bequests         |                  | There is two types of `Specific Bequests` available. `Individuals` and `Charities`.  Its multi value field. |
|                           | Individuals      | Applicable for `Individuals`.<br /> Auto-complete dropdown of Contact. Its a mandatory field. When user enter new name, system will create new contact. |
|                           | Charity          | Applicable for `Charity`.<br />Auto-Complete dropdown of `Non-Profit` types company. Its a mandatory field. When user enter new name, system will create new company of type `Non-Profit`. |
|                           | Type             | Selected dropdown. Its values are : `Money` & `Item`.        |
|                           | Gift Amount      | Applicable only when type is `Money`.<br />Amount field. Its mandatory field. Default value is set to `$ 0.00`. |
|                           | Gift Name        | Applicable only when type is `Item`.<br />Single line free form text input field. Its mandatory field. |
|                           | Notes            | Free form text input field.                                  |
| Trusts                    |                  |                                                              |
|                           | Trust Name       | Free form text input field. Its mandatory field.             |
|                           | First Trustee    | Auto complete dropdown of `Contact` and `Company` where type of company is `For-Profit | Professional Services | Legal` and `For-Profit | Professional Services | Banking/Credit`. |
|                           | Second Trustee   | Auto complete dropdown of `Contact` and `Company` where type of company is `For-Profit | Professional Services | Legal` and `For-Profit | Professional Services | Banking/Credit`. |
|                           | Notes            | Free form text inut field.                                   |
| Summary of Estate Plan    |                  | Rich text input editor.                                      |



## Add Will

### System Rule

- Codicil section is not applicable when new `Will` create.
- Do not allow to enter same name in Trust Name field.

### UX Rule

- Show prper message when no records available.
- Show Proper error message while user enter same name in `Trust Name` field.

### UI Rule

Mockup //TODO

- When trust is not available then show `No Trust Available` message.
- When Guardian is not avaialble then show `No First Guardian Available` and `No Second Guardian Avaialble`.
- When specific Bequests is not available then show `No Individuals Avaiable` and `No Charity Available`.
- Show this error message `Client entity with same name already exists` in the Trust name field.



## Edit Will

### System Rule

- Codicil section is avaialble once `Will` is created.
- Can be edited anytime.

### UI Rule

Mockup //TODO



## Amend Will

### System Rule

- When you want to update `Will` and want to maintain its history then `Amend` action should be used.
- System maintain history of each amendment.
- When user perform amend action, all codicils are removed.

### UI Rule

Mockup  //TODO

### Will History

#### UX Rule

- Show proper message while no records available.
- Column Name : `Date` & `Notes`
- Sorting: Descending order of Date.
- Notes column maximum width should be 1000px.
- When Notes is too long it will be shown in multiple line (Never show ellipses)
- On hover of row shows vertmore actions at right side.
- Vertmore action: `Edit`, `Delete`
- On click of Delete, open delete confirmation dialog.
- On click of any row it will open view dialog for that `Will`.

#### UI Rule

Mockup //TODO

- When History is not available then show `No Records Found` message.
- Delete confirmation dialog. See this //TODO



## Delete Will

### System Rule

- Will can be deleted anytime.

### UI Rule

Mockup //TODO



## Browse Will

### UX Rule

- When no records available then show a valid message.
- Column for `Amendment` section : `Date` & `Notes`
- Column for `Codicil Section` : `Date` & `Notes`.
- Sorting order:
  - For `Codicils` : Decending order of Date
  - For `Amendment` : Decending order of Date
  - For `Executor` : Alphabetically Sorting
  - For `Guardians` : Alphabetically Sorting
  - For `Specific Bequests`: `Individuals` and `Charity` both are sorting on alphabetically order of Name.
  - For `Trusts` : Alphabetically sorting of `Trust Name`.
- When Notes is too long it will be shown in multiple line (Never show ellipses)

### UI Rule

Mockup //TODO

- Show trustee 
- 
- When Codicil is not available then show `No Codicil Available` message.
- When trust is not available then show `No Trust Available` message.
- When Guardian is not avaialble then show `No First Guardian Available` and `No Second Guardian Avaialble`.
- When specific Bequests is not available then show `No Individuals Avaiable` and `No Charity Available`.
- When `Summary of Estate plan` is not available then show `No Summary of Estate plan Available` message.

