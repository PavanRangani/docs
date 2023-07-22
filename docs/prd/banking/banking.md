# Banking

## Overview

- Each Legal entity can have multiple bank accounts or credit cards
- These bank accounts are tracked as Banking in this application.

## System Requirement

- There are total of 16 types of banking.
- Supported actions: `Create`, `Edit`, `Delete` and `Close`.

### Types

- There are 3 types of Banking accounts available: `Funding Account`, `Bank Accounts` & `Loan Facilities`

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

#### Funding Account
| Type                    |                         | Field Name                 | Description                                                                                                                                                                                                                                                                                                                                                                                  |
|-------------------------|-------------------------|----------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Funding Account Details | Account Details         |                            |                                                                                                                                                                                                                                                                                                                                                                                              |
|                         |                         | Bank / Company             | It is a mandatory field and company dropdown whose type is `Banking/Credit`. <br />Default shows `Citibank`. If the user renames or change the type or archive the company, this field prefills that company name but it isn't shown in the dropdown.                                                                                                                                                                     |
|                         |                         | Incoming Wire Instruction  | Applicable only when selected `Bank / Company` has flag set to true. This field is not editable. It is pulled from the selected company.                                                                                                                   |
|                         |                         | Account Nickname           | It is free form text input field. It's a mandatory field.                                                                                                                                                                                                                                                                                                                                    |
|                         |                         | Account Number             | It is a mandatory field. Allows only 4 numbers.                                                                                                                                                                                                                                                                                                                                               |
|                         | SLOA Wire (General)     |                            |                                                                                                                                                                                                                                                                                                                                                                                              |
|                         |                         | Nickname                   | It is a mandatory and free-form text input field.                                                                                                                                                                                                                                                                                                                                            |
|                         |                         | Bank                       | It is a mandatory field. It is a dropdown of Banking/Credit type company.                                                                                                                                                                                                                                                                                                                    |
|                         |                         | Account Number             | It is a mandatory field. Allows only 4 numbers.                                                                                                                                                                                                                                                                                                                                               |
|                         | SLOA Wire (Investments) |                            |                                                                                                                                                                                                                                                                                                                                                                                              |
|                         |                         | Asset Manager              | It is a mandatory field. It's a dropdown of Asset Manager company having Limited Partnership fund.                                                                                                                                                                                                                                                                                           |
|                         |                         | Fund                       | It is a mandatory field. It shows LPs of the selected asset manager. By default, it is disabled. It is enable when Asset Manager is selected.                                                                                                                                                                                                                                                                                                                        |
|                         |                         | Bank                       | It is disabled. It is pulled the `Bank` data from the wire instruction tab of the selected fund.                                                                                                                                                                                                                                                                                             |
|                         |                         | Account Number             | It is disabled. It pulled the `Account Number` data from the wire instruction tab of the selected fund.                                                                                                                                                                                                                                                                                   |
|                         | SLOA Journal            |                            |                                                                                                                                                                                                                                                                                                                                                                                              |
|                         |                         | Nickname                   | It is a mandatory and free form text input field.                                                                                                                                                                                                                                                                                                                                            |
|                         |                         | Company                    | It is a mandatory field. It is a dropdown of Banking/Credit type company.                                                                                                                                                                                                                                                                                                                    |
|                         |                         | Account Number             | It is a mandatory field. Allows only 4 numbers.                                                                                                                                                                                                                                                                                                                                               |
| Check Writing           | Details                 |                            | This section is applicable only when the `Check Writing` section switch is ON.                                                                                                                                                                                                                                                                                                                   |
|                         |                         | DDA Bank                   | It is a mandatory field and company dropdown whose type is `Banking/Credit`. <br />Default shows `Bank of New York - Mellon`. If the user deleted or rename or change the type or archive the `Bank of New York - Mellon` company, this field shows blank.                                                                                                                                   |
|                         |                         | DDA Routing Number         | It's mandatory and a number input field. (No limitation to enter number). <br />Default shows this number `031100157`.                                                                                                                                                                                                                                                                       |
|                         |                         | DDA Account Number         | It's mandatory and Number input field. (No limitation to enter number)                                                                                                                                                                                                                                                                                                                       |
|                         | EFTPS                   |                            | This section is applicable only when the `Check Writing` section switch is ON.                                                                                                                                                                                                                                                                                                                   |
|                         |                         | EFTPS Enrollment Number    | Applicable only when the `EFTPS` switch is ON. <br />It is a mandatory and number input field. Allows to enter 18 numbers                                                                                                                                                                                                                                                                    |
|                         |                         | EFTPS Pin                  | Applicable only when the `EFTPS` switch is ON. <br />It is a mandatory and number input field. Allows to enter 4 numbers                                                                                                                                                                                                                                                                     |
|                         |                         | Tax ID Entry               | Applicable only when the `EFTPS` switch is ON. <br />It is a disabled field for all entities other than Joint. It is shown the entity name where this funding account is added. - For Joint, it is a dropdown of Individual of the Joint. User can select any one individual.                                                                                        |
|                         |                         | Tax ID Number              | Applicable only when the `EFTPS` switch is ON. <br />If an entity is an Individual, show the `Individual SSN` number. <br />If an entity is Partnership or Trust, it shows either EIN or SSN number. <br />If an entity is Foundation or Estate, it shows the EIN number. <br />For DAF type foundation, it shows the EIN number of the selected organization group. |
|                         | SLOA MoneyLink          |                            | This section is applicable only when the `Check Writing` section switch is ON.                                                                                                                                                                                                                                                                                                                   |
|                         |                         | Nickname                   | It is a mandatory and free form text input field.                                                                                                                                                                                                                                                                                                                                            |
|                         |                         | Bank                       | It is a mandatory field. It is a dropdown of Banking/Credit type company.                                                                                                                                                                                                                                                                                                                    |
|                         |                         | Account Number             | It is a mandatory field. Allows only 4 numbers.                                                                                                                                                                                                                                                                                                                                               |
|                         |                         | Autorization Type          | It is a mandatory field. It's a dropdown of `Incoming Only`, `Outgoing Only` and `Incoming & Outgoing`.                                                                                                                                                                                                                                                                                      |
| Notes                   |                         |                            |                                                                                                                                                                                                                                                                                                                                                                                              |
|                         | Notes                   |                            | It is free form text input field.                                                                                                                                                                                                                                                                                                                                                            |


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

### Add Funding Account

#### System Rule
- Account name should be unique across all accounts (Active or Disposed) of this legal entity (Not system wide unique)
- For `SLOA Wire (Investment)`, when user enters a new funding account, system will pull the latest value of Bank & Account Number.
- There is no uniqness in any section. User can enter same data for multi time in one section.


#### UX Rule
- New account can be added only for active tab.
- On uniqueness failure, it shows proper error message.
- User can enters more than one records for this section: `SLOA Wire (General)`, `SLOA Wire (Investments)`, `SLOA Journal`, `SLOA Moneylink`.
- Shows proper message when no records available in multi input field.
- For `SLOA Wire (Investment)`, 
  - If LP fund has no Bank or Accout Number available, shows error message in the Fund field.
- Check Writing or EFTPS
  - Shows proper message when `Check Writing` switch is OFF.
  - Shows proper message when `EFTPS` switch is OFF.
- If Check Writing & EFTPS has data and user switches OFF, System will removed the its data.


#### UI Rule
[Mockup with no checkbox is selected](https://drive.google.com/file/d/1WCChlYlBmFZjwIPyNKvyhovVfcxwaGZi/view?usp=drive_link) & [Mockup when all checkbox are selected](https://drive.google.com/file/d/1Ek5ibumtIM1fogqP9xaELmlCRzDxyT-_/view?usp=drive_link)
- Error message for uniqness: `Account with same name already exists`. [See this](https://drive.google.com/file/d/1l4W5pzuKSVMNIaZHpqUxgZAcoks90o8v/view?usp=share_link)
- For `SLOA Wire (Investment)`
  - Error message for Fund: `Bank/Account number not available for this Fund`
- Message when Check Writing is OFF: `Check Writing is currently OFF. You can ON it through above switch`
- Message when EFTPS is OFF: `EFTPS is currently OFF. You can ON it through above switch`
- Placeholder message when any section have no records: `No Records Available`


### Edit
- Only active accounts can be edited anytime. Type can not be changed.
- For `Funding Acconts`, when account name is changed, system will auto update the assocaited funding account in the wire instructions.
**Known Case**
- Even if EFTPS of a Funding Account or Checking account has been added to a tax return, the user can turn OFF the EFTPS switch for that account. In this case, system won't remove the details of EFTPS from the existing tax return. It will remain as it is.

#### Funding Account

##### System Rule
- User can edit any details any time.
- Archive records details can't be edited.
- For `SLOA Wire (Investment)`, if wire instruction is amend, system will auto archive the funding accont SLOA wire record. When any records archived by system, user cann't manualy unarchived it.
- User can archived any records from edit.

##### UX Rule
- Shows an `Archived` checkbox with each record in the SLOA section. This checkbox also appears when new record is added from edit mode.
- For `SLOA Wire (Investment)`, if the system marked the record as archived, `Archived` checkbox appaers as disable.   

##### UI Rule
- For `SLOA Wire (Investment)` tooltip message: `Wire Instruction of this Fund is amended. So user can not restore it`



### Delete
- Active or Disposed both accounts can be deleted any time. On click opens delete confirmation dialog.
- When `Funding Account` or `Checking` account is linked to any LP wire instruction, funding account can't be deleted. For this, shows delete not possible dialog.
- If bank account is linked as `EFTPS` with any `Tax return`, delete is not allowed
- Same way if Bank account is linked with any Insurance, delete is not allowed

#### UI Requirement

- Delete confirmation dialog. [See this](https://drive.google.com/file/d/1ot-VY8v-MZVblBfMUHxbDSpng6cqm78l/view?usp=sharing)
- When delete is possible shows normal delete confirmation dialog
- When delete is not possible shows Delete not possible dialog with its details of relation
- Delete not possible dialog for Checking type or Saving type when EFTPS is added to any tax return [See this](https://drive.google.com/file/d/1w8_ROOB-EC68pXdX8NchgKIg9A7jULKK/view?usp=share_link)
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
- `Bank/Company` & `Asset` & `Authorized Signers` & `Guarantor` are linked. On click, opens the view dialog. 
- Shows `Disposed` tag for the dispose account. 
- user can perform action from view dialog
  - For Active: Edit, Dispose, Delete
  - For Dispose: Delete, Restore
- For `Checking` & `Savings` type, shows `Linked Funding Account(s)` as table
  - Column
    - Name
    - Check Writing
      - If banking account is linked to any funding account as a `Check Writing`, shows `✔` otherwise shows `-`. 
    - MoneyLink
      - If the banking account is linked to any funding account as a `MoneyLink`, shows `✔` otherwise shows `-`. 
    - SLOA
      - If banking account is linked to any funding account as a `SLOA`, shows `✔` otherwise shows `-`. 
  - Sorting order: Records are sorted in alphabetical order of Name. 
- For `Funding Account` type, shows funding accounts details in the table
  - Column
    - Type
      - Shows the type of account like `Check Writing`, `MoneyLink`, `SLOA-Wire`, `SLOA-MoneyLink`, `SLOA-Journal`.
      - Shows `SLOA` for pulled funding accounts.
    - Bank/Fund
      - If Account has Bank, show that Bank name.
      - If the funding account of such entity is added in any Wire Instructions of the Fund and SLOA is true, shows that fund name.
      - If the bank/fund name is too long, show it in multiline.
    - Account Nickname
      - If funding account has Account nickname, show that nickname otherwise shows `-`.
      - If account nickname is too long, show it in multiline.
  - Sorting order: Check Writing is shown first, MoneyLink is shown second and SLOAs are shown third. SLOAs are sorted in alphabetical order of Bank/Fund. 
- `Bill Pay` & `Custody` section is applicable only for Credit Card, Checking & Savings type bank account.

#### Funding Account
- Shows proper message when no records available in any section.
  - Placeholder text: `No Records Found`
- Pulled the latest data of the `Incoming Wire Instruction` to the funding account.
- If `Incoming Wire Instruction` is too long, shows it in multiline. When field is blank, shows `-`.

- Columns of the `SLOA Wire (General)`, `SLOA Wire (Investments)`, `SLOA Journal` & `SLOA Moneylink`
  - Nickname
    - If it too long, shows it in multiline.
    - Not applicable for the `SLOA Wire (Investments)`.
  - Asset Manager / Fund
    - Applicable only for the `SLOA Wire (Investments)`
    - It shows the Asset Manager and Fund name with `|` separated. If it too long, shows it in multiline.
  - Bank
    - It is a link. On click, opens the view dialog of a bank.
  - Account Number
  - Authorization Type
  - Last Transaction
    - //Implement in Future
    - Currently, we have show `-` for all records.
- Sorting order: 
  - For `SLOA Wire (General)`, `SLOA Wire (Investments)`, `SLOA Journal` & `SLOA Moneylink`: Records are sorted on alphabetical order on Nickname
  - For `SLOA Wire (Investments)`, records are sorted on the alphabetical order of Asset Manager.
- Following fields are shown as Link
  - Funding Account details: `Bank / Company`
  - Check Writing (ACH): `DDA Bank` & `Tax ID Entity`
  - On click, opens the company view dialog or Entity view page in same page.
- Shows proper message when `Check Writing` switch is OFF. Message is: `Check Writing is disabled`
- When `Check Writing` is OFF, `EFTPS` and `SLOA MoneyLink` section is not shown.
- Shows proper message when `EFTPS` is OFF. Message is: `EFTPS is disabled`
- Shows `Archived` tag for archive records in the `Nickname` column at last.

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
  - Primary sorting on entity type in a sequence of Individuals & Joint (Each entity type alphabetically sorted)
  - Second sorting in alphabetical order of `Banking/Company` name.

**Note**: `Notes` column for `Current Banking` report and `Nickname` column for `Disposed Banking` are not shown in the downloaded PDF file because We wanted to accommodate report in portrait mode (Based on Keith suggestion).

Sample file of [Current](https://drive.google.com/file/d/10fNUyBJ68P8-fkJOYlEe7v0pBoJUoEoZ/view?usp=share_link) & [Disposed](https://drive.google.com/file/d/1Zx6bnLCLdUeDm3djY63KVK1vLtuVXpy0/view?usp=share_link) tab



### Browse Page

- Active accounts will be shown in the `Active` tab and Disposed accounts will be shown in the `Disposed` tab.
- If any tab has no records available, shows that tab as disabled.
- Show proper message when no records available.
  - Message is: `No Bank Accounts Found`
- Shows the count of the records with each tabs.
- Active banking page has added button. On click, opens dropdown of banking types. On click of any type, open a banking add dialog where type field is prefilled.
- Each type has its own tables.
- Column name:
  - Entity
    - Applicable only for Joint type entity
    - It shows the owner entity name of the banking. 
  - Bank/Company
    - Show company name. if company has stock symbol, show it in a bracket.
  - Account Nickname
    - If account nickname is too long, shows elipsis
  - Account Number
  - Bill Pay
    - Applicable only for `Credit Card`, `Checking` & `Savings` type.
    - If Bill Pay is yes then show `✓` otherwise show `-`.
  - Custody
    - Applicable only for `Credit Card`, `Checking` & `Savings` type.
    - If the Custody account is yes then show `✓` otherwise shows `-`.
  - EFTPS
    - Applicable only for `Checking` & `Funding Account` type.
    - If EFTPS is enabled then show `✓` otherwise shows `-`.
  - Notes
    - If notes is too long then show it in next line.
- `Funding Account` type is shown first and then `Banking Account` are shown in alphabetical order and then `Loan Facilities` are shown in alphabetical order.
- On hover of records, shows hover effect. On hover, show vertmore action menu on the right side.
  - Vertmore action: `Edit`, `Dispose`, `Restore` & `Delete`
  - `Dispose` action is applicable only for active banking
  - `Restore` action is applicable only for disposed banking.
- On click of records, opens view dialog.

#### For Joint

For joint entities, the list page shows records for both Joint & Individuals on the same page.  For example, on the `Banking` tab for Joint `Tom and Judi`, it will display any Banking owned by Joint and also any Banking that they may own individually (Tom and Judi). 

On the list page, with each record shows the name of the owner entity. If the owner of the record is Joint it shows `Joint` and if the owner of the record is `Individual` shows the First name of that Individual.

##### Sorting order of Joint

- Primary sorting on banking type.

- Secondary sorting on the Entity type. like First alphabetical order of Individual and then joint
- Tertiary sorting on `Account Nickname`.

##### Sorting order other types of entity

- Primary sorting on banking type and Secondary sorting on the alphabetical order of `Account Nickname`.


## UI Requirements

[Mockups](https://drive.google.com/drive/u/0/folders/1KeDvWYgYoXyVIFMYNGJydp3LXz9Hkqth)



