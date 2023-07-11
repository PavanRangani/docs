# Banking

## Overview

- Each Legal entity can have multiple bank accounts or credit cards
- These bank accounts are tracked as Banking in this application.

## System Requirement

- There are total 16 types of banking.
- Supported actions: `Create`, `Edit`, `Delete` and `Close`.

### Types

- There is 2 types of Banking accoounts availalbe: `Bank Accounts` & `Loan Facilities`
  - **Bank Accounts**
    - Checking
    - Credit Card
    - Funding Account
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

- Each type has some common field and some type specific field.

#### Common fields

| Field name          | Description                                                  |
| ------------------- | ------------------------------------------------------------ |
| Account Nickname(*) | It's mandatory field. Free form text input field.            |
| Account Number(*)   | Applicable to all types. Free form text input field. For `Funding Account`, Allows to enter 4 digits. |
| Bank / Company(*)   | Applicable to all types except `Funding Account`. Auto-complete dropdown of all types of company and client-entities.<br />If a company has a stock symbol, show it in the bracket of the company. |
| Notes               | Free form multiline text field.                              |



#### Type Specific fields: Bank Accounts




| Type name                                                 | Field name                 | Description                                                  |
| :-------------------------------------------------------- | -------------------------- | ------------------------------------------------------------ |
| **Checking**                                              |                            |                                                              |
|                                                           | Wire Instruction           | Simple notes here                                            |
|                                                           | Authorised Signers         | Multiple can be selected. Contact auto complete.             |
|                                                           | Bill pay                   | True or False (Checkbox). Default it is False.               |
|                                                           | Custody Account            | True or False (Checkbox). Default it is False.               |
|                                                           | EFTPS                      | True or False (Checkbox). Default it is False.               |
|                                                           | EFTPS Pin                  | Applicable only when EFTPS is True. Mandatory and Number input field. Only 4 digits allowed. |
|                                                           | Enrollment Number          | Applicable only when EFTPS is True. Mandatory and Number input field. Only 18 digits allowed. |
| **Credit Card**                                           |                            |                                                              |
|                                                           | Maturity date              | Date Input                                                   |
|                                                           | Custody Account            | True or False (Checkbox)                                     |
| **Funding Account**                                       |                            |                                                              |
|                                                           | Check Writing              | It's a checkbox field. Default it is unchecked.              |
|                                                           | Schwab One (BNY Mellon)    | Applicable only when the `Check Writing` checkbox is true. <br />It is a mandatory field. It's a dropdown of Active Checking and Saving type bank account where the bank is `Schwab One (BNY Mellon)`. |
|                                                           | MoneyLink                  | It's a checkbox field. Default it is unchecked.              |
|                                                           | SLOA                       | There are 3 types of SLOA: `SLOA-Wire`, `SLOA-MoneyLink`, `SLOA-Journal` <br /> Allows to enters multiple SLOA for single Funding account. |
|                                                           | Bank                       | Applicable only for `MoneyLink` or `SLOA`. <br />It is a mandatory field. It's an auto complete dropdown of Company. |
|                                                           | Nickname                   | Applicable only for `MoneyLink` or `SLOA`. <br />It is a mandatory field. It's a free form text input field. |
|                                                           | Checking/Saving Account    | Applicable only for `MoneyLink` or `SLOA`. <br />It's dropdown of Active Checking and Saving type Banking account of the entity. |
|                                                           | EFTPS                      | True or False (Checkbox)                                     |
|                                                           | EFTPS Pin                  | Applicable only when EFTPS is True. Mandatory and Number input field. Only 4 digits allowed. |
|                                                           | Enrollment Number          | Applicable only when EFTPS is True. Mandatory and Number input field. Only 18 digits allowed. |
| **Savings**                                               |                            |                                                              |
|                                                           | Custody Account            | True or False (Checkbox)                                     |
|                                                           | Wire Instruction           | Simple notes here                                            |
|                                                           | Authorised signers         | Multiple can be selected. Contact auto complete.             |



#### Type Specific fields: Loan Facilities


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

### Add Funding Account

#### System Rule
- Account name should be unique across all accounts (Active or Disposed) of this legal entity (Not system wide unique)
- It is possible that Funding Account doesn't have `Check Writing`, `MoneyLink` or `SLOA` details. For e.g. Suppose the user doesn’t have clicked on any checkbox and add funding account.
- It is also possible that Funding Account have all 3 values of `Check Writing`, `MoneyLink` or `SLOA` details. For e.g. Suppose the user have clicked on any checkbox and add funding account.
- It is possible that funding account has more than one SLOA.

#### UX Rule
- New account can be added only for active tab.
- On uniqueness failure, it shows proper error message.
- Shows + button with SLOA section. Clicking on the + button, opens the SLOA type dropdown.
    - On click of any SLOA type, one records will be added under that type.
    - New records always be added to the last of the each type.
    - Shows X icon to the right side. On click of X, record will be removed.

#### UI Rule
[Mockup with no checkbox is selected](https://drive.google.com/file/d/1WCChlYlBmFZjwIPyNKvyhovVfcxwaGZi/view?usp=drive_link) & [Mockup when all checkbox are selected](https://drive.google.com/file/d/1Ek5ibumtIM1fogqP9xaELmlCRzDxyT-_/view?usp=drive_link)
- Error message for uniqness: `Account with same name already exists`. [See this](https://drive.google.com/file/d/1l4W5pzuKSVMNIaZHpqUxgZAcoks90o8v/view?usp=share_link)


### Edit
- Only active accounts can be edited anytime. Type can not be changed.
- For `Funding Acconts`, when account name is changed, system will auto update the assocaited funding account in the wire instructions.
- For `Funding Accounts` & `Checking` type, if account is added in tax return as an EFTPS, EFTPS checkbox is shown disabled for that account. 


### Delete
- Active or Disposed both accounts can be deleted any time. On click opens delete confirmation dialog.
- When `Funding Account` is linked to any LP wire instruction, funding account can't be deleted. For this, shows delete not possible dialog.
- If bank account is linked as `EFTPS` with any `Tax return`, delete is not allowed
- Same way if Bank account is linked with any Insurance, delete is not allowed
- If any `Checking` type bank account is linked to the Investor, banking account won’t be deleted.  
- If any Checking or Saving type bank account is linked to any funding accoint, banking account won't be deleted.

#### UI Requirement

- Delete confirmation dialog. [See this](https://drive.google.com/file/d/1ot-VY8v-MZVblBfMUHxbDSpng6cqm78l/view?usp=sharing)
- When delete is possible shows normal delete confirmation dialog
- When delete is not possible shows Delete not possible dialog with its details of relation
- Delete not possible dialog for Checking type [See this](https://drive.google.com/file/d/1w8_ROOB-EC68pXdX8NchgKIg9A7jULKK/view?usp=share_link)
- Delete not possible dialog for Fundung Account type [See this](https://drive.google.com/file/d/1ZKO6xrhBucFAZ658zCGBaR1t-Y0Jd9Jq/view?usp=drive_link)
- If banking is added in funding accont, shows delete not possible dialog. [See this](https://drive.google.com/file/d/1xjTDAV4N5z6aMgznPuRg3hEbHK_FZVid/view?usp=drive_link)
- During Multi delete, When one of the selected Bank account is referenced anywhere, then we simply deny the action. User need to manually delete individual Bank account. 


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
- `Bank/Company` & `Asset` & `Authorized Signers` & `Guarantor` are link. On click, opens the view dailog. 
- Shows `Disposed` tag for the dispose account. 
- user can perfom action from view dialog
  - For Active: Edit, Dispose, Delete
  - For Dispose: Delete, Restore
- For `Checking` & `Savings` type, shows `Linked Funding Account(s)` as table
  - Column
    - Name
    - Check Writing
      - If banking account is linked to any funding account as a `Check Writing`, shows `✔` otherwise shows `-`. 
    - MoneyLink
      - If banking account is linked to any funding account as a `MoneyLink`, shows `✔` otherwise shows `-`. 
    - SLOA
      - If banking account is linked to any funding account as a `SLOA`, shows `✔` otherwise shows `-`. 
  - Sorting order: Records are sorted on alphabetical order of Name. 
- For `Funding Account` type, shows funding accounts details in table
  - Column
    - Type
      - Shows the type of account like `Check Writing`, `MoneyLink`, `SLOA-Wire`, `SLOA-MoneyLink`, `SLOA-Journal`.
      - Shows `SLOA` for pulled funding accounts.
    - Bank/Fund
      - If Account has Bank, shows that Bank name.
      - If the funding account of the such entity is added in any Wire Instructions of the Fund and SLOA is true, shows that fund name.
      - If bank/fund name is too long, shows it in multiline.
    - Account Nickname
      - If funding account has Account nickname, shows that nickname otherwise shows `-`.
      - If account nickname is too long, show it in multiline.
  - Sorting order: Check Writing is shown first, MoneyLink is shown second and SLOAs are shown third. SLOAs are sorted in alphabetical order of Bank/Fund. 
- `Bill Pay` & `Custody` section is applicable only for Credit Card, Checking & Savings type bank account.

#### UI Requirements
- [view dialog](https://drive.google.com/file/d/1WlvikmKeLX-BUrkXGRlOYonJAsopSjly/view?usp=drive_link)

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

- Active accounts will be shown in the `Active` tab and Disposed accounts will be shown in the `Disposed` tab.
- If any tab has no records available, shows that tab as disabled.
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
    - Not applicable for `Funding Account` type.
  - Account Nickname
    - If account nickname is too long, shows elips
  - Account Number
  - Bill Pay
    - Applicable only for `Credit Card`, `Checking` & `Savings` type.
    - If Bill Pay is yes then show `✓` otherwise shows `-`.
  - Custody
    - Applicable only for `Credit Card`, `Checking` & `Savings` type.
    - If Custody account is yes then show `✓` otherwise shows `-`.
  - Check Writing
    - Applicable only for `Checking` & `Saving` type.
    - If the banking account is linked as Check Writing to any Funding Account, shows `✔` otherwise shows `-`.
  - MoneyLink
    - Applicable only for `Checking` & `Saving` type.
    - If the banking account is linked as MoenyLink to any Funding Account, shows `✔` otherwise shows `-`.
  - SLOA
    - Applicable only for `Checking` & `Saving` type.
    - If the banking account is linked as SLOA to any Funding Account, shows `✔` otherwise shows `-`.
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

- Primary sorting on banking type and Secondary sorting on alphabetical order of `Account Nickname`.



## UI Requirements

[Mockups](https://drive.google.com/drive/u/0/folders/1KeDvWYgYoXyVIFMYNGJydp3LXz9Hkqth)



