# Reports (Export as PDF or Excel)

## Export

- Allows to download various reports.
- User can export records in PDF or Excel.
- On click of [Export Button](https://drive.google.com/drive/u/0/folders/1WPVCEKtA9xae4FH-rcdN0NKnuFaxXeZr) opens dialog.
- Dialog shows various report names.
- Based on the type of report it shows `From and To` & `Year` filter and `EXPORT PDF` & `EXPORT EXCEL` button.

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
- For PDF,
  - If there isn't any record available in any table, that table won't be shown.
  - Download file name : `{legal-entity-id}-grant-status.pdf`
- For Excel
  - If there isn't any records available in any table, table will be shown without records.
  - Shows file information like `Generated on`, `From`, `To`, `Entity Name`, `Report Name` with downloaded file.
  - Download file name: `{legal-entity-id}-grant-status.xlsx`
- If value is not available, shows - in the PDF and shows empty cell in the Excel.
- Column:
  - Type
    - Applicable only for Excel.
    - It shows type either Contribution or Grant.
  - Foundation or Non-Profit Firm
    - Shows `Foundation` for Contribution and Shows `Non-Profit Firm` for Grant.
  - Project
    - Not applicable for Contribution.
  - Granted
    - Show total approved amount.
    - Not applicable for Contribution.
    - Show total at the bottom.
      - For excel, shows total with formula.
  - Grant Paid
    - It shows Total paid of each Grant. Not applicable for Contribution. 
    - Show total of `Paid` amount at the bottom.
    - For excel, shows total with formula.
  - Contribution Paid
    - It shows total paid of each contribution. Not applicable for Contribution. 
    - Show total of `Paid` amount at the bottom.
    - For excel, shows total with formula.
  - Notes
    - When Notes is too long it will be shown in multiple line (Never show ellipses)
- Sorting 
  - Primary sorting on Type and secondary sorting on `Foundation / Non-Profit Firm` name and territory sorting on `Project` name in alphabetically order. 

### UI Requirement

[PDF](https://drive.google.com/file/d/18OQgxhgucL6Bn-t9G9FT3HYJpdmw4swS/view?usp=sharing)

[Excel](https://docs.google.com/spreadsheets/d/1lD1W9173YwakTGVggKwKZw2oyILWtIoM/edit#gid=91858293)

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
- For PDF,
  - If there isn't any record available in any table, that table won't be shown.
  - Download file name : `{legal-entity-id}-grant-by-size.pdf`
- For Excel
  - If there isn't any records available in any table, table will be shown without records.
  - Shows file information like `Generated on`, `From`, `To`, `Entity Name`, `Report Name` with downloaded file.
  - Download file name: `{legal-entity-id}-grant-by-size.xlsx`
- If value is not available, shows - in the PDF and shows empty cell in the Excel.
- Column Name: 
  - Type
    - Applicable only for Excel.
    - It shows type either Contribution or Grant.
  - Foundation / Non-Profit Firm
    - For Contribution, shows `Foundation` name.
    - For Grant, show `Organization name` or `Short name`.
  - Organization Category
    - Shows Organization Category name
  - Grant Amount Paid
    - Shows Paid `Amount` of Grant.
    - Show total at the bottom.
      - For excel, shows total with formula.
  - Contribution Amount Paid
    - Shows Paid `Amount` of Contribution.
    - Show total at the bottom.
      - For excel, shows total with formula.
- Sorting: Contribution records are showing fist and Grant records are shown second. Under each type records are alphabetical sorted on Foundation / Non-Profit Firm name.

### UI Requirement

[PDF](https://drive.google.com/file/d/18Q7bzEqrsTYLrVfpzxznloOQFAiVWXu-/view?usp=sharing)

[Excel](https://docs.google.com/spreadsheets/d/1lD1W9173YwakTGVggKwKZw2oyILWtIoM/edit#gid=1595990631)

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
- For PDF,
  - If there isn't any record available in any table, that table won't be shown.
  - Download file name : `{legal-entity-id}-tax-contribution-report.pdf`
- For Excel
  - If there isn't any records available in any table, table will be shown without records.
  - Shows file information like `Generated on`, `Year`, `Entity Name`, `Report Name` with downloaded file.
  - Download file name: `{legal-entity-id}-tax-contribution-report.xlsx`
- Shows proper message when no data available.
- Shows lot details of the payment. Each payment have one table.
- If value is not available, shows - in the PDF and shows empty cell in the Excel.
- Column name
  - Type
    - Applicable only for Excel.
    - It shows type either Contribution or Grant.
  - Foundation / Non-Profit Firm / Trust Name
    - For Contribution, shows foundation name. 
    - For `Grant`, shows non-profit firm company name.
  - Tax ID
    - It shows the EIN of the Non-profit company or Foundation.
  - Address
    - It shows address of the Non-profit company or Foundation.
  - Payment Date
    - Applicable only for Excel
    - It shows the payment date
  - Payment Mode
    - Applicable only for Excel
    - It shows the payment mode.
  - Payment Type
    - Shows type of payment.
    - For PDF, If payment has Stock Name or Investment Fund Name then show that company name instead of type.
    - For Excel, 
      - Shows stock name or fund name of the payment. 
      - If payment has no stock or fund, shows empty cell.
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
    - Shows total at bottom.
      - For excel, shows total with formula.
  - Quantity
    - Show `No of Shares` of the each lots.
    - Shows total of the each lot.
      - For excel, shows total with formula.
    - 3 decimal value appears.
  - Tax Deductible
    - Shows Tax Deductible Amount of Paid payment of the each lots. Decimal value doesn't appears.
    - Show total of each lot and each grant at bottom of each table.
    - Shows grand total (all table) at last of file.
    - For excel, shows total with formula.
  - Basis
    - Shows Basis amount of Paid payment of the each lots.
    - Decimal value doesn't appears.
    - Shows total of each lot
      - For excel, shows total with formula.
  - Amount Paid
    - Shows Amount of Paid payment of the each lots.
    - Show total of each lot and each grant at bottom of each table.
    - Shows grand total (all table) at last of file.
    - For excel, shows total with formula.
- Sorting
  - Contributions are shown first, Grants are shown second and Split Interest trust are shown at last.
  - Under each type, primary sorting on alphabetocal order of name and secondary sorting on descending order of Payment date.
- Shows `Split-Interest Trust` section as per same rules of UI
- Shows grand total at bottom to show total of all Contributions, Grants and Split-Interest trust.

## UI Rule

[PDF](https://drive.google.com/file/d/10-ELNREKMQ0_Sw9sI_RTWg4xjZdD5cQo/view?usp=share_link)

[Excel](https://docs.google.com/spreadsheets/d/1lD1W9173YwakTGVggKwKZw2oyILWtIoM/edit#gid=1192373206)

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
- For PDF,
  - If there isn't any record available in any table, that table won't be shown.
  - Download file name : `{legal-entity-id}-grant-schedule.pdf`
- For Excel
  - If there isn't any records available in any table, table will be shown without records.
  - Shows file information like `Generated on`, `From`, `To`, `Entity Name`, `Report Name` with downloaded file.
  - Download file name: `{legal-entity-id}-grant-schedule.xlsx`
- If value is not available, shows - in the PDF and shows empty cell in the Excel.
- Column Name
  - Type
    - Applicable only for Excel.
    - It shows type either Contribution or Grant.
  - Non-Profit Firm or Foundation
    - `Foundation` is for Contribution and `Non-Profit Firm` is for Grant.
    - Show Organization name or short name.
    - Show `Organization Group` in bracket. 
  - Project 
    - Project of the organization
    - Not applicable for Contribution
  - Year Column
    - Shows 5 year payemnt (`Current - 2, Current - 1, Current, Current + 1, Current +2)
    - If all payments are `Pending`, shows Approved amount of that payment.
    - If all payments are `Paid`, show `Paid` amount of that payment.
      - If both `Pending` and `Paid` payments are available then show total of `Approved amount` for pending payment and `Paid` amount for paid.
    - Show total at the bottom.
  - Total Amount
    - Show total amount of each raw. 
    - Show total amount of each column of year.
    - For excel, shows total with formula.
- Sorting
  - Contribution records are showing fist and Grant records are shown second.
  - Under each type, primary sorting on the alphabetical order of the organization name, Secondary sorting on the alphabetically order of the Project name.

### UI Requirement

[PDF](https://drive.google.com/file/d/1hNqMWhTCeGOtT5XVjIFyVdtNDjYDrQF9/view?usp=sharing)

[Excel](https://docs.google.com/spreadsheets/d/1lD1W9173YwakTGVggKwKZw2oyILWtIoM/edit#gid=743000400)

- When no records available in PDF then show `No Records Found` message.
