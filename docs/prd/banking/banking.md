# Banking

## Overview

- Each Legal entity can have multiple bank accounts or credit cards
- These bank accounts are tracked as Banking in this application.

## System Requirement

- There are total 16 types of banking.
- Supported actions: `Create`, `Edit`, `Delete` and `Close`.

### Types

1. Asset Receivable Line
2. Asset Based LOC
3. Asset-Secured loan
4. Auto Loan
5. Checking
6. Credit Card
8. Equipment Line
9. Home Equity LOC
10. Lease
11. Loan
12. Working Capital LOC
13. Stock-Secured LOC
14. Unsecured LOC
15. Mortgage Adjustable Rate
16. Mortgage Fixed Rate
17. Savings

### Entity

- Each type has some common field and some type specific field.

#### Common fields

| Field name          | Description                                                  |
| ------------------- | ------------------------------------------------------------ |
| Account Nickname(*) | It's mandatory field. Free form text input field.            |
| Account Number(*)   | Applicable to all types. Free form text input field.         |
| Bank / Company(*)   | Applicable to all types. Auto-complete dropdown of all types of company and client-entities.<br />If a company has a stock symbol, show it in the bracket of the company. |
| Notes               | Free form multiline text field.                              |

#### Type Specific fields

| Type name                                                 | Field name                 | Description                                                  |
| :-------------------------------------------------------- | -------------------------- | ------------------------------------------------------------ |
| **Asset Receivable Line**                                 |                            |                                                              |
|                                                           | Asset                      | Shows all assets (Current or Disposed) of current legal entity. Transferred asset won’t be available. |
|                                                           | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                           | Loan fee                   | Default value is $0. Decimal is not allowed.                 |
|                                                           | Int. Rate %                | Two decimal digit allowed. Value must not be greater than 100.00%. |
|                                                           | Payment frequency          | Possible values are `Monthly, Quarterly, Annual`             |
|                                                           | Rate type                  | Possible values are `Fixed, Variable`                        |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Maturity date              | Date Input                                                   |
|                                                           | Term (months)              | Number input. Decimal is not allowed.                        |
|                                                           | Guarantor                  | Contact auto complete.                                       |
|                                                           | Authorised signers         | Contact auto complete. Multiple can be selected.             |
| **Asset Based LOC**                                       |                            |                                                              |
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
|                                                           | Authorised Signers         | Multiple can be selected. Contact auto complete.             |
| **Asset-Secured Loan**                                    |                            |                                                              |
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
| **Checking**                                              |                            |                                                              |
|                                                           | Wire Instruction           | Simple notes here                                            |
|                                                           | Authorised Signers         | Multiple can be selected. Contact auto complete.             |
|                                                           | Bill pay                   | True or False (Checkbox)                                     |
|                                                           | Custody Account            | True or False (Checkbox)                                     |
| **Credit Card**                                           |                            |                                                              |
|                                                           | Maturity date              | Date Input                                                   |
|                                                           | Custody Account            | True or False (Checkbox)                                     |
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
| **Savings**                                               |                            |                                                              |
|                                                           | Custody Account            | True or False (Checkbox)                                     |
|                                                           | Wire Instruction           | Simple notes here                                            |
|                                                           | Authorised signers         | Multiple can be selected. Contact auto complete.             |

### Edit

- Can be updated any time. Type can not be changed.

### Delete

- Can be deleted any time. On click opens delete confirmation dialog.
- If bank account is linked as `EFTPS` with any `Tax return`, delete is not allowed
- Same way if Bank account is linked with any Insurance, delete is not allowed
- If any `Checking` type bank account is linked to the Investor, banking account won’t be deleted. System shows a proper message in delete not possible dialog. 


#### UI Requirement

- Delete confirmation dialog. [See this](https://drive.google.com/file/d/1ot-VY8v-MZVblBfMUHxbDSpng6cqm78l/view?usp=sharing)


- When delete is possible shows normal delete confirmation dialog
- When delete is not possible shows Delete not possible dialog with its details of relation
- Delete not possible dialog for Checking type [See this](https://drive.google.com/file/d/1w8_ROOB-EC68pXdX8NchgKIg9A7jULKK/view?usp=share_link)
- During Multi delete, When one of the selected Bank account is referenced anywhere, then we simply deny the action. User need to manually delete individual Bank account. 


### Dispose

- System ask for `Disposed on`, `Termination fee` and `Notes`. `Disposed on` field is mandatory.
- Show all disposed banking in `DISPOSED` tab
- Shows tag for dispose banking.

#### UI Requirement

[Mockup](https://drive.google.com/file/d/12OHn_D4Fuut3tcf_XHyZfQpCpZbCoI54/view?usp=sharing)

- Tag for Disposed Banking. [See this](https://drive.google.com/file/d/1vukOl9fSWtRIkNnj-uR86ac4XDsWPf4l/view?usp=sharing)

### Restore

- Only `Disposed` banking can be restored.
- If an asset of the banking is transferred to another Legal entity. in that case Restore is not possible. 

- Show toast message of success on action of `Restore`.

#### UI Rule

- Toast message is: `Restored Successfully`.
- [Restore not possible](https://drive.google.com/file/d/1qVCW0a9p63huaQLhSV_z54_7hm3J2Gl4/view) dialog

### Download PDF

#### UX Rule

- Show PDF icon on the header of all tabs. On click, the pdf file will be downloaded.
- PDF icon won't be applicable when the tab has no records available.

#### PDF File

- File name: 
  - Active tab: `banking-of-{legal entity name}.pdf`
  - Dispose tab: `disposed-banking-of-{legal entity name}.pdf`
- Sorting order of current banking tab is same as [Browse page sorting](#sorting-order)
- Sorting order of disposed  banking 
  - Primary sorting on entity type in sequence of Individuals & Joint (Each entity type alphabetically sorted)
  - Secondaey sorting in alphabetical order of `Banking/Company` name.

**Note**: `Notes` column for `Current Banking` report and `Nickname` column for `Disposed Banking` are not shown in the downloaded PDF file because We wanted to accommodate report in portrait mode (Based on Keith suggestion).

Sample file of [Current](https://drive.google.com/file/d/10fNUyBJ68P8-fkJOYlEe7v0pBoJUoEoZ/view?usp=share_link) & [Disposed](https://drive.google.com/file/d/1Zx6bnLCLdUeDm3djY63KVK1vLtuVXpy0/view?usp=share_link) tab



### Browse Page

- Show proper message when no records available.
  - Message is: `No Bank Accounts Found`
- Shows count of the records with each tabs.
- Active banking page have add button. On click, opens dropdown of banking types. On click of any type, open a banking add dialog where type field is prefilled.
- Each type has own tables. On click, open add banking dialog where types is prefilled.
- Column name:
  - Entity
    - Applicable only for Joint type entity
    - It shows the owner entity name of the banking. 
  - Bank/Company
    - Show company name. if company has stock symbol, show it in bracket.
  - Account Nickname
  - Account Number
  - Bill Pay
    - Applicable only for `Credit Card` ,  `Checking` & `Savings` type .
    - If Bill Pay is yes then show `✓` otherwise shows `-`.
  - Custody
    - Applicable only for `Credit Card` ,  `Checking` & `Savings` type .
    - If Custody account is yes then show `✓` otherwise shows `-`.
  - EFTPS
    - Applicable only for `Checking` & `Savings` type .
    - If EFTPS is enabled then show `✓` otherwise shows `-`.
  - Notes
    - If notes is too long then show it in next line.
- On hover of records, shows hover effect. On hover, show vertmore action menu at right side.
  - Vertmore action: `Edit`, `Dispose`, `Restore` & `Delete`
  - `Dispose` action is applicable only for active banking
  - `Restore` action is applicable only for disposed banking.
  - On click of records, opens view dialog.

#### For Joint

For joint entity, list page shows records for both Joint & Individuals in same page.  For example, on the `Banking` tab for Joint `Tom and Judi`, it will display any Banking owned by Joint and also any Banking that they may own individually (Tom and Judi). 

In list page, with each record shows the name of the owner entity. If owner of the record is Joint it shows `Joint` and if owner of the record is `Individual` shows First name of that Individual.

##### Sorting order of Joint

- Primary sorting on banking type.

- Secondary sorting on Entity type. like First alphabetical order of Individual and then joint
- Tertiary sorting on `Account Nickname`.

##### Sorting order other types entity

- Primary sorting on banking type and Secondary sorting on `Account Nickname`.



## UI Requirements

[Mockups](https://drive.google.com/drive/u/0/folders/1KeDvWYgYoXyVIFMYNGJydp3LXz9Hkqth)



