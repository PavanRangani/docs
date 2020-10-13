# Browse

- When there is no records in `Philanthropy`, show this `No Organizations Found` [message](https://drive.google.com/file/d/148Q5eDNS4wxt8uHhsX5qmdxhbauC_avO/view)

## Browse Organizations

- Show all of the organizations for which grant is added
- Provides a way to filter organizations by year

### UI Requirement

- When there is no records in `Organization`, show this `No Organizations Found` [message](https://drive.google.com/file/d/1bzPoUW90iTtuRPyHUanCTPy-sCLTbjI8/view).
- Shows all organizations in table  
  - Column: Organization, Organization Group
  - Sorting: Ascending

### Year Filter

- By default shows current year in `From` & `To`
- `From` shows all available year for which records exists
- `To` shows year selected in `From` and all other available years which is higher than year selected in `From`



## Browse payments

- Shows all payments of the legal entities
- Provides a way to filter payments

### UI requirement

- Shows all payments in table
- When there is no records in `Payments`, show this `No Payments Found` [message](https://drive.google.com/file/d/11YYlHQKtT2frzpA7rKco8V03oIUlUPCZ/view)
- In tables records are grouped by Paid or Unpaid 

- Table columns
  - Scheduled Date: Scheduled date of the payment
  - Organization: Organization of the Grant
  - Project: Project of the Grant
  - Approved: Approved amount of the Grant
  - Payment date:
    - Date on which payment is made
    - For records under Unpaid group, this value will always be blank
  - Paid:  
    - Payment amount
    - For records under Unpaid group, this value will always be 0
  - Payment Status: 
    - Status of the Payment. It can be one of the - Paid, Pending, Overdue
    - Paid is shown in Green tag, Pending is shown in Orange tab, Overdue is shown in Red tag
  - Term: 
    - Shown in format : {Current payment term / total payment term} 
    - for e.g. If any multi year grant has total 6 terms, its 3rd payment will have term `3/6`
    - For Multi year grant where End date is set to `Never`, Total payment term is shown infinite (Icon)
  - Tax Deduct: Tax deduct amount of the Grant
  - Notes: Notes of the payment
- Records are sorted in descending order of Scheduled Date in both group
- Shows - when any value is not available
- On hover shows vertmore action menu at right side on the row.
  - Vermore actions: Edit Payment, Edit Grant, Delete, Make Payment
  - Make Payment action won't be available for payment with status `Paid`
  - For Multi year Grant Delete action will be disabled. See this [Delete Payment](./payment#delete-payment)

#### Payment details in tooltip

For paid payments, shows [info icon](https://drive.google.com/file/d/1iutc5hXFpnoE2yBNoSAYM01H5wZ53MPS/view) in Paid amount column. On click of info icon shows payment details in tooltip

### Filter 

Allows to filter payment by Year, Organization, Project, Payment status and Grant

When any of the filter is applied shows RESET button. On RESET all filters will be reset to its default state.

#### Year

By default shows last year in `From` and current year in `To`

`From` shows all available year

`To` shows year selected in `From` in addition to all other available years which is higher than year selected in `From`

#### Organization

Default value `All Organizations`

Shows distinct organizations from the list of payments. So, it doesn’t list the organization whose payment isn’t available in the list.

#### Project

Default value `All Projects`

Shows distinct projects from the list of payments. So, it doesn’t list the Project whose payment isn’t available in the list.

#### Status

Default value `All Status`

Shows two options: Pending  & Paid

#### Grant

Default vlaue `All Grants`

Shows distinct Grants from the list of payments. So, it doesn’t list the Grant whose payment isn’t available in the list.

Each grant is shown in format : {Type} : {Start date/lowest date} - {End date/highest date}. 

For Custom grant only one date is available so it will not have End date/ Highest date. For e.g. `Custom Grant: Feb 1, 2018`

For Multi year grant where End date is set to Never, so it will not have End date. Grant is shown in format : {Type} : {Start date}.



## Browse payment of organization

Its same as [Browse all payments](#browse-all-payments)

Only differences are

- When there is no records in `Payments`, show this `No Payments Found` [message](https://drive.google.com/file/d/1wzt-8FSegQi5UtkNzq1SVnhoQqC_nEVF/view).
- In table records will be grouped by projects of the selected organization
- In filter, organization filter won't be available 
- In table, Organization and Project columns are not available

## Browse Grant/Contribution of organization

- Shows all grants of this organization 
- Provides a way to filter grants

### UI Requirement

- Shows all Grants in table
- When there is no records in `Grants`, show this `No Grants Found` [message](https://drive.google.com/file/d/1aT1D071R8OikZjefFJ4QJz_3CiXhadE8/view)
- In table, grants are grouped by: Active or Closed

- Table columns
  - Start Date: 
    - Start date of the Grant
    - For One time Grant only one date is available. So it will be shown as Start date
  - Project: Name of the Project of Grant
  - Grant Category: Category of the Grant
  - Grant Type: Type of the Grant
  - End Date: 
    - End date of the Grant
    - For One time Grant only one date is available. So it will be shown as End date
    - For Multi Year Grant with end date `Never`, shows `Never`
  - Payments made
    - Shows count of how many payments are made and total payments in format {Count of Payments made}/{Total payments}
    - For Multi Year Grant with end date `Never`, shows infinite symbol as Total Payment

- Records are sorted in descending order of Scheduled Date in both group
- Shows - when any value is not available
- On hover of row shows hover effect
- On hover shows vertmore action menu at right side on the row.
  - Vermore actions
    - For Active: Edit, Close, View History & Delete
    - For Closed: Edit & View History
  - View History action is shown for Multi year grant only if payment update history available for that Grant. Otherwise it won't be shown
  - On Click of row redirect user to the Browse Payment of Orgnization page with Project and Grant filter applied
