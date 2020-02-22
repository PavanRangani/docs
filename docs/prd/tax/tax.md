# Tax return

## Overview

- Each type of Legal entity has some predefined form for Tax return
- There can be only one Tax return of same form for any legal entity.



## Entity

- Tax return has
  - Basic details
  - Components
  - Federal details
    - Payments
      - Notes
    - General
      - Dates
      - Summary Information
      - Carryforward
      - Dependencies
      - K1 distribution partners (for 1065)
  - State wise details
    - Payments
      - Notes
    - General
      - Dates
      - Carryforward



### Basic details

| Field Name           | Description                                                  |                                       |
| -------------------- | ------------------------------------------------------------ | ------------------------------------- |
| Tax Year             |                                                              |                                       |
| Form                 | Shows form                                                   |                                       |
| Preparer             | Contact Autocomplete                                         |                                       |
| Preparer (Firm)      | Company Autocomplete                                         |                                       |
| EFTPS                | Bank autocomplete of type Checking<br />Only shows Active bank account (Not Closed ) | Applicable only for some Forms        |
| Who Issues Payments  | One of the following options. Default option is `Client`<br />- `Clarius on Behalf of the Client`<br />- `Client`<br />- `Third Party` | Applicable only for some Forms        |
| EFTPS Pin (*)        | Number input. Only 4 digits allowed                          | Applicable only when EFTPS is enabled |
| Enrollment Number(*) | Number input. Only 18 digits allowed                         | Applicable only when EFTPS is enabled |
| Status               |                                                              |                                       |

## System requirement

### Components

### Create Tax return

### Edit Tax return

### Add State

### Disable Payment

### Enable Payment

### Disable Components Track

### Enable Components Track

### Download PDF

### Archive

### Delete

## Master data

### Legal entity wise forms, section and document

| Entity name | Form | Section name                              | Document name                 |
| ----------- | ---- | ----------------------------------------- | ----------------------------- |
| Individuals |      |                                           |                               |
|             | 1040 |                                           |                               |
|             |      | International Disclosures                 |                               |
|             |      |                                           | Summary                       |
|             |      |                                           | Worksheet                     |
|             |      | Schedule H: Household Employees           |                               |
|             |      |                                           | Other                         |
|             |      |                                           | Summary                       |
|             |      |                                           | W-2/W-3                       |
|             |      |                                           | Worksheet                     |
|             |      | Schedule E: Partnership / Flow Through    |                               |
|             |      |                                           | K1                            |
|             |      |                                           | Summary                       |
|             |      |                                           | Worksheet                     |
|             |      | Non-Investment Income                     |                               |
|             |      |                                           | 1099-MISC                     |
|             |      |                                           | 1099-OID                      |
|             |      |                                           | 1099-R                        |
|             |      |                                           | RE Tax                        |
|             |      |                                           | SSA-1099                      |
|             |      |                                           | Summary                       |
|             |      |                                           | W2                            |
|             |      |                                           | Worksheet                     |
|             |      | Schedule D: Capital Gains                 |                               |
|             |      |                                           | 1099                          |
|             |      |                                           | Summary                       |
|             |      |                                           | Worksheet                     |
|             |      | Schedule C: Sole Proprietorship / Options |                               |
|             |      |                                           | 1099                          |
|             |      |                                           | Other                         |
|             |      |                                           | Summary                       |
|             |      |                                           | Worksheet                     |
|             |      | Schedule A: Itemized Deductions           |                               |
|             |      |                                           | 1095-B                        |
|             |      |                                           | 1098                          |
|             |      |                                           | 1099-R                        |
|             |      |                                           | PP Tax                        |
|             |      |                                           | RE Tax                        |
|             |      |                                           | Summary                       |
|             |      |                                           | Worksheet                     |
|             |      | Schedule F: Farming                       |                               |
|             |      |                                           | K1                            |
|             |      |                                           | Summary                       |
|             |      |                                           | Worksheet                     |
|             |      | Schedule B: Interest and Dividends        |                               |
|             |      |                                           | 1099-R                        |
|             |      |                                           | Summary                       |
|             |      |                                           | W2                            |
|             |      |                                           | Worksheet                     |
|             |      |                                           | 1099-INT                      |
|             |      |                                           | 1099-DIV                      |
|             |      |                                           | 1098-T                        |
|             | 709  |                                           |                               |
|             |      | Part I - Gifts                            |                               |
|             |      |                                           | Financial Statements          |
|             |      |                                           | Summary                       |
|             |      |                                           | Worksheet                     |
|             |      |                                           | WS                            |
|             |      |                                           |                               |
| Joint       |      |                                           |                               |
|             | 1040 |                                           | Same as Individuals 1040 form |
|             |      |                                           |                               |
| Partnership |      |                                           |                               |
|             | 1065 |                                           |                               |
|             |      | Contributions                             |                               |
|             |      |                                           | Summary                       |
|             |      |                                           | Worksheet                     |
|             |      |                                           | WS                            |
|             |      | Partner K1's                              |                               |
|             |      |                                           | K1                            |
|             |      |                                           | Summary                       |
|             |      |                                           | Worksheet                     |
|             |      | Distributions                             |                               |
|             |      |                                           | Summary                       |
|             |      |                                           | Worksheet                     |
|             |      |                                           | WS                            |
|             |      | Fixed Assets                              |                               |
|             |      |                                           | Summary                       |
|             |      |                                           | Worksheet                     |
|             |      |                                           | WS                            |
|             |      | Balance Sheet                             |                               |
|             |      |                                           | Summary                       |
|             |      |                                           | Worksheet                     |
|             |      | Allocations                               |                               |
|             |      |                                           | Summary                       |
|             |      |                                           | Worksheet                     |
|             |      |                                           | WS                            |
|             |      | Member Information                        |                               |
|             |      |                                           | Summary                       |
|             |      |                                           | Worksheet                     |
|             |      |                                           | WS                            |
|             |      | Intangible Assets                         | Summary                       |
|             |      |                                           | Worksheet                     |
|             |      |                                           | WS                            |
|             |      | Income Statement                          |                               |
|             |      |                                           | 1098                          |
|             |      |                                           | 1099                          |
|             |      |                                           | Financial Statements          |
|             |      |                                           | K1                            |
|             |      |                                           | Summary                       |
|             |      |                                           | Worksheet                     |

| Entity name | Form   | Section name                                      | Document name                       |
| ----------- | :----- | ------------------------------------------------- | ----------------------------------- |
| Partnership | 1120-S | Fixed Assets                                      |                                     |
|             |        |                                                   | Summary                             |
|             |        |                                                   | Worksheet                           |
|             |        |                                                   | WS                                  |
|             |        | Stock/Warrant Compensation                        |                                     |
|             |        |                                                   | Summary                             |
|             |        |                                                   | Worksheet                           |
|             |        |                                                   | WS                                  |
|             |        | Income Statement                                  |                                     |
|             |        |                                                   | Financial Statements                |
|             |        |                                                   | K1                                  |
|             |        |                                                   | Summary                             |
|             |        |                                                   | Worksheet                           |
|             |        | Partner K1's                                      |                                     |
|             |        |                                                   | Summary                             |
|             |        |                                                   | Worksheet                           |
|             |        |                                                   | WS                                  |
|             |        | Balance Sheet                                     |                                     |
|             |        |                                                   | Financial Statements                |
|             |        |                                                   | Summary                             |
|             |        |                                                   | Worksheet                           |
|             |        |                                                   | WS                                  |
|             |        | 1099 Payments                                     |                                     |
|             |        |                                                   | Summary                             |
|             |        |                                                   | Worksheet                           |
|             |        |                                                   | WS                                  |
|             |        | Officer Compensation                              |                                     |
|             |        |                                                   | Summary                             |
|             |        |                                                   | Worksheet                           |
|             |        |                                                   | WS                                  |
| Foundations |        |                                                   |                                     |
|             | 990PF  |                                                   |                                     |
|             |        | Part VI - Tax calculation                         |                                     |
|             |        |                                                   | Summary                             |
|             |        |                                                   | Worksheet                           |
|             |        | Part I - Income Statement                         |                                     |
|             |        |                                                   | 1099-INT                            |
|             |        |                                                   | 1099-MISC                           |
|             |        |                                                   | Brokerage                           |
|             |        |                                                   | Gifts                               |
|             |        |                                                   | K1                                  |
|             |        |                                                   | Quickbooks                          |
|             |        |                                                   | Summary                             |
|             |        |                                                   | Worksheet                           |
|             |        | Part I - Minimum investment return                |                                     |
|             |        |                                                   | Excel                               |
|             |        |                                                   | Summary                             |
|             |        |                                                   | Worksheet                           |
|             |        | Part VIII - Expense detail                        |                                     |
|             |        |                                                   | Summary                             |
|             |        |                                                   | Worksheet                           |
|             |        | Part II - Balance sheet                           |                                     |
|             |        |                                                   | Brokerage                           |
|             |        |                                                   | Summary                             |
|             |        |                                                   | Worksheet                           |
|             |        | Part VII - Informational questionnaire            |                                     |
|             |        |                                                   | Summary                             |
|             |        |                                                   | Worksheet                           |
|             |        | Part IX - Summary of direct charitable activities |                                     |
|             |        |                                                   | Summary                             |
|             |        |                                                   | Worksheet                           |
|             |        | Part IV - Capital gain/loss detail                |                                     |
|             |        |                                                   | Summary                             |
|             |        |                                                   | Worksheet                           |
| Estates     |        |                                                   |                                     |
|             | 1041   |                                                   |                                     |
|             |        | Part III - Distributions                          |                                     |
|             |        |                                                   | Summary                             |
|             |        |                                                   | Worksheet                           |
|             |        | Part II - Deductions                              |                                     |
|             |        |                                                   | Summary                             |
|             |        |                                                   | Worksheet                           |
|             |        | Part I - Income                                   |                                     |
|             |        |                                                   | 1099                                |
|             |        |                                                   | K1                                  |
|             |        |                                                   | Summary                             |
|             |        |                                                   | Trustee Information Letter          |
|             |        |                                                   | Worksheet                           |
|             | 706    |                                                   | There is no any section or Document |
| Trust       |        |                                                   |                                     |
|             | 1041   |                                                   | Same as above                       |
|             | 5227   |                                                   |                                     |
|             |        | Part IV - Balance Sheet                           |                                     |
|             |        |                                                   | 1099                                |
|             |        |                                                   | Summary                             |
|             |        |                                                   | Worksheet                           |
|             |        | Part I - Income                                   |                                     |
|             |        |                                                   | 1099                                |
|             |        |                                                   | Summary                             |
|             |        |                                                   | Worksheet                           |
|             |        | Part II - Deductions                              |                                     |
|             |        |                                                   | 1099                                |
|             |        |                                                   | Summary                             |
|             |        |                                                   | Worksheet                           |
|             |        | Part III - Distributions                          |                                     |
|             |        |                                                   | 1099                                |
|             |        |                                                   | Summary                             |
|             |        |                                                   | Worksheet                           |



### Payment & Due dates

| Form   | Payment dates                          | Due dates | Extended due dates | Final extension |
| ------ | -------------------------------------- | --------- | ------------------ | --------------- |
| 1040   | Apr 15, Jun 15, Sep 15, Jan 15, Apr 15 | Apr 15    | Oct 15             |                 |
|        |                                        |           |                    |                 |
| 709    | Apr 15                                 | Apr 15    | Oct 15             |                 |
|        |                                        |           |                    |                 |
| 1065   | Not Applicable                         | Mar 15    | Sep 15             |                 |
|        |                                        |           |                    |                 |
| 1120-S | Mar 15, Jun 15, Sep 15, Dec 15, Mar 15 | Mar 15    | Sep 15             |                 |
|        |                                        |           |                    |                 |
| 990PF  | May 15, Jun 15, Sep 15, Dec 15, May 15 | May 15    | Nov 15             |                 |
|        |                                        |           |                    |                 |
| 706    | Apr 15                                 | Apr 15    | Oct 15             |                 |
|        |                                        |           |                    |                 |
| 1041   | Apr 15, Jun 15, Sep 15, Jan 15, Apr 15 | Apr 15    | Sep 30             |                 |
|        |                                        |           |                    |                 |
| 5227   | Not Applicable                         | Apr 15    | Jul 15             | Oct 15          |



## UX planning

- Create tax return
- Disable Payment
- Enable Payment
- Disable Components Track
- Enable Components Track

# UI specs

### Summary

### Active

### Archived

- Error :  TaxReturn with same ''year', 'form' and' 'legalEntity' already exist.



For some form, payments are not applicable, so general edit dialog is also different