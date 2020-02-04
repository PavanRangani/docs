# Banking

## System Requirement

- There are total 17 types of banking.
- Banking has some common field and some type specific field.
- Supported actions: `Create`, ``Update`, `Delete` and `Close`.

### Entity

#### Common fields

| Field name          | Description                                                  |
| ------------------- | ------------------------------------------------------------ |
| Account Nickname(*) | It's mandatory field.                                        |
| Type(*)             | <br />There are total 17 types<br />Asset receivable line, Asset based LOC, Asset-secured loan, Auto loan, Checking,  Credit card, Credit monitoring, Equipment line, Home equity LOC, Lease, Loan, Working capital LOC, Stock-secured LOC, Unsecured LOC, Mortgage adjustable rate, Mortgage fixed rate, Savings |
| Account number (*)  | Applicable to all types of Banking except `Loan`.            |
| Bank (*)            | Applicable to all types of Banking except `Loan`.            |
| Notes               | Free form multiline text field.                              |

#### Type Specific fields

| Type name                                             | Field name                 | Description                                                  |
| :---------------------------------------------------- | -------------------------- | ------------------------------------------------------------ |
| Asset receivable line                                 |                            |                                                              |
|                                                       | Asset                      | Shows active assets of current family.                       |
|                                                       | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                       | Loan fee                   | Default value is $0. Decimal is not allowed.                 |
|                                                       | Int. rate %                | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                       | Payment frequency          | Possible values are `Monthly, Quarterly, Annual`             |
|                                                       | Rate type                  | Possible values are `Fixed, Variable`                        |
|                                                       | Inception date             | Date Input                                                   |
|                                                       | Maturity date              | Date Input                                                   |
|                                                       | Term (months)              | Number input. Decimal is not allowed.                        |
|                                                       | Guarantor                  | Contact auto complete.                                       |
|                                                       | Authorised signers         | Multiple can be selected. Contact auto complete.             |
| Asset based LOC                                       |                            |                                                              |
|                                                       | Asset                      | Shows active assets of current family.                       |
|                                                       | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                       | Loan fee                   | Default value is $0. Decimal is not allowed.                 |
|                                                       | Int. rate %                | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                       | Payment frequency          | Possible values are `Monthly, Quarterly, Annual`             |
|                                                       | Rate type                  | Possible values are `Fixed, Variable`                        |
|                                                       | Inception date             | Date Input                                                   |
|                                                       | Maturity date              | Date Input                                                   |
|                                                       | Term (months)              | Number input. Decimal is not allowed.                        |
|                                                       | Guarantor                  | Contact auto complete..                                      |
|                                                       | Authorised Signers         | Multiple can be selected. Contact auto complete.             |
| Asset-secured loan                                    |                            |                                                              |
|                                                       | Asset                      | Shows active assets of current family.                       |
|                                                       | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                       | Loan fee                   | Default value is $0. Decimal is not allowed.                 |
|                                                       | Int. rate %                | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                       | Payment frequency          | Possible values are `Monthly, Quarterly, Annual`             |
|                                                       | Rate type                  | Possible values are `Fixed, Variable`                        |
|                                                       | Inception date             | Date Input                                                   |
|                                                       | Maturity date              | Date Input                                                   |
|                                                       | Term (months)              | Number input. Decimal is not allowed.                        |
|                                                       | Guarantor                  | Contact auto complete..                                      |
|                                                       | Authorised Signers         | Multiple can be selected. Contact auto complete.             |
| Auto Loan                                             |                            |                                                              |
|                                                       | Asset                      | Shows active assets of current family.                       |
|                                                       | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                       | Loan fee                   | Default value is $0. Decimal is not allowed.                 |
|                                                       | Int. rate %                | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                       | Payment frequency          | Possible values are `Monthly, Quarterly, Annual`             |
|                                                       | Rate type                  | Possible values are `Fixed, Variable`                        |
|                                                       | Inception date             | Date Input                                                   |
|                                                       | Maturity date              | Date Input                                                   |
|                                                       | Term (months)              | Number input. Decimal is not allowed.                        |
|                                                       | Guarantor                  | Contact auto complete..                                      |
| Checking                                              |                            |                                                              |
|                                                       | Inception date             | Date Input                                                   |
|                                                       | Wire Instruction           | Simple notes here                                            |
|                                                       | Authorised Signers         | Multiple can be selected. Contact auto complete.             |
|                                                       | Reconciles account         | Multiple can be selected. Contact auto complete..            |
|                                                       | Prepares checks            | Multiple can be selected. Contact auto complete.             |
|                                                       | Bill pay                   | Possible values are : `Bill pay, Managed account, Custody account` Multiple can be selected. |
| Credit card                                           |                            |                                                              |
|                                                       | Maturity date              | Date Input                                                   |
| Credit monitoring                                     |                            |                                                              |
|                                                       | Inception date             | Date Input                                                   |
| Equipment line                                        |                            |                                                              |
|                                                       | Asset                      | Shows active assets of current family.                       |
|                                                       | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                       | Loan fee                   | Default value is $0. Decimal is not allowed.                 |
|                                                       | Int. rate %                | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                       | Payment frequency          | Possible values are `Monthly, Quarterly, Annual`             |
|                                                       | Rate type                  | Possible values are `Fixed, Variable`                        |
|                                                       | Maturity date              | Date Input                                                   |
|                                                       | Inception date             | Date Input                                                   |
|                                                       | Term (months)              | Number input. Decimal is not allowed.                        |
|                                                       | Guarantor                  | Contact auto complete..                                      |
|                                                       | Revolving                  | True or false.                                               |
|                                                       | Authorised Signers         | Multiple can be selected. Contact auto complete.             |
| Home equity LOC                                       |                            |                                                              |
|                                                       | Asset                      | Shows active assets of current family.                       |
|                                                       | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                       | Loan fee                   | Default value is $0. Decimal is not allowed.                 |
|                                                       | Payment frequency          | Possible values are `Monthly, Quarterly, Annual`             |
|                                                       | Inception date             | Date Input                                                   |
|                                                       | Maturity date              | Date Input                                                   |
|                                                       | Term (months)              | Number input. Decimal is not allowed.                        |
|                                                       | Guarantor                  | Contact auto complete..                                      |
|                                                       | Authorised Signers         | Multiple can be selected. Contact auto complete.             |
| Lease                                                 |                            |                                                              |
|                                                       | Asset                      | Shows active assets of current family.                       |
|                                                       | Inception date             | Date Input                                                   |
|                                                       | Guarantor                  | Contact auto complete..                                      |
| Loan                                                  |                            |                                                              |
|                                                       | Inception date             | Date Input                                                   |
|                                                       | Maturity date              | Date Input                                                   |
|                                                       | Recipient                  | Contact auto complete..                                      |
| Working capital LOC, Stock-secured LOC, Unsecured LOC |                            | For types `Stock-secured LOC` , `Unsecured LOC` and `Working capital LOC` following fields are same. |
|                                                       | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                       | Loan fee                   | Default value is $0. Decimal is not allowed.                 |
|                                                       | Int. rate %                | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                       | Payment frequency          | Possible values are `Monthly, Quarterly, Annual`             |
|                                                       | Rate type                  | Possible values are `Fixed, Variable`                        |
|                                                       | Inception date             | Date Input                                                   |
|                                                       | Maturity date              | Date Input                                                   |
|                                                       | Term (months)              | Number input. Decimal is not allowed.                        |
|                                                       | Guarantor                  | Contact auto complete..                                      |
|                                                       | Revolving                  | Users can select if reuired.                                 |
|                                                       | Authorised Signers         | Multiple can be selected. Contact auto complete.             |
| Mortgage Adjustable rate                              |                            |                                                              |
|                                                       | Asset                      | Shows active assets of current family.                       |
|                                                       | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                       | Int. rate %                | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                       | Max Potential rate         | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                       | Initial loan-to-value      | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                       | Appraised value            | Default value is $0. Decimal is not allowed.                 |
|                                                       | Appraisal date             | Date Input                                                   |
|                                                       | Rate Adjustment Frequency  | Decimal is not allowed. Vaules should be entered in between 0 to 100. |
|                                                       | Max Annual Rate Adjustment | Numbers input form. decimal number is allowed.               |
|                                                       | Rate Adjustment date       | Date input                                                   |
|                                                       | Inception date             | Date Input                                                   |
|                                                       | Guarantor                  | Contact auto complete..                                      |
| Mortgage Fixed rate                                   |                            |                                                              |
|                                                       | Asset                      | Shows active assets of current family.                       |
|                                                       | Loan amount                | Default value is $0. Decimal is not allowed.                 |
|                                                       | Int. rate %                | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                       | Initial loan-to-value      | Two decimal digit allowed. Value must not be greater than 100%. |
|                                                       | Appraised value            | Default value is $0. Decimal is not allowed.                 |
|                                                       | Appraisal date             | Date Input                                                   |
|                                                       | Inception date             | Date Input                                                   |
|                                                       | Maturity date              | Date Input                                                   |
|                                                       | Rate Adjustment date       | Date input                                                   |
|                                                       | Guarantor                  | Contact auto complete..                                      |
| Savings                                               |                            |                                                              |
|                                                       | Inception date             | Date Input                                                   |
|                                                       | Wire Instruction           | Simple notes here                                            |
|                                                       | Authorised signers         | Multiple can be selected. Contact auto complete.             |
|                                                       | Reconciles account         | Multiple can be selected. Contact auto complete..            |

### Update

- Can be updated any time. Type can not be changed.

### Delete

- Can be delete any time.

### Close

- System ask for Closed on, Termination fee and Notes. Closed on field is mandatory.

### Re-Open

- Only closed banking can be re-opened.