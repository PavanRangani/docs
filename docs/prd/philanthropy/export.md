# Reports (Export)

## Export

- Allows to download various reports.
- On click of [Export Button](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScRkv6XLzVsE91P-HCBSaGtU) opens dialog.
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

[Mockup](https://drive.google.com/file/d/1bH_wMSQf4YNlzW-TTMlfQ2Ls17x7fyMa/view?usp=sharing)

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

[Mockup](https://drive.google.com/file/d/1BSY0x1saHcPGtCtA-raL3waU3hnNYewl/view?usp=sharing)

- When no records available in PDF then show `No Records Found` message.



## Tax Filing Report

### System Requirement

- Shows all `Paid Payments` of the organization according to the selected year in `From and To` filter.
- For Contribution, when the foundation type is DAF, shows the Organization group of that foundation in the Foundation column. 
  - `Tax ID` and `Address` columns will also show the details of that organization group.


### UX Requirement

- Ask for [Year](#year-filter)
- Both `Contribution` and `Grant` are shown in separate table.
- If there isn't any record available in any table, that table won't be shown.
- Download file name : {legal-entity-id}-tax-filing-report.pdf
- Column name

  - Foundation or Non-Profit Firm
    - `Foundation` is for Contribution and `Non-Profit Firm` is for Grant.
    - For DAF type foundation Contributions, shows the `Organization Group` of that foundation in the Foundation column. 
  - Tax ID
    - Show EIN number of the organization
    - For DAF type foundation Contributions, show the `EIN` of that `Organization Group`.
  - Address
    - Show Address of the organization.
    - For DAF type foundation Contributions, show the `Address` of that `Organization Group`.
  - Amount Paid

    - Shows Amount of Paid payment
    - Show total at the bottom.
  - Tax Deductible Amount
  
    - Shows `Tax Deductible Amount` of Paid payment
    - Show total at the bottom.
- Sorting: Alphabetical order of organization name.

### UI Requirement

[Mockup](https://drive.google.com/file/d/1Qmi9auhygdoK3OwywdwXmMBCd-twnJR5/view?usp=sharing)

- When no records available in PDF then show `No Records Found` message.



## Grant Detail Report

### System Requirement

- It's another Taxation report (other than "Tax Filing Report").

- Report is generated for a Legal Entity and for a Year.

- Represents details of all the payments made by this Legal Entity.

- For grant given by foundation, `Tax Deductible Amount` is not applicable. Show total of `Amount` instead of `Tax Deductible Amount`.

- Reports generated for `Foundation` type of Entity has title `Grant Detail Report`. While for any other type of entities it's title is `Contribution Detail Report`.

  > Column: `Amount` is not available in the List of `Contribution Detail Report`. This is explicitly confirmed with Client. This is not needed as it's a Tax Report.


### UX Requirement

- Ask for [Year](#year-filter)
- Payments are grouped by Organization. 

  - Per organization total of `Tax Deductible Amount` & `Amount` are shown.
  - Show total at the bottom of per organization and shows grand total at bottom side.
- Download file name : `Grant-detail({legal-entity-id}).pdf`
- Column name
  - Date
    - Date of Payment.
  - Payment Type
    - Shows type of payment.
    - If payment has `Stock Name` or `Investment Fund Name` then show that company name instead of type.
    - Show `Stock Symbol` in bracket of Public, ETF, Mutual Fund types company. 
  - Quantity
    - Show total  `No of Shares` of the paid payment.
    - 3 decimal value appears.
  - Price
    - For `Public`, `Digital Currency` & `ETF` - It should be Average Price , `Private` - It should be Price  & `Mutual Fund` - It should be Closing Price.
    - 2 decimal value appears.
  - Tax Deductible Amount or Amount
    - Show `Amount` in the Grant Detail Report & show `Tax Deductible Amount` in the Contribution Detail Report.
    - Shows `Tax Deductible Amount` or `Amount`of Paid payment.
    - 2 decimal value appears.
  - Basis
    - Show total `Basis` of the paid payment.
    - 2 decimal value appears.
  - LOA
    - LOA is not available then show `-`.
- Sorting
  - Primary sorting on Alphabetically order of Organization name and  secondary sorting on descending order of Date.

### UI Requirement

Mockup of [Grant Detail report](https://drive.google.com/file/d/1scqFDYIy5yd1fDswFOpy0Ws7axRR2Jnl/view?usp=sharing) & [Contribution Detail report](https://drive.google.com/file/d/1P60DvEDHMJotkgk_9uvjHZROt-7B29Gu/view?usp=sharing) 

- When no records available in PDF then show `No Records Found` message.




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

[Mockup](https://drive.google.com/file/d/1m5F8YUYQ16ToytdHZzGWxlqAIN4lSPTE/view?usp=sharing)

- When no records available in PDF then show `No Records Found` message.