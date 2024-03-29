# Will

## Entity

| Field Name                |                    | Description                                                  |
| ------------------------- | ------------------ | ------------------------------------------------------------ |
| Execution Date            |                    | Date input field. Its mandatory field.                       |
| Location of Original Will |                    | Single line free form text input field.                      |
| Last Review Date          |                    | Date input field.                                            |
| Estate Attorney           |                    | Which attorney drafted the will documents. <br />Auto-complete dropdown of Contact. <br />When user enter new name, system will create new contact. |
| Codicils                  |                    | Multi value field.  Codicil is useful when you want to make some smaller changes (One type of new Will but changes are very small)<br />When new Will is created all existing codicils will be cleared and goes in the Will history. That's why its not applicable for `Add` and `Cretae New` will. |
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
|                           | Type               | Dropdown field. Values are : `Individual`, `Trust `, `Foundation` & `Charity`. Default value is `Individual`. |
|                           | Individual         | Auto-complete dropdown of Contact. Its a mandatory field. When user enter new name, system will create new contact. <br />More than one individual with the same name can be added. |
|                           | Trust              | Auto complete dropdown of  `Active Regular Trust ` for same family & `Active Testamentary Trust` for same individuals.<br />Shows `Testamentary` as a secondary information for`Testamentary Trust`.<br />More than one Trust with the same name can be added. |
|                           | Foundation         | Auto complete dropdown of `Active Foundation` of same family. <br />More than one foundation with the same name can be added. |
|                           | Charity            | Auto-Complete dropdown of `Non-Profit` types company. Its a mandatory field. When user enter new name, system will create new company of type `Non-Profit`.<br />More than one charity with the same name can be added. |
|                           | Type               | Select type dropdown. Its values are : `Cash`. `Stock`, `Property` & `Other`. Default value is `Cash`. |
|                           | Gift Amount        | Amount field. Its mandatory field. Decimal is not allowed. Default value is set to `$ 0`. |
|                           | Notes              | Free form text input field.                                  |
| Summary of Estate Plan    |                    | Rich text input editor.                                      |



## Add Will

### System Rule

- When user add a new Will, that action name is `Add Will`.
- If `Testamentary Trust(s)` is linked in the `Specific Bequest(s)`, system doesn't allow to delete that `Testamentary Trust(s)`.

### UX Rule

- Codicil section is not available in the Add Will.
- When any section has no records available, system shows a proper message.
- For `Testamentry Trust` section,
  - When user enter same name in `Trust Name` field, system show proper error message.
  - In the `Trust Name` dropdown, shows `Active` testamentary trust in Current Will and `Active` & `Inactive` testamentary trust in history Will.
  - On hover of `Testamentary Trust` section, it shows UP & DOWN icon
  - On hover of UP & DOWN icon, shows hover effect.
  - On UP section will move upward, On DOWN section will move downward.
  - UP or DOWN will be disable when movement in respective directions is not possible.
    - Cases:
      - When there is only one trust available on the dialog, both icons will be disable.
      - When there are multiple trusts available.
        - For First trust UP icon will be disabled or Last trust DOWN icon will be disabled.
        - For the intermediate trust, both icons will be enabled.
- When user delete `Testamentary Trust(s)` and if that `Testamentary Trust(s)` linked to the `Specific Bequest(s)`. System shows the confirmation diaog for that.
  - On confirm, both `Testamentary Trust(s)` and `Specific Bequest(s)` will be deleted.
- When user want to remove testamentary trust and hover on close icon, show hover effect.
- Confirm with Keith : `It has been confirmed with Keith that he will never create a Will for the deceased individuals`.

### UI Rule

[Mockup](https://drive.google.com/file/d/1cK3VpDo5ityQyw4tio5otDti4n6nu01k/view?usp=sharing)

- Message when no records available:
  - For Guardian(s) : `First Guardian(s) are not specified` & `Second Guardian(s) are not specified`.
  - Specific Bequest(s) : `No Specific Bequests are specified`.
  - For Testamentary Trust & Second Trustee : `No Testamentary Trusts are specified`  &  `Second Trustee(s) are not specified`.
- Confirmation dialog. [See this](https://drive.google.com/file/d/1d6dnaBaur04Haug3tf4Gi_5Gfrd8fW4c/view?usp=sharing)
- Error message: `Testamentary trust with same name already exists` in the Trust name field.




## Edit Will

### System Rule

- Can be edited anytime.

### UX Rule

- Codicil section is available in the Edit will.
- Under Specific Bequests section, records are primary sorting on order of Individuals, Trusts, Charities and secondary sorting on entity name.
- For Joint, Show legal Entity name in header.

### UI Rule

[Mockup](https://drive.google.com/file/d/1_oFTVkNSON3sq0xbxa0yODY7PyLCI69h/view?usp=sharing)

- Mockup of Joint. [See this](https://drive.google.com/file/d/1ouH9FlyVmcMaPVaCTsVXejwoB-YC3keS/view?usp=sharing)




## Create New Will

### System Rule

- Once the Will is created and then user want to update that Will. So the `Create New` action is used for this update.
- As per business logic for Keith, `Will` never be amended like Trust and IPS. A new `Will` will be made for any change in `Will`.


- When you want to create a new `Will` and want to maintain its history then `Create New` action should be used.
- System maintain history of each changes.
- During create new action, All existing Codicils should be cleared and should be stored with the old version.

### UX Rule

- Codicil section is not available in the Create New will.

### UI Rule

[Mockup](https://drive.google.com/file/d/181T5BRkMRunaPOGe5aURQl4vuX06-960/view?usp=sharing)



## Browse Will History

### UX Rule

- Show proper message while no records available.
- Column Name : `Date` & `Summary`.
  -  `Date` 
     -  Shows date of Execution. 
  -  `Summary` 
     -  Shows summary of Will. 
     -  Summary column will show HTML. It will have a maximum width of 1000px.
- Records will be shown in ascending order of date. Oldest record will be shown at top.
- Notes column maximum width should be 1000px.
- When Notes is too long it will be shown in multiple line (Never show ellipses)
- On hover of row shows vertmore actions at right side.
- Vertmore action: `Edit`, `Delete`
- On click of Delete, open delete confirmation dialog.
- On click of any row it will open view dialog for that `Will`.

### UI Rule

[Mockup](https://drive.google.com/file/d/1SzBnJf3mn2DqiRznWyK3b9aLwpqhT6C_/view?usp=sharing)

- When History is not available then show `No Records Found` message.
- When `Summary` is not available then show `-`.
- View dialog of Will. [See this](https://drive.google.com/file/d/1pJ1kxQSRt5v9D9rY58-caU3NPCenE3s7/view?usp=sharing)
- Delete confirmation dialog. [See this](https://drive.google.com/file/d/1XJymMEUo3AqTJlXhtafXnDWuWNKRmywS/view?usp=sharing)
- For Joint. [See this](https://drive.google.com/file/d/1mHZbjueZVuAuOdKB0pIX0nY9FmXtSzSc/view?usp=sharing)




## Delete Will

### System Rule

- Will can be deleted anytime.

### UX Rule

- Show Delete confirmation dialog.

### UI Rule

[Mockup](https://drive.google.com/file/d/1lbFy74PR9-dt5aVnU526OAU-vJkye67l/view?usp=sharing)



## View Will

### UX Rule

- When any section has no records available, system shows a valid message.
- Column for `Codicils` Section : `Date` & `Notes`.
- For `Codicils` record are sorted in the decending order of date.
- For `Executor`, `Guardian(s)`,  `Testamentary Trust(s)`, `First Trustee(s)`, `Second Trustee(s)` & `Beneficiaries` records are sorted in the alphabetically.
- Under Specific Bequests section, records are shown in order of Individuals, Trusts, Charities.
- Column for `Specific Bequest` section : `Name`, `Gift Type`, `Gift Amount` & `Notes`.
  - Sorting order of `Specific Bequest(s) - Individuals` - Same family individuals are shown first and alphabetical sorted and other family individuals & contacts are shown bottom and alphabetical sorted. 
  - Sorting order of `Specific Bequest(s) - Trusts`, `Specific Bequest(s) - Foundations`  &  `Specific Bequest(s) - Charities`, records are alphabetically sorting on the Name.
- Under `Specific Bequest(s) -Trusts` section for Testamentary Trusts
  - It Shows Testamentary in bracket with Trust name to distinguish it with regular trust
  - It won't be link (like regular trust)
- Show total of `Gift Amount` at the bottom of each section.
- In `Testamentary Trust(s)` section, when trust name is too long it will be shown in multiple line (Never show ellipses).
- When Notes is too long it will be shown in multiple line (Never show ellipses).
- For Joint, show Will of both of the individuals in single page.

### UI Rule

[Mockup](https://drive.google.com/file/d/1PBSlnu3OzKMypdjXk4hbUxqUCDFUE-t9/view?usp=sharing) 

- When no Will available then show `No Will Available` message. [See this](https://drive.google.com/file/d/19tEAG_MJfkeJWEMb3oa-qUd4w9fF_HTm/view?usp=sharing)
- For Codicils -  `No Codicils Available`.
- For Guardian(s) -  `First Guardian(s) are not specified` & `Second Guardian(s) are not specified`.
- Specific Bequest(s) - Individuals: `No Specific Bequests for Individuals are specified`.
- Specific Bequest(s) - Trusts: `No Specific Bequests for Trusts are specified`.
- Specific Bequest(s) - Foundations: `No Specific Bequests for Foundations are specified`.
- Specific Bequest(s) - Charities: `No Specific Bequests for Charities are specified`.
- For Testamentary Trust & Second Trustee : `No Testamentary Trusts are specified`  &  `Second Trustee(s) are not specified`.
- For Summary of Estate plan - `No Summary of Estate plan Available`.
- For Joint view. [See this](https://drive.google.com/file/d/1NhRLVitkj_x4CONbflfqUTftvI67Snt6/view?usp=sharing)




## Download PDF

### UX Rule

- Allows to download PDF file for current Will.
- PDF section and sorting order is the same as the Current Will tab. There are some changes.
  - For `Specific Bequest` section
    - If there isn't any record available in any section, that section won't be shown.
    - Shows proper message when no records available.
- Downloaded file name : `Will of-{Legal Entity name (First+Last)}.pdf`

### UI Rule

[Mockup](https://drive.google.com/file/d/1QdhCAPr-ZDlwi8c2IQwM6eQKerFNVc0r/view?usp=sharing)

- Show pdf icon on the header of the current Will.
- Message for `Specific Bequest` section: `No Specific Bequests are specified`.
- Show `-` for general information.

