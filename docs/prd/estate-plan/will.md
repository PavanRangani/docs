# Will

## Entity

| Field Name                |                    | Description                                                  |
| ------------------------- | ------------------ | ------------------------------------------------------------ |
| Execution Date            |                    | Date input field. Its mandatory field.                       |
| Location of Original Will |                    | Single line free form text input field.                      |
| Last Review Date          |                    | Date input field.                                            |
| Estate Attorney           |                    | Which attorney drafted the will documents. <br />Auto-complete dropdown of Contact. <br />When user enter new name, system will create new contact. |
| Codicils                  |                    | Multi value field.  Codicil is useful when you want to make some smaller changes (One type of amendment but changes are very small)<br /><br />When Will is amended all existing codicils will be cleared and goes in the Will history. Thats why its not applicable for `Add` and `Amend` will. |
|                           | Date               | Date input field. Its a mandatory field.                     |
|                           | Notes              | Multiline free form text input field.                        |
| Amendments                |                    |                                                              |
|                           | Date               | Date input field. Its a mandatory field.                     |
|                           | Notes              | Multiline free form text input field.                        |
| Executor(s)               |                    |                                                              |
|                           | First Executor(s)  | Its a multi value and mandatory field. <br />Auto-complete dropdown of Contact. When user enter new name, system will create new contact. |
|                           | Second Executor(s) | Its a multi value field.<br />Auto-complete dropdown of Contact. When user enter new name, system will create new contact. |
|                           | Third Executor(s)  | Its a multi value field.<br />Auto-complete dropdown of Contact. When user enter new name, system will create new contact. |
| Guardian(s)               |                    |                                                              |
|                           | First Guardian(s)  | Multi value field. <br />Auto-complete dropdown of Contact. When user enter new name, system will create new contact. |
|                           | Second Guardian(s) | Multi value field. <br />Auto-complete dropdown of Contact. When user enter new name, system will create new contact. |
| Testamentary Trust(s)     |                    | [See Entity of Testamentary Trust](../estate-plan/testamentary-trust.md#will) |
| Specific Bequest(s)       |                    | A specific bequest is when someone leaves something to a specific person, charity(Non-Profit) or Trust |
|                           | Type               | Dropdown field. Values are : `Individual`, `Trust `, `Charity`. Default value is `Individual`. |
|                           | Individual         | Auto-complete dropdown of Contact. Its a mandatory field. When user enter new name, system will create new contact. |
|                           | Charity            | Auto-Complete dropdown of `Non-Profit` types company. Its a mandatory field. When user enter new name, system will create new company of type `Non-Profit`. |
|                           | Trust              | Auto complete dropdown of  `Active Regular Trust ` for same family & `Active Testamentary Trust` for same individuals.<br />Shows `Testamentary` as a secondary information for`Testamentary Trust`. |
|                           | Type               | Select type dropdown. Its values are : `Money` & `Other`. Default value is `Money`. `Other` type can be used for some known Gift use cases like Item (for e.g Diamond Necklace) or Ownership of any partnership firm. Instead of making separate type for item and ownership we have introduced  `Other` type so that it can be used for broader use cases. |
|                           | Gift Amount        | Applicable only when type is `Money`.<br />Amount field. Its mandatory field. Decimal is not allowed. Default value is set to `$ 0`. |
|                           | Gift Name          | Applicable only when type is `Other`.<br />Single line free form text input field. Its mandatory field. |
|                           | Notes              | Free form text input field.                                  |
| Summary of Estate Plan    |                    | Rich text input editor.                                      |



## Add Will

### System Rule

- If `Testamentary Trust(s)` is linked in the `Specific Bequest(s)`, system doesn't allow to delete that `Testamentary Trust(s)`.

### UX Rule

- Codicil section is not available in the Add Will.
- when any section has no records available, system shows a proper message.
- When user enter same name in `Trust Name` field, system show proper error message.
- In the `Trust Name` dropdown, shows `Active` testamentary trust in Current Will and `Active` & `Inactive` testamentary trust in history Will.
- When user delete `Testamentary Trust(s)` and if that `Testamentary Trust(s)` linked to the `Specific Bequest(s)`. System shows the confirmation diaog for that.
  - On confirm, both `Testamentary Trust(s)` and `Specific Bequest(s)` will be deleted.
- When user want to remove testamentary trust and hover on close icon, show hover effect.
- Confirm with Keith : `It has been confirmed with Keith that he will never create a Will for the deceased individuals`.

### UI Rule

Mockup //TODO

- Message when no records available:
  - For Guardian(s) : `First Guardian(s) are not specified` & `Second Guardian(s) are not specified`.
  - Specific Bequest(s) : `No Specific Bequests are specified`.
  - For Testamentary Trust & Second Trustee : `No Testamentary Trusts are specified`  &  `Second Trustee(s) are not specified`.
- Confirmation dialog. See this //TODO
- Error message: `Testamentary trust with same name already exists` in the Trust name field.



## Edit Will

### System Rule

- Can be edited anytime.

### UX Rule

- Codicil section is available in the Edit will.
- Under Specific Bequests section, records are primary sorting on order of Individuals, Trusts, Charities and secondary sorting on entity name.x

### UI Rule

Mockup //TODO



## Amend Will

### System Rule

- When you want to update `Will` and want to maintain its history then `Amend` action should be used.
- System maintain history of each amendment.
- During Amend action, All existing Codicils should be cleared and should be stored with the old version. So Codicil is also not available during Amend 

### UX Rule

- Codicil section is not available in the Amend will.

### UI Rule

Mockup  //TODO



## Browse Will History

### UX Rule

- Show proper message while no records available.
- Column Name : `Date` & `Notes`.
  -  `Date` 
     -  Shows date of amendment. 
     -  We don't have an amendment date for the initial version, so we will show `Initial version` for the first records.
  -  `Notes` 
     -  Shows note of amendment. When Notes is too long it will be shown in multiple line (Never show ellipses)
     -  We don't have an amendment note for the initial version, so we will show `-` for the first records.
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

- When any section has no records available, system shows a valid message.
- Column for `Amendment` section : `Date` & `Notes`.
- Column for `Codicils` Section : `Date` & `Notes`.
- For `Codicils` record are sorted in the decending order of date.
- For `Executor`, `Guardian(s)`, `Specific Bequest(s) - Individuals`, `Specific Bequest(s) - Trusts`, `Specific Bequest(s) - Charities`,  `Testamentary Trust(s)`, `First Trustee(s)`, `Second Trustee(s)` & `Beneficiaries` records are sorted in the alphabetically.
- In `Testamentary Trust(s)` section, when trust name is too long it will be shown in multiple line (Never show ellipses).
- Under Specific Bequests section, records are shown in order of Individuals, Trusts, Charities.
- Under `Specific Bequest(s) -Trusts` section for Testamentary Trusts
  - it Shows Testamentary in bracket with Trust name to distinguish it with regular trust
  - It won't be link (like regular trust)
- Show total of `Gift` amunt at the bottom of each section.
- When Notes is too long it will be shown in multiple line (Never show ellipses)

### UI Rule

Mockup //TODO

- Allows to download pdf of current Will. See this //TODO
  - Download file name: Will of-{Legal Entity name}.pdf

- When no Will available then show `No Will Available` message.
- For Codicils -  `No Codicils Available`.
- For Guardian(s) -  `First Guardian(s) are not specified` & `Second Guardian(s) are not specified`.
- Specific Bequest(s) : `No Specific Bequests are specified`.
- For Testamentary Trust & Second Trustee : `No Testamentary Trusts are specified`  &  `Second Trustee(s) are not specified`.
- For Summary of Estate plan - `No Summary of Estate plan Available`.
