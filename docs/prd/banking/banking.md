# Banking

## System Requirement

- There are total 17 types of banking.
- Supported actions: `Create`, `Update`, `Delete` and `Close`.

### Types

1. Asset Receivable Line
2. Asset Based LOC
3. Asset-secured loan
4. Auto loan
5. Checking
6. Credit card
7. Credit monitoring
8. Equipment line
9. Home equity LOC
10. Lease
11. Loan
12. Working capital LOC
13. Stock-secured LOC
14. Unsecured LOC
15. Mortgage adjustable rate
16. Mortgage fixed rate
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
| **Asset receivable line**                                 |                            |                                                              |
|                                                           | Asset                      | Shows active assets of current family.                       |
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
| **Asset based LOC**                                       |                            |                                                              |
|                                                           | Asset                      | Shows active assets of current family.                       |
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
| **Asset-secured loan**                                    |                            |                                                              |
|                                                           | Asset                      | Shows active assets of current family.                       |
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
|                                                           | Asset                      | Shows active assets of current family.                       |
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
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Wire Instruction           | Simple notes here                                            |
|                                                           | Authorised Signers         | Multiple can be selected. Contact auto complete.             |
|                                                           | Reconciles account         | Multiple can be selected. Contact auto complete..            |
|                                                           | Prepares checks            | Multiple can be selected. Contact auto complete.             |
|                                                           | Bill pay                   | Possible values are : `Bill pay, Managed account, Custody account` Multiple can be selected. |
| **Credit card**                                           |                            |                                                              |
|                                                           | Maturity date              | Date Input                                                   |
| **Credit monitoring**                                     |                            |                                                              |
|                                                           | Inception date             | Date Input                                                   |
| **Equipment line**                                        |                            |                                                              |
|                                                           | Asset                      | Shows active assets of current family.                       |
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
| **Home equity LOC**                                       |                            |                                                              |
|                                                           | Asset                      | Shows active assets of current family.                       |
|                                                           | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                           | Loan fee                   | Default value is $0. Decimal is not allowed.                 |
|                                                           | Payment frequency          | Possible values are `Monthly, Quarterly, Annual`             |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Maturity date              | Date Input                                                   |
|                                                           | Term (months)              | Number input. Decimal is not allowed.                        |
|                                                           | Guarantor                  | Contact auto complete..                                      |
|                                                           | Authorised Signers         | Multiple can be selected. Contact auto complete.             |
| **Lease**                                                 |                            |                                                              |
|                                                           | Asset                      | Shows active assets of current family.                       |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Guarantor                  | Contact auto complete..                                      |
| **Loan**                                                  |                            |                                                              |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Maturity date              | Date Input                                                   |
|                                                           | Recipient                  | Contact auto complete..                                      |
| **Working capital LOC, Stock-secured LOC, Unsecured LOC** |                            | For types `Stock-secured LOC` , `Unsecured LOC` and `Working capital LOC` following fields are same. |
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
| **Mortgage Adjustable rate**                              |                            |                                                              |
|                                                           | Asset                      | Shows active assets of current family.                       |
|                                                           | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                           | Int. rate %                | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                           | Max Potential rate         | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                           | Initial loan-to-value      | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                           | Appraised value            | Default value is $0. Decimal is not allowed.                 |
|                                                           | Appraisal date             | Date Input                                                   |
|                                                           | Rate Adjustment Frequency  | Decimal is not allowed. Vaules should be entered in between 0 to 100. |
|                                                           | Max Annual Rate Adjustment | Numbers input form. decimal number is allowed.               |
|                                                           | Rate Adjustment date       | Date input                                                   |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Guarantor                  | Contact auto complete..                                      |
| **Mortgage Fixed rate**                                   |                            |                                                              |
|                                                           | Asset                      | Shows active assets of current family.                       |
|                                                           | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                           | Int. rate %                | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                           | Initial loan-to-value      | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                           | Appraised value            | Default value is $0. Decimal is not allowed.                 |
|                                                           | Appraisal date             | Date Input                                                   |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Maturity date              | Date Input                                                   |
|                                                           | Rate Adjustment date       | Date input                                                   |
|                                                           | Guarantor                  | Contact auto complete..                                      |
| **Savings**                                               |                            |                                                              |
|                                                           | Inception date             | Date Input                                                   |
|                                                           | Wire Instruction           | Simple notes here                                            |
|                                                           | Authorised signers         | Multiple can be selected. Contact auto complete.             |
|                                                           | Reconciles account         | Multiple can be selected. Contact auto complete..            |

### Update

- Can be updated any time. Type can not be changed.

### Delete

- Can be deleted any time.
- If bank account is linked as `EFTPS` with any `Tax return`, delete is not allowed

### Close

- System ask for `Closed on`, `Termination fee` and `Notes`. `Closed on` field is mandatory.

### Re-Open

- Only closed banking can be re-opened.



# UI Requirements

[Mockups](https://drive.google.com/drive/u/0/folders/1kDnmtKwEnZBn4fjmrjRBSw3Bk-eL8NKP)