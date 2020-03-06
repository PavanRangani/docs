# Tax Components

## Entity

### Component

| Field Name    | Description                                                  |
| ------------- | ------------------------------------------------------------ |
| Name          | Free form text field                                         |
| Section       | Select box of Section applicable for this Form. See [Master of Form wise section and documents](#master-of-form-wise-section-and-documents) |
| Document      | Select box of Section applicable for selected Section. See [Master of Form wise section and documents](#master-of-form-wise-section-and-documents) |
| Expected      | Date input. Date should not be lower than year of the tax return |
| Received From | Contact Autocomplete.                                        |
| Status        | `Pending`, `Received`, `Sent`, `NA Current Year`<br />Default status is `Pending`. To set Tax return status filed all component status should be other than `Pending` |
| Received      | Date input. Applicable only when Status is `Received` or `Sent`. Date should not be lower than year of the tax return |
| Sent to       | Contact Autocomplete. Applicable only when Status  `Sent`    |
| Sent On       | Date input. Applicable only when Status  `Sent`. Date should not be lower than year of the tax return |
| Final Year    | `True` or `False`.                                           |
| Note          | Multiline field                                              |



## System Requirement

### Auto create component based on last year

- When Tax return is created , System auto creates components based on available latest year return whose status is `Filed` in system
- If tax component is disabled in last year, No components will be created and for this return also it will set to disabled
- If tax component is not disabled in last year, system creates components same as last year
  - All of the components will be in `Pending` status
  - Components whose `Final year` = `True` won't be created

### Auto create component for `Mortgage Adjustable Rate` type Banking

- When  `Mortgage Adjustable Rate` type Banking is created, system auto create tax component for it

### Create Components

- When tax return status = filed, Doesn't allow to create new component with status pending 
  - Shows error : `You can't add component with pending status as federal return is already filed`

### Edit Component

- Allows to change any details
- Doesn't allow to change status to `Pending` once tax return is Filed
  - Shows error: `You can't change component's status to pending as federal return is already filed`

### Delete

- Can be deleted anytime

### Disable Components Track

- Can be disabled anytime.
- On Disable, system ask for confirmation to user about all of the current components will be deleted
- On confirmation, all components will be deleted

### Enable Components Track

- Can be set Enabled from Disable anytime
- When enabled, system will auto create components based on last year

## Master of Form wise section and documents 

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
| Partnership | 1120-S |                                                   |                                     |
|             |        | Fixed Assets                                      |                                     |
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