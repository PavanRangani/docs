# Export

Allows to download various reports

On click of [Export Button](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScRkv6XLzVsE91P-HCBSaGtU) opens dialog

Dialog shows various report names

Based on the type of report it shows filter criteria and `DOWNLOAD` button 

Export button is available only in Organization, Payment and Contribution tab.

### Grant Maker Status Report 

- Both `Contribution` and `Grant` are shown in separate table.
- If there isn't any record available in any table, that table won't be shown.

#### UI Requirement

Mockup //TODO

- Ask for [From & To](#from-and-to-filter)
- Sorting 
  - Primary sorting on `Non-Profit Firm` name and Secondary on alphabetically sorting on `Project` name. 
- Column:
  - Non-Profit Firm
  - Project
  - Granted
    - Show total approved amount
  - Paid
    - Show paid amount 
  - Notes
- Show Grand total at the bottom.



### Grant By Size Report

- Shows all `Paid Payments` of the organization according to the selected year in `From and To` filter.
- Both `Contribution` and `Grant` are shown in separate table.
- If there isn't any record available in any table, that table won't be shown.
- Show `Short Name` if short name is available otherwise show the name of the company.

#### UI Requirement

Mockup //TODO

- Ask for [From & To](#from-and-to-filter)

- Sorting: descending order of Amount.

- Column Name: 

  - `Non-Profit Firm` - Show Organization name or Short name

  - `Organization Category` - Shows Organization Category name

  - `Amount Paid` 

    - Shows `Amount` of Paid payment
    - Decimal is not allowed

    

### Tax Filing Report

- Shows all `Paid Payments` of the organization according to the selected year in `From and To` filter.

- Both `Contribution` and `Grant` are shown in separate table.

- If there isn't any record available in any table, that table won't be shown.

- For Contribution, when the foundation type is DAF, shows the Organization group of that foundation in the Foundation column.


#### UI Requirement

Mockup //TODO

- Ask for [Year](#year-filter)

- Column name

  - `Foundation or Non-Profit Firm` 
    - `Foundation` is for Contribution and `Non-Profit Firm` is for Grant.
  - `Tax ID` 
    - Show EIN number of the organization
  - `Address` 
    - Show Address of the organization.
  - `Amount Paid` 

    - Shows `Amount` of Paid payment
    - Decimal is not allowed
  - `Tax Deductible Amount` 

    - Shows `Tax Deductible Amount` of Paid payment
    - Decimal is not allowed

- Sorting: Alphabetical order of organization name.

- Show `No Records Found` message when no records available.

  


### Grant Detail Report

- It's another Taxation report (other than "Tax Filing Report").

- Report is generated for a Legal Entity and for a Year.

- Represents details of all the payments made by this Legal Entity.

- Payments are grouped by Organization. 

  - Per organization total of `Tax Deductible Amount` are shown.
  - Show total at the bottom of per organization and shows grand total at bottom side.

- For grant given by DAF types foundation, `Tax Deductible Amount` is not applicable. So show total of `Amount` instead of `Tax Deductible Amount`.

- Reports generated for `Foundation` type of Entity has title `Grant Detail Report`. While for any other type of entities it's title is `Contribution Detail Report`.

  > Column: `Gift Tax Value/Amount` is not available in the List. This is explicitly confirmed with Client. This is not needed as it's a Tax Report.

#### UI Requirement

Mockup //TODO

- Ask for [Year](#year-filter)
- Records are grouped by Organization
- Sorting
  - Ascending order of Date
- Column name
  - Date
    - Payment Date
  - Payment Type
    - Shows type of payment.
    - If Payment  has `Stock Name`, shows that stock name in the `Payment Type` column. Otherwise show only payment mode.
    - If payment has `Investment Fund Name`  , shows that company name in the `Payment type` column. 
      - For e.g : `For Public type :Public - ADIC (adic)`.
  - Quantity
    - Show total shares of the paid payment.
    - Decimal allowed
  - Price-per-Share
    - Show total of `Price-per-Share`.
    - Decimal allowed
  - Basis
    - Show total of `Basis`.
    - Decimal allowed
  - Price
    - Amount Field.
    - Decimal allowed
    - For `Public, Digital Currency & ETF - It should be Average Price` , `Private - It should be Price`  & `Mutual Fund - It should be Closing Price`.
  - LOA
    - LOA is not available then show `-`.
  - Tax Deductible Amount
    - Shows `Tax Deductible Amount` of Paid payment
    - Decimal allowed
    - Show Total amount of the `Tax Deductible Amount`.



### Approved Grant Schedule Report

- Show grant details with 5 year (Like `Current year - 3`, `Current Year`, `Current Year +1`).
  - For ex. If current year is `2020`. Show total 5 years like `2017`, `2018`, `2019`,`2020`, `2021`
- Both `Contribution` and `Grant` are shown in separate table.
- If there isn't any record available in any table, that table won't be shown.
- Show `Short Name` if short name is available otherwise show the name of the company. Also show `Organization group` of that organization.

#### UI Requirement

Mockup //TODO

- Sorting

  - Primary sorting on the alphabetical order of the organization name, Secondary sorting on the alphabetically order of the Project name.

- Column Name

  - `Non-Profit Firm` 
    - Show Organization name or short name.
    - Show organization group in bracket. 
  - `Project` - Project of the organization
  - Year Column 
    - If all payments are `Pending` , shows Approved amount of that payment.
    - If all payments are `Paid`, show `Paid` amount of that payment.
      - If both `Pending` and `Paid` payments are available then show total of `Approved amount` for pending payment and `Paid` amount for paid.
  - Total Amount
    - show total amount of raw.
  
  

### From and To Filter

- Shows current year prefill in both fields
- `From`  shows all available year for which records exists
- `To`  shows year selected in `From` and all other available years which is higher than year selected in `From`
- Sorting : Ascending order of year. Both are selected dropdown.



###  Year Filter

- Shows current year prefill in `Year`
- Sorting : Ascending order of year and selected dropdown.
- Shows all available years for which records exists in dropdown.

