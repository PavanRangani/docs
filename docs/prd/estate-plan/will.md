# Will

## Entity

| Field Name                |                  | Description                                                  |
| ------------------------- | ---------------- | ------------------------------------------------------------ |
| Execution Date            |                  | Date input field. Its mandatory field.                       |
| Location of Original Will |                  | Single line free form text input field.                      |
| Last Review Date          |                  | Date input field.                                            |
| Estate Attorney           |                  | Which attorney drafted the will documents. <br />Auto-complete dropdown of Contact. <br />When user enter new name, system will create new contact. |
| Codicil                   |                  | Multi value field.  Codicil is useful when you want to make some smaller changes (One type of amendment but changes are very small)<br /><br />When Will is amended all existing codicils will be cleared and goes in the Will history. Thats why its not applicable for `Add` and `Amend` will. |
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
| Testamentary Trusts       |                  | [See Entity of Testamentary Trust](../estate-plan/testamentary-trust.md#will) |
| Specific Bequests         |                  | A specific bequest is when someone leaves something to a specific person, charity(Non-Profit) or Trust |
|                           | Type             | Dropdown field. Values are : `Individual`, `Trust `, `Charities`. Default value is `Individual`. |
|                           | Individual       | Applicable for `Individual` types.<br />Auto-complete dropdown of Contact. Its a mandatory field. When user enter new name, system will create new contact. |
|                           | Charity          | Applicable for `Charities` types.<br />Auto-Complete dropdown of `Non-Profit` types company. Its a mandatory field. When user enter new name, system will create new company of type `Non-Profit`. |
|                           | Trust            | Applicable for `Trust` types.<br />Auto complete dropdown of  `Active Regular Trust ` for same family & `Active Testamentary Trust` for same individuals.<br />Shows `Testamentary` as a secondary information for`Testamentary Trust`. |
|                           | Type             | Selected dropdown. Its values are : `Money` & `Other`. Default value is `Money`. `Other` type can be used for some known Gift usecases like Item (for e.g Diamong Necklace) or Ownership of any partnership firm. Instead of making separate type for item and ownership we have introduced  `Other` type so that it can be used for broader usecases. |
|                           | Gift Amount      | Applicable only when type is `Money`.<br />Amount field. Its mandatory field. Default value is set to `$ 0.00`. |
|                           | Gift Name        | Applicable only when type is `Other`.<br />Single line free form text input field. Its mandatory field. |
|                           | Notes            | Free form text input field.                                  |
| Summary of Estate Plan    |                  | Rich text input editor.                                      |



## Add Will

### System Rule

- If `Testamentary Trust` is linked in the `Specific Bequest`, system doesn't allow to delete that `Testamentary Trust`.

### UX Rule

- Codicil section is not available in the Add Will.
- when any section has no records available, system shows a proper message.
- When user enter same name in `Trust Name` field, system show proper error message.
- In the `Trust Name` dropdown, shows `Active` testamentary trust in Current Will and `Active` & `Inactive` testamentary trust in history Will.
- When user hover any of trust section, show hover effect.
- When user delete `Testamentary Trust` and if that `Testamentary Trust` linked to the `Specific Bequest`. System shows the confirmation diaog for that.
  - On confirm, both `Testamentary Trust` and `Specific Bequest` will be deleted.
- Confirm with Keith : `It has been confirmed with Keith that he will never create a Will for the deceased individuals`.

### UI Rule

Mockup //TODO

- Message when no records available:
  - For Guardian : `No First Guardians Available` & `No Second Guardians Avaialble`.
  - Specific Bequests : `No Individuals Avaiable` & `No Charities Available`.
  - For Trust & Second Trustee : `No Trusts Available`  &  `No Second Trustee(s) Available`.
- Confermation dialog. See this //TODO
- Error message: `Testamentary trust with same name already exists` in the Trust name field.



## Edit Will

### System Rule

- Can be edited anytime.

### UX Rule

- Codicil section is available in the Edit will.
- In Specific Bequest, records are primary sorting on legal entity type of `Individual`, `Trust` & `Partnership` and secondary sorting of name.

### UI Rule

Mockup //TODO



## Amend Will

### System Rule

- When you want to update `Will` and want to maintain its history then `Amend` action should be used.
- System maintain history of each amendment.
- During Amend action, All existing Codicils should be cleared and should be stored with the old version. So Codicil is also not available during Amend 

### UX Rule

- Codicil section is not available in the Edit will.

### UI Rule

Mockup  //TODO



## Browse Will History

### UX Rule

- Show proper message while no records available.
- Column Name : `Date` & `Notes`.
  -  `Date ` - Shows date of amendment. First date of history always show `Execution Date` .
  - `Notes`- Shows note of amendment. first notes of history always show `-`.
- Records will be shown in ascending order of date. Oldest record will be shown at top.
- Notes column maximum width should be 1000px.
- When Notes is too long it will be shown in multiple line (Never show ellipses)
- On hover of row shows vertmore actions at right side.
- Vertmore action: `Edit`, `Delete`
- On click of Delete, open delete confirmation dialog.
- On click of any row it will open view dialog for that `Will`.

### UI Rule

Mockup //TODO

- When History is not available then show `No Records Found` message.
- When `Notes` is not available then show `-`.
- View dialog of Will. //TODO
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

- when any section has no records available, system shows a valid message.
- Column for `Amendment` section : `Date` & `Notes`
- Column for `Codicil Section` : `Date` & `Notes`.
- For `Codicils, Amendment` record are sorted in the decending order of date.
- For `Executor`, `Guardians`, `Specific Bequest - Individuals`, `Specific Bequest - Trusts`, `Specific Bequest - Charities`,  `Testamentary Trusts `, `First Trustee`, `Second Trustee` & `Beneficiaries` records are sorted in the alphabetically.
- Under Specific Bequests section, records are shown in order of Individuals, Trusts, Charities
- Under `Specific Bequest -Trusts` section for Testamentary Trusts
  - it Shows Testamentary in bracket with Trust name to distinguish it with regular trust
  - It won't be link (like regular trust)
- When Notes is too long it will be shown in multiple line (Never show ellipses)

### UI Rule

Mockup //TODO

- For Codicil -  `No Codicil Available`.
- For Trust - `No Trust Available` .
- For Guardian - `No First Guardian Available` & `No Second Guardian Avaialble`.
- For Specific Bequests - `No Individuals Avaiable` & `No Charities Available` & `No Trusts Available`.
- For Summary of Estate plan - `No Summary of Estate plan Available` .



​	 