# Payment

## Edit Payment

- Only available for payment with status `Paid`.
- Notes, Payment mode can be changed any time

### UI Requirement

[Mockup](https://drive.google.com/file/d/16lWbxWDU5FXS7cpTi15oD4HfJSkRCCtR/view?usp=sharing) 

## Make Payment

- Only available for payment with status `Pending` or `Overdue`.

### UI Requirement

[Mockup](https://drive.google.com/file/d/14x5QvXmL94Kcih4flIfDBwyYxmhlckCo/view?usp=sharing) 

## Delete Payment

- Payments of `One-time Grant` and `Custom Grant` can be deleted.
- Payments of `Multi-year Grant` can’t be deleted.
- When payment is deleted and that payment is only single payment of the `Grant`, that  `Grant` will be deleted 
  - For `One-time Grant` only one payment is available. So when that Payment is deleted, Grant will be deleted.
  - For `Custom Grant` when only one payment is available and that payment is deleted, Grant will also be deleted.

### UI Requirement

- For Multi Year Grant payment, Delete action will be disable. On hover it will show tooltip
- Tooltip message: You can't delete payments of Multi-Year Grant



## Browse Grant Payments of organization

Its same as [Browse grant payments](#browse-grant-payments) page. But here it shows only payments of selected organization

[Mock ups](https://drive.google.com/file/d/1Xyj9xBrLZS4lXXw_tMu6Omy-rpC1SkM2/view?usp=sharing) 

Other differences are

- Here records will be grouped by Year and date
- Sorting
  - Primary sorting on Descending order of Year and Secondary sorting on Descending order of Date and Third sorting on Ascending order of Project name.
- In all grant except grant given by foundation, shows total of `Tax Deductible`amount for each group of date and year.  
- Scheduled Date and Organization columns won't be available. All other columns are same as Browse payments page.
- Filters are also same as Browse all payments page. Only organization filter won't be available here.
- On hover shows vertmore action menu at right side on the row.
  - Vertmore actions: Edit Payment, Make Payment, Edit Grant, Delete
    - `Make Payment` action available for payment with status `Pending` or `Overdue`.
    - `Edit Payment` action  available for payment with status `Paid`
  - For Multi year Grant Delete action will be disabled. See this [Delete Payment](./payment#delete-payment)
- On click of any record shows details of that payments in view dialog. [See this](https://drive.google.com/file/d/1QVjZH-lXe8z72BXWCd7Y7iYjJlRIrAXU/view?usp=sharing) 



## Browse Grant Payments

- Shows all Grants payments of the legal entity
- Provides a way to filter payments

### UI requirement

[Mock ups](https://drive.google.com/file/d/1YKvYLPRQ-sQgE6nPViSzqU2tN8Gnu47s/view?usp=sharing) 

- When there is no records in Payments tab, shows `No Payments Found`.

- In tables records are grouped by Paid or Unpaid 

- Table columns
  - Scheduled Date: Scheduled date of the payment
  - Organization
    - Organization of the Grant
    - It should be a link.
  - Project: Project of the Grant
  - Approved: Approved amount of the Grant
  - Payment date:
    - Date on which payment is made
    - For records under Unpaid group, this value will always be blank
    - If Payment Date is not available then show `-`.
  - Paid:  
    - Payment amount
    - For records under Unpaid group, this value will always be 0.
  - Payment Status: 
    - Status of the Payment. It can be one of the - Paid, Pending, Overdue
    - Paid is shown in Green tag, Pending is shown in Orange tab, Overdue is shown in Red tag
  - Payment Mode
    - Show mode of the Payment
  - Term: 
    - Shown in format : {Current payment term / total payment term} 
    - for e.g. If any multi year grant has total 6 terms, its 3rd payment will have term `3/6`.
    - For Multi year grant where End date is set to `Never`, Total payment term is shown as infinite Icon
    - If Term is not available then show `-`.
  - Tax Deduct: 
    - Tax deduct amount of the Grant
    - This column won't be available for grant given by foundation.
  - LOA : Show status of LOA. Its value either `Yes` or `-`
  - Name
    - Show Stock name or investment fund name for that payment. 
  - Notes
    - Notes of the payment.
    - If Notes is not available then show `-`.

- Primary sorting in Descending order of Scheduled Date and Secondary sorting in Ascending order of Organization and third sorting on Ascending order of Project name.

- Whole row won't be clickable. On click of the `Organization Name`, it takes to the Organization page.

  - Shows hover effect on row with normal cursor. Only show the hand cursor on the `Organization name` column.

- On hover shows vertmore action menu at right side on the row.
  - Vertmore actions: `View Payment`, `Edit Payment`, `Make Payment`, `Delete`
    - `Make Payment` action available for payment with status `Pending` or `Overdue`.
    - `Edit Payment` action  available for payment with status `Paid`
    - On Click on `View Payment` action,  shows details of that payments in view dialog. 
  - For Multi year Grant Delete action will be disabled. See this [Delete Payment](./payment#delete-payment)




## Browse Contributions Payment

- Shows all Contribution payments of the legal entity
- Provides a way to filter contribution payments.

### UI requirement

[Mockup](https://drive.google.com/file/d/1jsyEc5-1IZRHRUrIhpDx23ATPnUjYm3A/view?usp=sharing) 

- Shows all Contributions in table.
- When there is records, Shows `No Contributions Found` message.
- Contribution records will be grouped by Year and Date.
- Sorting 
  - Primary sorting on Descending order of Year and Secondary sorting on Descending order of Date.
- Shows total of Tax deductible amount for each group of date and year.
- Table columns
  - Organization
    - Organization of the Contribution
    - It should be a link.
  - Contribution Amount
    - It shows a total payment amount.
  - Contribution Mode
    - It shows the mode of payment of the contribution.
  - LOA 
    - Show status of LOA. Its value either `Yes` or `-`.
    - Its not applicable for Grant given by Foundation.
  - Stock Name
    - Show `Stock name` or `Investment fund name` for that payment. 
    - Its not applicable for DAF types Foundation. Because DAF types foundation have only one payment mode `Cash`.
  - Tax Deduct
    - Show Tax deductible amount 
  - Donation Multiple
    - Show donation multiple value for that record
    - Show total of `Donation Multiple` in column.
    - There is a formula to show total `Multiple Donation` for a period. [See this](https://drive.google.com/file/d/1jxLGOqhSnwmOWP1f2CmKcohBa6Sy_aVJ/view)
    - Total of  `Donation Multiple = (Tax Deductible Amount / Total Tax Deductible) x Donation Multiple`.
  - Contribution Notes
    - Notes of the payment.
    - If Notes is not available then show `-`.
- Whole row won't be clickable. On click of the `Organization Name`, it takes to the Organization page.
  - Shows hover effect on row with normal cursor. Only show the hand cursor on the `Organization name` column.
- On hover shows vertmore action menu at right side on the row.
  - Vertmore actions: `View Contribution`, `Edit`, `Delete`
    - On Click on `View Contribution` action,  shows details of that contribution's payment in View dialog. [See this](https://drive.google.com/file/d/13Qy88nBGz7ueAO_Qel-YDr_5oy1sFDjs/view?usp=sharing)



### Filter 

Allows to filter payment by Year, Organization, Project, Payment status and Grant. Applicable for both `Payments` and `Contributions`.

When any of the filter is applied shows `RESET` button. On RESET all filters will be reset to its default state.

#### Year

By default shows last year in `From` and current year in `To`. Applicable for both `Payments` and `Contributions`.

`From` shows all available year.

Sorting : Ascending order of year. Both are selected dropdown.

`To` shows year selected in `From` in addition to all other available years which is higher than year selected in `From.`

Year in `From` & `To` dropdown should be same in the outer sider tab `Organizations`.

#### Organization

Default value `All Organizations.` Applicable for both `Payments` and `Contributions`.

Shows distinct organizations from the list of payments. So, it doesn’t list the organization whose payment isn’t available in the list.

Sorting: Alphabetically sorting on Organization name. Auto-Complete dropdown.

Its not applicable to `Contributions` tab.

#### Project

Default value `All Projects`

Shows distinct projects from the list of payments. So, it doesn’t list the Project whose payment isn’t available in the list. 

Sorting: Alphabetically sorting on Organization name. Auto-Complete dropdown. 

Its not applicable to `Contributions` tab.

#### Status

Default value `All Status.`

Shows two options: `Pending`  & `Paid`. Selected Dropdown.

Its not applicable to `Contributions` tab.

#### LOA

Default value `Yes`.

Shows two options: `Yes` & `No`. Selected Dropdown.

Its applicable for both `Grant` and `Contribution`.

Its not applicable for DAF types foundation.

#### Grant

Default value is `All Grants.`

Shows distinct Grants/Contribution from the list of payments. So, it doesn’t list the Grant/Contribution whose payment isn’t available in the list.  Its applicable to only for `Payments tab`.

Sorting order of Grant filters are: `Custom ` , `Multi-Year`, `One-Time`. Selected Dropdown.

Each Grant/Contribution is shown in format : {Type} : {Start date/lowest date} - {End date/highest date}. 

For One-time, only one date is available, so it will not have End date/ Highest date. For e.g. `One-Time : Feb 1, 2018`

For Multi year where End date is set to `Never` will not have End date. Grant is shown in format : {Type} : {Start date}.

Its not applicable to `Contributions` tab.