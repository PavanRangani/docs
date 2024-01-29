# Custody Accounts

## Browse page of Custody Accounts

### System Rule

- Records are pulled from the banking module for all current families.
- It shows all records of `Checking`, `Credit Card` & `Savings` banking types.
- Applicable only for Admin users.

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

[Mockup](https://drive.google.com/file/d/1KkbDj_LGL-8QJDwkz8IHOvdiXRHwWjDc/view?usp=sharing)


## Filter

### UX Rule

- Allows to filter records using `Families`, `Custody`,  `Account Type` & `Active/Disposed`.
- `APPLY` button is disabled until the any of the filter is apply. once the filter is applied, `Apply` button is enabled. On click of `Apply`, records will be shown based on filter.
- On click `RESET`, all filters will be reset to default state.

#### Families filter

- Allows to select multiple families
- Shows all families available in application in alphabetical order 
- Default value `All Families`. All families will be selected.
- When more than 2 families are selected, it shows count of selected families in filter. For e.g. when only two families are selected, dropdown shows `2 families`.
- When one family is selected, show that company name in the families filter.

#### Custody filter

- Values are: `All`, `Yes` & `No`
- Default value `All`. 

#### Account Type filter

- Its multi select filter.
- Values are : `Checking`, `Credit Card` & `Savings`.
- Default value `All`. All account type will be selected.
- When more than 2 types are selected, it shows count of selected types in filter. For e.g. when only two types are selected, dropdown shows `2 Account Types`.

#### Active/Disposed filter

- Values are: `All`, `Active` & `Disposed`
- Default value `All`. All banking records will be selected.

### UI Rule

[Mockup](https://drive.google.com/file/d/1xChuZjSTCTDWmGQw1uPf8M8y93_szgr-/view?usp=sharing)


## Download as Excel

- Allows to download records of `Custody Accounts` as Excel.
- Excel file name: `custody-accounts.xlsx`
- If any column has no value, shows `-`.
- Columns are same as UI but two additional columns show `Client Manager` and `Personal Accountant`
  - If multiple users are added to a role, all those users in a single cell are shown in a new line and separated by commas(,).
  - Shows `(L)` for user marked as a lead. Mark as lead user shown first in the column and then the other user is alphabetically sorted.

[Sample Excel File](https://docs.google.com/spreadsheets/d/1gSGNySE9SQXZACS39zVRLjewlb5WdjMD/edit?usp=sharing&ouid=108870014519956519924&rtpof=true&sd=true)

