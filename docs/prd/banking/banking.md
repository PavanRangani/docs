# Banking

## Overview

- Each Legal entity can have multiple bank accounts or credit cards
- These bank accounts are tracked as Banking in this application.

## System Requirement

- There are total of 16 types of banking.
- Supported actions: `Create`, `Edit`, `Delete` and `Close`.

### Types

- There are 3 types of Banking accounts available: `Funding Account`, `Bank Accounts` & `Loan Facilities`
  - [Funding Accounts](./funding-account.md)

  - **Bank Accounts**
    - Checking
    - Credit Card
    - Savings

  - **Loan Facilities**
    - Asset Receivable Line
    - Asset Based LOC
    - Asset-Secured loan
    - Auto Loan
    - Equipment Line
    - Home Equity LOC
    - Lease
    - Loan
    - Working Capital LOC
    - Stock-Secured LOC
    - Unsecured LOC
    - Mortgage Adjustable Rate
    - Mortgage Fixed Rate 


### Entity

#### Common fields of Bank Accounts and Loan Facilities

- Each type has some common field and some type specific field.

| Field name          | Description                                                  |
| ------------------- | ------------------------------------------------------------ |
| Account Nickname(*) | It's mandatory field. Free form text input field.            |
| Account Number(*)   | Applicable to all types. Free form text input field. For `Funding Account`, Allows to enter 4 digits. |
| Bank / Company(*)   | Applicable to all types except `Funding Account`. Auto-complete dropdown of all types of company and client entities.<br />If a company has a stock symbol, show it in the bracket of the company. |
| Notes               | Free form multiline text field.                              |



#### Type Specific fields: Bank Accounts


| Type name                                                 | Field name                 | Description                                                  |
| :-------------------------------------------------------- | -------------------------- | ------------------------------------------------------------ |
| **Checking**                                              |                            |                                                              |
|                                                           | Wire Instruction           | Simple notes here                                            |
|                                                           | Authorised Signers         | Multiple can be selected. Contact auto-complete.             |
|                                                           | Bill pay                   | True or False (Checkbox). Default it is False.               |
|                                                           | Custody Account            | True or False (Checkbox). Default it is False.               |
|                                                           | EFTPS Pin                  | Applicable only when EFTPS switch is ON. Mandatory and Number input field. Only 4 digits are allowed. |
|                                                           | Enrollment Number          | Applicable only when EFTPS switch is ON. Mandatory and Number input field. Only 18 digits are allowed. |
|                                                           | Tax ID Entry               | Applicable only when the `EFTPS` switch is ON. It's a mandatory field. <br />It is a disabled field for all entities other than Joint. It is shown the entity name where this funding account is added. - For Joint, it is a dropdown of Individual of the Joint. User can select any one individual. |
|                                                           | Tax ID Number              | Applicable only when the `EFTPS` switch is ON. It's a mandatory field. <br />If an entity is an Individual, show the `Individual SSN` number. <br />If an entity is Partnership or Trust, it shows either EIN or SSN number. <br />If an entity is Foundation or Estate, it shows the EIN number. <br />For DAF type foundation, it shows the EIN number of the selected organization group. |
| **Credit Card**                                           |                            |                                                              |
|                                                           | Maturity date              | Date Input                                                   |
|                                                           | Custody Account            | True or False (Checkbox)                                     |
| **Savings**                                               |                            |                                                              |
|                                                           | Custody Account            | True or False (Checkbox)                                     |
|                                                           | Wire Instruction           | Simple notes here                                            |
|                                                           | Authorised signers         | Multiple can be selected. Contact auto-complete.             |



#### Type Specific fields: Loan Facilities


| Type name                                                 | Field name                 | Description                                                  |
| :-------------------------------------------------------- | -------------------------- | ------------------------------------------------------------ |
| **Asset Receivable Line**                                 |                            |                                                              |
|                                                           | Asset                      | Shows all assets (Current or Disposed) of current legal entity. Transferred assets won’t be available. |
|                                                           | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                           | Loan fee                   | Default value is $0. Decimal is not allowed.                 |
|                                                           | Int. Rate %                | Two decimal digits allowed. Value must not be greater than 100.00%. |
|                                                           | Payment frequency          | Possible values are `Monthly, Quarterly, Annual`             |
|                                                           | Rate type                  | Possible values are `Fixed, Variable`                        |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Maturity date              | Date Input                                                   |
|                                                           | Term (months)              | Number input. Decimal is not allowed.                        |
|                                                           | Guarantor                  | Contact auto complete.                                       |
|                                                           | Authorised signers         | Contact auto complete. Multiple can be selected.             |
| **Asset Based LOC**                                       |                            |                                                              |
|                                                           | Asset                      | Shows all assets (Current or Disposed) of current legal entity. Transferred assets won’t be available. |
|                                                           | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                           | Loan fee                   | Default value is $0. Decimal is not allowed.                 |
|                                                           | Int. Rate %                | Two decimal digits allowed. Value must not be greater than 100.00%. |
|                                                           | Payment frequency          | Possible values are `Monthly, Quarterly, Annual`             |
|                                                           | Rate type                  | Possible values are `Fixed, Variable`                        |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Maturity date              | Date Input                                                   |
|                                                           | Term (months)              | Number input. Decimal is not allowed.                        |
|                                                           | Guarantor                  | Contact auto complete.                                      |
|                                                           | Authorised Signers         | Multiple can be selected. Contact auto complete.             |
| **Asset-Secured Loan**                                    |                            |                                                              |
|                                                           | Asset                      | Shows all assets (Current or Disposed) of current legal entity. Transferred assets won’t be available. |
|                                                           | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                           | Loan fee                   | Default value is $0. Decimal is not allowed.                 |
|                                                           | Int. Rate %                | Two decimal digits allowed. Value must not be greater than 100.00%. |
|                                                           | Payment frequency          | Possible values are `Monthly, Quarterly, Annual`             |
|                                                           | Rate type                  | Possible values are `Fixed, Variable`                        |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Maturity date              | Date Input                                                   |
|                                                           | Term (months)              | Number input. Decimal is not allowed.                        |
|                                                           | Guarantor                  | Contact auto complete..                                      |
|                                                           | Authorised Signers         | Multiple can be selected. Contact auto complete.             |
| **Auto Loan**                                             |                            |                                                              |
|                                                           | Asset                      | Shows all assets (Current or Disposed) of current legal entity. Transferred asset won’t be available. |
|                                                           | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                           | Loan fee                   | Default value is $0. Decimal is not allowed.                 |
|                                                           | Int. Rate %                | Two decimal digit allowed. Value must not be greater than 100.00%. |
|                                                           | Payment frequency          | Possible values are `Monthly, Quarterly, Annual`             |
|                                                           | Rate type                  | Possible values are `Fixed, Variable`                        |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Maturity date              | Date Input                                                   |
|                                                           | Term (months)              | Number input. Decimal is not allowed.                        |
|                                                           | Guarantor                  | Contact auto complete..                                      |
| **Equipment Line**                                        |                            |                                                              |
|                                                           | Asset                      | Shows all assets (Current or Disposed) of current legal entity. Transferred asset won’t be available. |
|                                                           | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                           | Loan fee                   | Default value is $0. Decimal is not allowed.                 |
|                                                           | Int. Rate %                | Two decimal digit allowed. Value must not be greater than 100.00%. |
|                                                           | Payment frequency          | Possible values are `Monthly, Quarterly, Annual`             |
|                                                           | Rate type                  | Possible values are `Fixed, Variable`                        |
|                                                           | Maturity date              | Date Input                                                   |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Term (months)              | Number input. Decimal is not allowed.                        |
|                                                           | Guarantor                  | Contact auto complete..                                      |
|                                                           | Revolving                  | Users can select if required.                                |
|                                                           | Authorised Signers         | Multiple can be selected. Contact auto complete.             |
| **Home Equity LOC**                                       |                            |                                                              |
|                                                           | Asset                      | Shows all assets (Current or Disposed) of current legal entity. Transferred asset won’t be available. |
|                                                           | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                           | Loan fee                   | Default value is $0. Decimal is not allowed.                 |
|                                                           | Payment frequency          | Possible values are `Monthly, Quarterly, Annual`             |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Maturity date              | Date Input                                                   |
|                                                           | Term (months)              | Number input. Decimal is not allowed.                        |
|                                                           | Guarantor                  | Contact auto complete..                                      |
|                                                           | Authorised Signers         | Multiple can be selected. Contact auto complete.             |
| **Lease**                                                 |                            |                                                              |
|                                                           | Asset                      | Shows all assets (Current or Disposed) of current legal entity. Transferred asset won’t be available. |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Int. Rate %                | Two decimal digit allowed. Value must not be greater than 100.00%. |
|                                                           | Term (months)              | Number input. Decimal is not allowed.                        |
|                                                           | Maturity Date              |                                                              |
|                                                           | Guarantor                  | Contact auto complete.                                       |
| **Loan**                                                  |                            |                                                              |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Maturity date              | Date Input                                                   |
|                                                           | Int. Rate %                | Two decimal digit allowed. Value must not be greater than 100.00%. |
|                                                           | Term (months)              | Number input. Decimal is not allowed.                        |
|                                                           | Guarantor                  | Contact auto complete.                                       |
|                                                           | Recipient                  | `Recipient` can be auto-complete dropdown of company or contact. Default `Contact` is selected. Its not mandatory. <br />If user selects Company, then all types of company will come except client-entity. |
| **Working Capital LOC, Stock-Secured LOC, Unsecured LOC** |                            | For types `Stock-secured LOC` , `Unsecured LOC` and `Working capital LOC` following fields are same. |
|                                                           | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                           | Loan fee                   | Default value is $0. Decimal is not allowed.                 |
|                                                           | Int. Rate %                | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                           | Payment frequency          | Possible values are `Monthly, Quarterly, Annual`             |
|                                                           | Rate type                  | Possible values are `Fixed, Variable`                        |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Maturity date              | Date Input                                                   |
|                                                           | Term (months)              | Number input. Decimal is not allowed.                        |
|                                                           | Guarantor                  | Contact auto complete..                                      |
|                                                           | Revolving                  | Users can select if required.                                |
|                                                           | Authorised Signers         | Multiple can be selected. Contact auto complete.             |
| **Mortgage Adjustable Rate**                              |                            |                                                              |
|                                                           | Asset                      | Shows all assets (Current or Disposed) of current legal entity. Transferred asset won’t be available. |
|                                                           | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                           | Initial Rate %             | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                           | Max Potential rate         | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                           | Initial loan-to-value      | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                           | Appraised value            | Default value is $0. Decimal is not allowed.                 |
|                                                           | Appraisal date             | Date Input                                                   |
|                                                           | Rate Adjustment Frequency  | Values should be entered in between 0 to 100. Decimal is not allowed. |
|                                                           | Max Annual Rate Adjustment | Numbers input form. Values should be entered in between 0 to 100. Decimal is allowed. |
|                                                           | Rate Adjustment date       | Date input                                                   |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Term (months)              | Number input. Decimal is not allowed.                        |
|                                                           | Guarantor                  | Contact auto complete..                                      |
| **Mortgage Fixed Rate**                                   |                            |                                                              |
|                                                           | Asset                      | Shows all assets (Current or Disposed) of current legal entity. Transferred asset won’t be available. |
|                                                           | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                           | Int. Rate %                | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                           | Initial loan-to-value      | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                           | Appraised value            | Default value is $0. Decimal is not allowed.                 |
|                                                           | Appraisal date             | Date Input                                                   |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Maturity date              | Date Input                                                   |
|                                                           | Term (months)              | Number input. Decimal is not allowed.                        |
|                                                           | Guarantor                  | Contact auto complete..                                      |

### Edit
- Only active accounts can be edited anytime. Type can not be changed.
- For `Funding Acconts`, when account name is changed, system will auto update the assocaited funding account in the wire instructions.
**Known Case**
- Even if EFTPS of a Funding Account or Checking account has been added to a tax return, the user can turn OFF the EFTPS switch for that account. In this case, system won't remove the details of EFTPS from the existing tax return. It will remain as it is.


### Delete
- Active or Disposed both accounts can be deleted any time. On click opens delete confirmation dialog.
- When `Funding Account` or `Checking` account is linked to any LP wire instruction, funding account can't be deleted. For this, shows delete not possible dialog.
- When any `Funding Account` is linked to task, system shows a proper message in the delete confirmation dialog.
- If the user selects the funding account in multi select which is used in the task, the system won’t allow it to delete it. It shows the delete not possible dialog. 
- If bank account is linked as `EFTPS` with any `Tax return`, delete is not allowed
- Same way if Bank account is linked with any Insurance, delete is not allowed

#### UI Requirement

- Delete confirmation dialog. [See this](https://drive.google.com/file/d/1ot-VY8v-MZVblBfMUHxbDSpng6cqm78l/view?usp=sharing)
- When delete is possible shows normal delete confirmation dialog
- When delete is not possible shows Delete not possible dialog with its details of relation
- Delete not possible dialog for Checking type or Saving type when EFTPS is added to any tax return [See this](https://drive.google.com/file/d/1w8_ROOB-EC68pXdX8NchgKIg9A7jULKK/view?usp=share_link)
- If banking is added in funding accont, shows delete not possible dialog. [See this](https://drive.google.com/file/d/1xjTDAV4N5z6aMgznPuRg3hEbHK_FZVid/view?usp=drive_link)
- During Multi delete, When one of the selected Bank account is referenced anywhere, then we simply deny the action. User need to manually delete individual Bank account. .
- Delete confirmation dialog for Funding account when it is linked to task. [See this](https://drive.google.com/file/d/1E4URgKuo6nhK0jXFkD8TiMXUbH7vGGog/view?usp=share_link)
- Delete not possible dialog for multi select. [See this](https://drive.google.com/file/d/18HoVB5kLB9rL-k-kwZ37N1qhUpoJFW-l/view?usp=share_link)



### Dispose

- Only active funding accounts can be disposed
- System ask for `Disposed on`, `Termination fee` and `Notes`. `Disposed on` field is mandatory.
- Show all disposed banking in `DISPOSED` tab
- Shows tag for dispose banking.

#### UI Requirement

- Once the account is disposed then it moves from the `Active` tab to `Disposed` tab.
[Mockup](https://drive.google.com/file/d/12OHn_D4Fuut3tcf_XHyZfQpCpZbCoI54/view?usp=sharing)

- Tag for Disposed Banking. [See this](https://drive.google.com/file/d/1vukOl9fSWtRIkNnj-uR86ac4XDsWPf4l/view?usp=sharing)

### Restore

- Only `Disposed` banking can be restored.
- If an asset of the banking is transferred to another Legal entity. in that case Restore is not possible. 
- Show toast message of success on action of `Restore`.

#### UI Rule

- Toast message is: `Restored Successfully`.
- [Restore not possible](https://drive.google.com/file/d/1qVCW0a9p63huaQLhSV_z54_7hm3J2Gl4/view) dialog


### View Banking
- `Bank/Company` & `Asset` & `Authorized Signers` & `Guarantor` are linked. On click, opens the view dialog. 
- Shows `Disposed` tag for the dispose account. 
- user can perform action from view dialog
  - For Active: Edit, Dispose, Delete
  - For Dispose: Delete, Restore
- For `Checking` type, shows `EFTPS Details` with `Enrollment Number`, `EFTPS Pin`, `Tax ID Entity` & `Tax ID Number`
- `Bill Pay` & `Custody` section is applicable only for Credit Card, Checking & Savings type bank account.



### Download PDF

#### UX Rule

- Show PDF icon on the header of all tabs. On click, the pdf file will be downloaded.
- PDF icon won't be applicable when the tab has no records available.

#### PDF File

- File name: 
  - Active tab: `banking-of-{legal entity name}.pdf`
  - Dispose tab: `disposed-banking-of-{legal entity name}.pdf`
- Sorting order is same as [Browse page sorting](#sorting-order)
- Disposed banking PDF have one extra column for `Dispose Date`.
- Sorting orders of Individual and Joint type banking 
  - Primary sorting on entity type in a sequence of Individuals, Joint & Revocable Trust (Each entity type alphabetically sorted)
  - Second sorting in alphabetical order of `Banking/Company` name.

**Note**: `Notes` column for `Current Banking` report and `Nickname` column for `Disposed Banking` are not shown in the downloaded PDF file because We wanted to accommodate report in portrait mode (Based on Keith's suggestion).

Sample file of [Current](https://drive.google.com/file/d/10fNUyBJ68P8-fkJOYlEe7v0pBoJUoEoZ/view?usp=share_link) & [Disposed](https://drive.google.com/file/d/1Zx6bnLCLdUeDm3djY63KVK1vLtuVXpy0/view?usp=share_link) tab



### Browse Page

- Active accounts will be shown in the `Active` tab and Disposed accounts will be shown in the `Disposed` tab.
- If any tab has no records available, show that tab as disabled.
- Show proper message when no records are available.
  - Message is: `No Bank Accounts Found`
- Shows the count of the records with each tabs.
- Active banking page has added a button. On click, opens dropdown of banking types. On click of any type, open a banking add dialog where type field is prefilled.
- Each type has its own tables.
- Column name:
  - Entity
    - Applicable only for Individual and Joint type entities. It shows the owner entity name of the banking. 
      - When Individual banking accounts are pulled to the Joint, shows the Individual Name.
      - When Joint has its own accounts, shows `Joint` word.
      - When banking accounts of Revocable trust are pulled to the Joint or Individual, shows the Trust name. [See more details](./pull-bankings-of-associated-revocable-trust.md#system-rule)
  - Bank/Company
    - Show company name. if company has stock symbol, show it in a bracket.
  - Account Nickname
    - If account nickname is too long, show an ellipsis.
  - Account Number
  - Bill Pay
    - Applicable only for `Credit Card`, `Checking` & `Savings` type.
    - If Bill Pay is yes then show `✓` otherwise show `-`.
  - Custody
    - Applicable only for `Credit Card`, `Checking` & `Savings` type.
    - If the Custody account is yes then show `✓` otherwise show `-`.
  - EFTPS
    - Applicable only for `Checking` & `Funding Account` type.
    - If EFTPS is enabled then show `✓` otherwise shows `-`.
  - Notes
    - If notes is too long then show them in the next line.
- `Funding Account` type is shown first and then `Banking Account` are shown in alphabetical order and then `Loan Facilities` are shown in alphabetical order.
- On hover of records, shows hover effect. On hover, show vertmore action menu on the right side.
  - Vertmore action: `Edit`, `Dispose`, `Restore` & `Delete`
  - `Dispose` action is applicable only for active banking
  - `Restore` action is applicable only for disposed banking.
- On click of records, opens view dialog.

#### For Joint

For joint entities, the list page shows records for both Joint & Individuals on the same page.  For example, on the `Banking` tab for Joint `Tom and Judi`, it will display any Banking owned by Joint and also any Banking that they may own individually (Tom and Judi). 

On the list page, each record shows the name of the owner entity. If the owner of the record is Joint it shows `Joint` and if the owner of the record is `Individual` shows the First name of that Individual.

##### Sorting order of Joint

- Primary sorting on banking type.

- Secondary sorting on the Entity type. like First alphabetical order of Individual, Joint and then Revocable Trust
- Tertiary sorting on `Account Nickname`.

##### Sorting order other types of entity

- Primary sorting on banking type and Secondary sorting on the alphabetical order of `Account Nickname`.


## UI Requirements

[Mockups](https://drive.google.com/drive/u/0/folders/1KeDvWYgYoXyVIFMYNGJydp3LXz9Hkqth)



