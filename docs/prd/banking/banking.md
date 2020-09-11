# Banking

## Overview

- Each Legal entity can have multiple bank accounts or credit cards
- These bank accounts are tracked as Banking in this application.

## System Requirement

- There are total 17 types of banking.
- Supported actions: `Create`, `Update`, `Delete` and `Close`.

### Types

1. Asset Receivable Line
2. Asset Based LOC
3. Asset-Secured loan
4. Auto Loan
5. Checking
6. Credit Card
7. Credit Monitoring
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

| Field name          | Description                            |
| ------------------- | -------------------------------------- |
| Account Nickname(*) | It's mandatory field.                  |
| Type(*)             | Any one type of above list             |
| Account number (*)  | Applicable to all types except `Loan`. |
| Bank (*)            | Applicable to all types except `Loan`. |
| Notes               | Free form multiline text field.        |

#### Type Specific fields

| Type name                                                 | Field name                 | Description                                                  |
| :-------------------------------------------------------- | -------------------------- | ------------------------------------------------------------ |
| **Asset Receivable Line**                                 |                            |                                                              |
|                                                           | Asset                      | Shows all assets (Current or Disposed) of current legal entity |
|                                                           | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                           | Loan fee                   | Default value is $0. Decimal is not allowed.                 |
|                                                           | Int. rate %                | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                           | Payment frequency          | Possible values are `Monthly, Quarterly, Annual`             |
|                                                           | Rate type                  | Possible values are `Fixed, Variable`                        |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Maturity date              | Date Input                                                   |
|                                                           | Term (months)              | Number input. Decimal is not allowed.                        |
|                                                           | Guarantor                  | Contact auto complete.                                       |
|                                                           | Authorised signers         | Contact auto complete. Multiple can be selected.             |
| **Asset Based LOC**                                       |                            |                                                              |
|                                                           | Asset                      | Shows all assets (Current or Disposed) of current legal entity |
|                                                           | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                           | Loan fee                   | Default value is $0. Decimal is not allowed.                 |
|                                                           | Int. rate %                | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                           | Payment frequency          | Possible values are `Monthly, Quarterly, Annual`             |
|                                                           | Rate type                  | Possible values are `Fixed, Variable`                        |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Maturity date              | Date Input                                                   |
|                                                           | Term (months)              | Number input. Decimal is not allowed.                        |
|                                                           | Guarantor                  | Contact auto complete..                                      |
|                                                           | Authorised Signers         | Multiple can be selected. Contact auto complete.             |
| **Asset-Secured Loan**                                    |                            |                                                              |
|                                                           | Asset                      | Shows all assets (Current or Disposed) of current legal entity |
|                                                           | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                           | Loan fee                   | Default value is $0. Decimal is not allowed.                 |
|                                                           | Int. rate %                | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                           | Payment frequency          | Possible values are `Monthly, Quarterly, Annual`             |
|                                                           | Rate type                  | Possible values are `Fixed, Variable`                        |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Maturity date              | Date Input                                                   |
|                                                           | Term (months)              | Number input. Decimal is not allowed.                        |
|                                                           | Guarantor                  | Contact auto complete..                                      |
|                                                           | Authorised Signers         | Multiple can be selected. Contact auto complete.             |
| **Auto Loan**                                             |                            |                                                              |
|                                                           | Asset                      | Shows all assets (Current or Disposed) of current legal entity |
|                                                           | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                           | Loan fee                   | Default value is $0. Decimal is not allowed.                 |
|                                                           | Int. rate %                | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                           | Payment frequency          | Possible values are `Monthly, Quarterly, Annual`             |
|                                                           | Rate type                  | Possible values are `Fixed, Variable`                        |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Maturity date              | Date Input                                                   |
|                                                           | Term (months)              | Number input. Decimal is not allowed.                        |
|                                                           | Guarantor                  | Contact auto complete..                                      |
| **Checking**                                              |                            |                                                              |
|                                                           | Wire Instruction           | Simple notes here                                            |
|                                                           | Authorised Signers         | Multiple can be selected. Contact auto complete.             |
|                                                           | Bill pay                   | Possible values are : `Bill pay and Custody account` Multiple can be selected. |
| **Credit Card**                                           |                            |                                                              |
|                                                           | Maturity date              | Date Input                                                   |
|                                                           | Custody Account            | True or False (Checkbox)                                     |
| **Credit Monitoring**                                     |                            |                                                              |
|                                                           | Inception date             | Date Input                                                   |
| **Equipment Line**                                        |                            |                                                              |
|                                                           | Asset                      | Shows all assets (Current or Disposed) of current legal entity |
|                                                           | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                           | Loan fee                   | Default value is $0. Decimal is not allowed.                 |
|                                                           | Int. rate %                | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                           | Payment frequency          | Possible values are `Monthly, Quarterly, Annual`             |
|                                                           | Rate type                  | Possible values are `Fixed, Variable`                        |
|                                                           | Maturity date              | Date Input                                                   |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Term (months)              | Number input. Decimal is not allowed.                        |
|                                                           | Guarantor                  | Contact auto complete..                                      |
|                                                           | Revolving                  | True or false.                                               |
|                                                           | Authorised Signers         | Multiple can be selected. Contact auto complete.             |
| **Home Equity LOC**                                       |                            |                                                              |
|                                                           | Asset                      | Shows all assets (Current or Disposed) of current legal entity |
|                                                           | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                           | Loan fee                   | Default value is $0. Decimal is not allowed.                 |
|                                                           | Payment frequency          | Possible values are `Monthly, Quarterly, Annual`             |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Maturity date              | Date Input                                                   |
|                                                           | Term (months)              | Number input. Decimal is not allowed.                        |
|                                                           | Guarantor                  | Contact auto complete..                                      |
|                                                           | Authorised Signers         | Multiple can be selected. Contact auto complete.             |
| **Lease**                                                 |                            |                                                              |
|                                                           | Asset                      | Shows all assets (Current or Disposed) of current legal entity |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Guarantor                  | Contact auto complete..                                      |
| **Loan**                                                  |                            |                                                              |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Maturity date              | Date Input                                                   |
|                                                           | Recipient                  | Contact auto complete..                                      |
| **Working Capital LOC, Stock-Secured LOC, Unsecured LOC** |                            | For types `Stock-secured LOC` , `Unsecured LOC` and `Working capital LOC` following fields are same. |
|                                                           | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                           | Loan fee                   | Default value is $0. Decimal is not allowed.                 |
|                                                           | Int. rate %                | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                           | Payment frequency          | Possible values are `Monthly, Quarterly, Annual`             |
|                                                           | Rate type                  | Possible values are `Fixed, Variable`                        |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Maturity date              | Date Input                                                   |
|                                                           | Term (months)              | Number input. Decimal is not allowed.                        |
|                                                           | Guarantor                  | Contact auto complete..                                      |
|                                                           | Revolving                  | Users can select if reuired.                                 |
|                                                           | Authorised Signers         | Multiple can be selected. Contact auto complete.             |
| **Mortgage Adjustable Rate**                              |                            |                                                              |
|                                                           | Asset                      | Shows all assets (Current or Disposed) of current legal entity |
|                                                           | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                           | Int. rate %                | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                           | Max Potential rate         | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                           | Initial loan-to-value      | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                           | Appraised value            | Default value is $0. Decimal is not allowed.                 |
|                                                           | Appraisal date             | Date Input                                                   |
|                                                           | Rate Adjustment Frequency  | Values should be entered in between 0 to 100. Decimal is not allowed. |
|                                                           | Max Annual Rate Adjustment | Numbers input form. Values should be entered in between 0 to 100. Decimal is allowed. |
|                                                           | Rate Adjustment date       | Date input                                                   |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Guarantor                  | Contact auto complete..                                      |
| **Mortgage Fixed Rate**                                   |                            |                                                              |
|                                                           | Asset                      | Shows all assets (Current or Disposed) of current legal entity |
|                                                           | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                           | Int. rate %                | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                           | Initial loan-to-value      | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                           | Appraised value            | Default value is $0. Decimal is not allowed.                 |
|                                                           | Appraisal date             | Date Input                                                   |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Maturity date              | Date Input                                                   |
|                                                           | Guarantor                  | Contact auto complete..                                      |
| **Savings**                                               |                            |                                                              |
|                                                           | Custody Account            | True or False (Checkbox)                                     |
|                                                           | Wire Instruction           | Simple notes here                                            |
|                                                           | Authorised signers         | Multiple can be selected. Contact auto complete.             |

### Update

- Can be updated any time. Type can not be changed.

### Delete

- Can be deleted any time.
- If bank account is linked as `EFTPS` with any `Tax return`, delete is not allowed
- Same way if Bank account is linked with any Insurance, delete is not allowed

#### UI Requirement

- When delete is possible shows normal delete confirmation dialog
- When delete is not possible shows Delete not possible dialog with its details of relation
- During Multi delete, When one of the selected Bank account is referenced anywhere, then we simply deny the action. User need to manually delete individual Bank account.

### Dispose

- System ask for `Disposed on`, `Termination fee` and `Notes`. `Disposed on` field is mandatory.

### Restore

- Only `Disposed` banking can be restored.



# UI Requirements

[Mockups](https://drive.google.com/drive/u/0/folders/1kDnmtKwEnZBn4fjmrjRBSw3Bk-eL8NKP)



### For Joint

For joint entity, list page shows records for both Joint & Individuals in same page.  For example, on the `Banking` tab for Joint `Tom and Judi`, it will display any Banking owned by Joint and also any Banking that they may own individually (Tom and Judi). 

In list page, with each record shows the name of the owner entity. If owner of the record is Joint it shows `Joint` and if owner of the record is `Individual` shows First name of that Individual.



