# Reports (Export)

## Export

- Allows to download various reports.
- On click of [Export Button](https://drive.google.com/file/d/1gUuKqL8s3XpoCSMeCpS4GiO0YoOHboPV/view?usp=sharing) opens dialog.
- Dialog shows various report names.
- Based on the type of report it shows `From and To` & `Year` filter and `DOWNLOAD` button .

### From and To Filter

- Shows current year prefill in both fields
- `From`  shows all available year for which records exists
- `To`  shows year selected in `From` and all other available years which is higher than year selected in `From`
- Sorting : Ascending order of year. Both are selected dropdown.

### Year Filter

- Shows current year prefill in `Year`
- Sorting : Ascending order of year and selected dropdown.
- Shows all available years for which records exists in dropdown.




## Grant Maker Status Report 

### System Requirement

- Show `Short Name` if short name is available otherwise show the name of the company. Also show `Organization group` of that organization.
- If the grant has 2 payments for the same project. So the total "Granted" and "Paid" amount of both these payments will be shown in this column.

### UX Requirement

- Ask for [From & To](#from-and-to-filter)
- Both Contribution and Grant are shown in separate table.
- If there isn't any record available in any table, that table won't be shown.
- Download file name : {legal-entity-id}-grant-status.pdf
- Column:
  - Foundation or Non-Profit Firm
    - `Foundation` is for Contribution and `Non-Profit Firm` is for Grant.
  - Project
    - Not applicable for Contribution.
  - Granted
    - Show total approved amount.
    - Not applicable for Contribution.
    - Show total at the bottom.
  - Paid
    - Show total of `Paid` amount at the bottom.
  - Notes
    - When Notes is too long it will be shown in multiple line (Never show ellipses)
- Sorting 
  - Primary sorting on `Non-Profit Firm` name and Secondary on alphabetically sorting on `Project` name. 

### UI Requirement

[Mockup](https://drive.google.com/file/d/18OQgxhgucL6Bn-t9G9FT3HYJpdmw4swS/view?usp=sharing)

- When no records available in PDF then show `No Records Found` message.



## Grant By Size Report

### System Requirement

- Shows all `Paid Payments` of the organization according to the selected year in `From and To` filter.
- Show `Short Name` if short name is available otherwise show the name of the company.

### UX Requirement

- Ask for [From & To](#from-and-to-filter)
- Both `Contribution` and `Grant` are shown in separate table.
- If there isn't any record available in any table, that table won't be shown.
- Download file name : {legal-entity-id}-grant-by-size.pdf
- Column Name: 

  - Non-Profit Firm or Foundation
    - `Foundation` is for Contribution and `Non-Profit Firm` is for Grant.
    - For Grant, show `Organization name` or `Short name`.
  - Organization Category
    - Shows Organization Category name
    - Not applicable for Contribution.
  - Amount Paid
    - Shows `Amount` of Paid payment
    - Show total at the bottom.

- Sorting: Descending order of Amount.

### UI Requirement

[Mockup](https://drive.google.com/file/d/18Q7bzEqrsTYLrVfpzxznloOQFAiVWXu-/view?usp=sharing)

- When no records available in PDF then show `No Records Found` message.


## Tax Contribution Report

## System Rule

- Its a taxation report.
- Report is generated for a legal entity and for a year. 
- Shows all Paid Payments of the organization according to the selected year in From and To filter.
  - Represents details of all the payments made by this Legal Entity.
- For Contribution, when the foundation type is DAF, shows the Organization group of that foundation.
  - `Tax ID` and `Address` will show the details of that organization group.


## UX Rule

- Ask for [year](#year-filter)
- Download file name : `{legal-entity-id}-tax-contribution-report.pdf`
- Shows proper message when no data available.
- Shows lot details of the payment.
- Column name
  - Payment Type
    - Shows type of payment.
    - If payment has Stock Name or Investment Fund Name then show that company name instead of type.
    - Show Stock Symbol in bracket of Public, ETF, Mutual Fund types company.
  - Purchase Date
    - Date when lot is purchased.
  - High Price
    - High price of the lots
    - 2 decimal value appears.
  - Low Price
    - Low price of the lots
    - 2 decimal value appears.
  - Avg. Price
    - For `Public`, `Digital Currency` & `ETF` - It should be Average Price , Private - It should be `Price` & `Mutual Fund` - It should be Closing Price.
    - `Avg. Price = (High Price + Low Price) / 2`
    - 2 decimal value appears.
  - Quantity
    - Show `No of Shares` of the each lots.
    - Shows total of the each lot.
    - 3 decimal value appears.
  - Tax Deductible
    - Shows Tax Deductible Amount of Paid payment of the each lots. Decimal value doesn't appears.
    - Shows total at bottom.
  - Basis
    - Shows Basis amount of Paid payment of the each lots.
    - Decimal value doesn't appears.
    - Shows total at bottom.
  - Amount Paid
    - Shows Amount of Paid payment of the each lots.
    - Show total at the bottom.
- Sorting
  - Reports are grouped by Organization Name. Each group has its own table.
  - In each table, records are sorting on descending order of date.
- Shows `Split-Interest Trust` section as per same rules of UI
- Shows grand total at bottom to show total of all Contribution, Grants and Split-Interest trust.



## UI Rule

[Mockup](https://drive.google.com/file/d/10-ELNREKMQ0_Sw9sI_RTWg4xjZdD5cQo/view?usp=share_link)

- Message when no data available: `No Records Found`.



## Approved Grant Schedule Report

### System Requirement

- Show grant details with 5 year (Like `Current year - 3`, `Current Year`, `Current Year +1`).
  - For ex. If current year is `2020`. Show total 5 years like `2017`, `2018`, `2019`,`2020`, `2021`
- Show `Short Name` if short name is available otherwise show the name of the company. Also show `Organization group` of that organization.

### UX Requirement

- Both `Contribution` and `Grant` are shown in separate table.
- If there isn't any record available in any table, that table won't be shown.
- Download file name : {legal-entity-id}-grant-schedule.pdf

- Column Name

  - Non-Profit Firm 
    - Show Organization name or short name.
    - Show `Organization Group` in bracket. 
  - Project 
    - Project of the organization
    - Not applicable for Contribution
  - Year Column
    - If all payments are `Pending` , shows Approved amount of that payment.
    - If all payments are `Paid`, show `Paid` amount of that payment.
      - If both `Pending` and `Paid` payments are available then show total of `Approved amount` for pending payment and `Paid` amount for paid.
    - Show total at the bottom.
  - Total Amount
    - show total amount of raw.
    - Show total at the bottom.
- Sorting

  - Primary sorting on the alphabetical order of the organization name, Secondary sorting on the alphabetically order of the Project name.

### UI Requirement

[Mockup](https://drive.google.com/file/d/1hNqMWhTCeGOtT5XVjIFyVdtNDjYDrQF9/view?usp=sharing)

- When no records available in PDF then show `No Records Found` message.