# Will

## Entity

| Field Name                |                  | Description                                                  |
| ------------------------- | ---------------- | ------------------------------------------------------------ |
| Execution Date            |                  | Date input field. Its mandatory field.                       |
| Location of Original Will |                  | Single line free form text input field.                      |
| Last Review Date          |                  | Date input field.                                            |
| Estate Attorney           |                  | Auto-complete dropdown of Contact. When user enter new name, system will create new contact. |
| Codicil                   |                  | Multi value field. Not applicable for `Add` and `Amend` will. |
|                           | Date             | Date input field. Its a mandatory field.                     |
|                           | Notes            | Multiline free form text input field.                        |
| Amendments                |                  |                                                              |
|                           | Date             | Date input field. Its a mandatory field.                     |
|                           | Notes            | Multiline free form text input field.                        |
| Executor                  |                  |                                                              |
|                           | First Executor   | Its a mandatory field. <br />Auto-complete dropdown of Contact. When user enter new name, system will create new contact. |
|                           | Second Executor  | Auto-complete dropdown of Contact. When user enter new name, system will create new contact. |
|                           | Third Executor   | Auto-complete dropdown of Contact. When user enter new name, system will create new contact. |
| Guardians                 |                  |                                                              |
|                           | First Guardians  | Multi value field. <br />Auto-complete dropdown of Contact. When user enter new name, system will create new contact. |
|                           | Second Guardians | Multi value field. <br />Auto-complete dropdown of Contact. When user enter new name, system will create new contact. |
| Specific Bequests         |                  | There is two types of `Specific Bequests` available. `Individuals` and `Charities`.  Its multi value field. |
|                           | Individual       | Applicable for `Individuals` types.<br />Auto-complete dropdown of Contact. Its a mandatory field. When user enter new name, system will create new contact. |
|                           | Charity          | Applicable for `Charities` types.<br />Auto-Complete dropdown of `Non-Profit` types company. Its a mandatory field. When user enter new name, system will create new company of type `Non-Profit`. |
|                           | Type             | Selected dropdown. Its values are : `Money` & `Item`.        |
|                           | Gift Amount      | Applicable only when type is `Money`.<br />Amount field. Its mandatory field. Default value is set to `$ 0.00`. |
|                           | Gift Name        | Applicable only when type is `Item`.<br />Single line free form text input field. Its mandatory field. |
|                           | Notes            | Free form text input field.                                  |
| Testamentary Trusts       |                  |                                                              |
|                           | Trust            | sequence number of the trusts                                |
|                           | Trust Name       | Dropdown field. It shows all the testamentary trusts of Individual's family.<br />When user enter new name in `Trust Name` field, system will create new Testamentary trust.<br />[See more details](#logic-of-testamentary-trust-section) |
|                           | First Trustee    | Multivalue field. Atleast one records always available.<br />Auto complete dropdown of `Contact` and `Company` where type of company is `For-Profit | Professional Services | Legal` and `For-Profit | Professional Services | Banking/Credit`. |
|                           | Second Trustee   | Multivalue field.<br />Auto complete dropdown of `Contact` and `Company` where type of company is `For-Profit | Professional Services | Legal` and `For-Profit | Professional Services | Banking/Credit`. |
|                           | Beneficiary      | Multivalue field. Atleast one records always available.<br />Allows to select contact, All Client Entity and company where type of company is `Non-Profit`. <br />In percentage decimal is not allowed. Allows to enter text (Name directly) also. This will not create contact but it will remain only text. Its useful when you want to add name of the person which is not contact or Individual (for e.g. Grandchildren) |
|                           | Notes            | Free form text inut field.                                   |
| Summary of Estate Plan    |                  | Rich text input editor.                                      |



## Add Will

### System Rule

- Codicil section is not applicable when new `Will` create.
- Do not allow to enter same name in Trust Name field.

### UX Rule

- Show prper message when no records available.
- When user enter same name in `Trust Name` field, system show proper error message.
- When user hover any of trust section, show hover effect.
- Confirm with Keith : `Keith confirm that there is no any use case to enter Will data if deceased individuals`.

### UI Rule

Mockup //TODO

- Message for no records available:
  - For Guardian : `No First Guardian Available` & `No Second Guardian Avaialble`.
  - Specific Bequests : `No Individuals Avaiable` & `No Charity Available`.
  - For Trust & Second Trustee : `No Trust Available`  &  `No Second Trustee(s) Available`.
- Show this error message `Testamentary trust with same name already exists` in the Trust name field.



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



## Browse Will History

### UX Rule

- Show proper message while no records available.
- Column Name : `Date` & `Notes`.
  -  `Date` shows date of amendment. First date of history always show `Execution Date` .
  - `Notes` shows note of amendment. first notes of history always show `-`.
- Records will be shown in ascending order of date. Oldest record will be shown at top
- Notes column maximum width should be 1000px.
- When Notes is too long it will be shown in multiple line (Never show ellipses)
- On hover of row shows vertmore actions at right side.
- Vertmore action: `Edit`, `Delete`
- On click of Delete, open delete confirmation dialog.
- On click of any row it will open view dialog for that `Will`.

### UI Rule

Mockup //TODO

- When History is not available then show `No Records Found` message.
- Delete confirmation dialog. See this //TODO



## Delete Will

### System Rule

- Will can be deleted anytime.

### UX Rule

- Show Delete confirmation dialog.

### UI Rule

Mockup //TODO



## View Will

### UX Rule

- When no records available then show a valid message.
- Column for `Amendment` section : `Date` & `Notes`
- Column for `Codicil Section` : `Date` & `Notes`.
- For `Codicils, Amendment` record are sorted in the decending order of date.
- For `Executor, Guardians, Specific Bequest - Individuals, Specific Bequest - Charities, Trusts ` record are sorted in the alphabetical order.
- For `First Trustee`, `Second Trustee` & `Beneficiaries` records are sorted in the alphabetically.
- When Notes is too long it will be shown in multiple line (Never show ellipses)

### UI Rule

Mockup //TODO

- For Codicil -  `No Codicil Available`.
- For Trust - `No Trust Available` .
- For Guardian - `No First Guardian Available` & `No Second Guardian Avaialble`.
- For Specific Bequests - `No Individuals Avaiable` & `No Charity Available`.
- For Summary of Estate plan - `No Summary of Estate plan Available` .





### Logic of Testamentary trust section

- When user add a new will, show only active (Current Will) testamantoty trust and opens any history will, show both active or inactive (Current & Will History) Testamentary trust in the Trust name dropdown.

- When Testamentary trust is not linked with any of the Will, that testamentary trust is auto delete.

- When the user selects any existing testamantary trust and makes any changes to it. So the existing records of that testamantary trust will also be updated.

- Do not allowed to enter same name while that trust is available in Will history. in this case system show error.

- One testamentary trust is available in current Will and same trust is also available in Will history, that means this trust is active `Testamentary trust`.

- Individuals delete is not possible while that individual is added as a first, second and beneficiaries in the Testamantory trust.

  ​	 