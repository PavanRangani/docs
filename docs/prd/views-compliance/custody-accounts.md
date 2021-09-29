# Custody Accounts

## Browse page of Custody Accounts

### System Rule

- Records are pulled from the banking module for all families.

- It shows all records of `Checking`, `Credit Card` & `Savings` banking types.

### UX Rule

- Records are grouped by Family.
- Column name
  - Account Type
    - Its shows type of the Banking. It should be one of the `Checking`, `Credit Card`, `Savings`.
  - Entity
    - Entity name of the banking records.
  - Bank/Company
  - Account Nickname
  - Account Number
    - Show account number of banking.
  - Bill Pay
  - Custody
  - Dispose Date
    - If record is active, then shows `-`.
  - Notes
    - If notes is not available then show `-`.
    - If notes is too long, show it in next line. (Never shows ellipsis)
- Sorting order under one family
  - Primary sorting on `Account Type` in order of `Checking`, `Credit Card` and `Savings`
  - Secondary sorting on alphabetical order of `Entity` in order of `Individuals`, `Joint`, `Partnership`, `Foundation`, `Estate`, `Trust`
  - Tertiary sorting on alphabetical order of `Account Nickname`.
- Shows details of `Client Manager` & `Personal Controller` role of the family at right side of family name.
  - Shows label of the roles are: `CM` instead of Client Managers & `PC` instead of Personal Controller.
  - Roles are separated by `|`.
  - Shows only first name of the user.
  - If any of the roles is empty then that role won’t be shown.
- On hover of record, shows hover effect and vertmore action menu at right side.
  - Vertmore actions: `Edit`, `Dispose`, `Restore`, `Delete`.
  - `Dipsose` action is applicable only for active banking.
  - `Restore` action is applicable only for dispose banking.
  - On click of `Edit`, open edit dialog in same page.
  - On click of `Delete`, open delete confirmation dialog on same page.
- On click, open view dialog on the same page.
- Shows export and filter icon on the header.
- On click of `Export` icon, excel file will be downloaded on the same page.
- On click of `Filter` icon, opens filter dialog.

### UI Rule

Mockup //TODO



## Filter

### UX Rule

- Allows to filter records using `Families`, `Custody`,  `Account Type` & `Active/Disposed`.
- `APPLY` button is disabled until the any of the filter is apply. once the filter is applied, `Apply` button is enabled. On click of `Apply`, records will be shown based on filter.
- On click `RESET`, all filters will be reset to default state.

#### Families filter

- Allows to select multiple families
- Shows all families available in application in alphabetical order 
- Default value `All`. All families will be selected.
- When any families are selected, it shows count of selected families in filter. For e.g. when only two families are selected, dropdown shows `2 families`.

#### Custody filter

- Values are: `All`, `Yes` & `No`
- Default value `All`. 

#### Account Type filter

- Its multi select filter.
- Values are : `Checking`, `Credit Card` & `Savings`.
- Default value `All`. All account type will be selected.

#### Active/Disposed filter

- Values are: `All`, `Active` & `Disposed`

- Default value `All`. All banking records will be selected.

### UI Rule

Mockup of Families filter //TODO

Mockup of Custody filter //TODO

Mockup of Account Type filter //TODO

Mockup of Active/Disposed filter //TODO



## Download as Excel

- Allows to download records of `Custody Accounts` as Excel.
- Excel file name: `custody-accounts.xlsx`

Sample Excel File //TODO

