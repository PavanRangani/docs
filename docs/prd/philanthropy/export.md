# Export

Allows to download various reports

On click of [Export Button](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScRkv6XLzVsE91P-HCBSaGtU) opens dialog

Dialog shows various report names

Based on the type of report it shows filter criteria and `DOWNLOAD` button 

Export button is available only in Organization and Payment tab.

### Grant Maker Status 

- 

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
- Show total of `Granted` and `Paid` in bottom.



### Grant By Size

- Shows all `Paid Payments` of the organization according to the selected year in `From and To` filter.

#### UI Requirement

Mockup //TODO

- Ask for [From & To](#from-and-to-filter)

- Sorting: descending order of Amount.

- Column Name: 

  - `Non-Profit Firm` - Show Organization name

  - `Organization Category` - Shows Organization Category name

  - `Amount Paid` 

    - Shows `Amount` of Paid payment
    - Decimal is not allowed

    

### Tax Filing

- Shows all `Paid Payments` of the organization according to the selected year in `From and To` filter.

#### UI Requirement

Mockup //TODO

- Ask for [Year](#year-filter)

- Sorting: Alphabetical order of organization name.

- Column name

  - `Non-Profit Firm` - Show Organization name

  - `Tax ID` - Show EIN number of the organization

  - `Address` - Show Address of the organization.

  - `Tax Deductible Amount` 

    - Shows `Tax Deductible Amount` of Paid payment
    - Decimal is not allowed

  - `Amount Paid` 

    - Shows `Amount` of Paid payment
    - Decimal is not allowed

    

### Grant Detail

- It's another Taxation report (other than "Tax Filing Report").

- Report is generated for a Legal Entity and for a Year.

- Represents details of all the payments made by this Legal Entity.

- Payments are grouped by Organization. 
  
  - Per organization total of `Tax Deductible Amount` are shown.
  
- Reports generated for `Foundation` type of Entity has title `Grant Detail Report`. While for any other type of entities it's title is `Contribution Detail Report`.

  > Column: `Gift Tax Value/Amount` is not available in the List. This is explicitly confirmed with Client. This is not needed as it's a Tax Report.

#### UI Requirement

- Ask for [Year](#year-filter)
- Records are grouped by Organization
- Sorting
  - Ascending order of Date
- Column name
  - Date
    - Payment Date
  - Payment Type
    - Type of the payment
    - If Payment  has `Stock Name`, shows that stock name company in the `Payment Type` column. Otherwise show payment mode.
    - If payment has `Investment Fund Name`  , shows that company name in the `Payment type` column.
  - Shares
    - Show total shares of the paid payment.
    - Decimal allowed
  - High
    - Amount Field.
    - Decimal allowed
  - Low
    - Amount Field.
    - Decimal allowed
  - Average
    - Amount Field.
    - Decimal allowed
  - Tax Deductible Amount
    - Shows `Tax Deductible Amount` of Paid payment
    - Decimal allowed
    - Show Total amount of the `Tax Deductible Amount`.



### Approved Grant Schedule

- Show grant details with 5 year (Like `Current year - 3`, `Current Year`, `Current Year +1`).
  - For ex. If current year is `2020`. Show total 5 years like `2017`, `2018`, `2019`,`2020`, `2021`

#### UI Requirement

- Sorting

  - Primary sorting on the alphabetical order of the organization name, Secondary sorting on the alphabetically order of the Project name.

- Column Name

  - `Non-Profit Firm` - Show Organization name
  - `Project` - Project of the organization
  - Year Column 
    - If payment is `Pending` , shows Approved amount of that payment.
    - If Payment is `Paid`, show `Paid` amount of that payment.
  - Total Amount

  

### From and To Filter

- Shows current year prefill in both fields
- `From`  shows all available year for which records exists
- `To`  shows year selected in `From` and all other available years which is higher than year selected in `From`
- Sorting : Ascending order of year. Both are selected dropdown.



###  Year Filter

- Shows current year prefill in `Year`
- Sorting : Ascending order of year and selected dropdown.
- Shows all available years for which records exists in dropdown.

