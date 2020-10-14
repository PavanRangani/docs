# Payment

## Edit Payment

- Status, Notes, Payment mode can be changed any time
- `Payment Edit` action can be used instead of `Make Payment` to make the payment. User can change the `Payment Status`  to  `Paid` and fill the other details.

### UI Requirement

[Mockup](https://drive.google.com/file/d/19Vos4OK4XSz9zFghIzlEidef6c4P_9cF/view)

## Make Payment

- Only available for payment with status Pending or Overdue
- Its same as the `Payment edit`, only status will be preset to `Paid`

### UI Requirement

[Mockup](https://drive.google.com/file/d/19Vos4OK4XSz9zFghIzlEidef6c4P_9cF/view)

## Delete Payment

- Payments of `One-time Grant` and `Custom Grant` can be deleted.
- Payments of `Multi-year Grant` can’t be deleted.
- When payment is deleted and that payment is only single payment of the `Grant`, that  `Grant` will be deleted 
  - For `One-time Grant` only one payment is available. So when that Payment is deleted, Grant will be deleted.
  - For `Custom Grant` when only one payment is available and that payment is deleted, Grant will also be deleted.

### UI Requirement

- For Multi Year Grant payment, Delete action will be disable. On hover it will show tooltip
- Tooltip message: You can't delete payments of Multi-year Grant

## Browse payment of organization

Its same as [Browse all payments](#browse-all-payments) page. But here it shows only payments of selected organization

Other differences are

- Here records will be grouped by Year and date
- Shows total for each group of date and year.
- Scheduled Date and Organization colums won't be available. All other columns are same as Browse all payments page table.

- Filters are also same as Browse all payments page. Only organization filter won't be available here.

- On hover shows vertmore action menu at right side on the row.
  - Vermore actions: Edit Payment, Make Payment, Edit Grant, Delete
  - Make Payment action won't be available for payment with status `Paid`
  - For Multi year Grant Delete action will be disabled. See this [Delete Payment](./payment#delete-payment)

## Browse All Payments

- Shows all payments of the legal entity
- Provides a way to filter payments

### UI requirement

- For Individual/Joint/Trust, shows two separate tables for `Grants payments` and `Contributions payments`
- For Foundation, shows only `Grants Payments` table 
- When there is no records in any table, shows `No Payments Found` 
- In tables records are grouped by Paid or Unpaid 
- Table columns
  - Scheduled Date: Scheduled date of the payment
  - Organization: Organization of the Grant/Contribution
  - Project: Project of the Grant/Contribution
  - Approved: Approved amount of the Grant/Contribution
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
    - For Multi year grant where End date is set to `Never`, Total payment term is shown as infinite Icon
  - Tax Deduct: Tax deduct amount of the Grant
    - This column won't be available in this page for Foundation
  - Notes: Notes of the payment
- Records are sorted in descending order of Scheduled Date in both group
- Shows - when any value is not available
- On hover shows vertmore action menu at right side on the row.
  - Vermore actions: Edit Payment, Make Payment, Delete
  - Make Payment action won't be available for payment with status `Paid`
  - For Multi year Grant Delete action will be disabled. See this [Delete Payment](./payment#delete-payment)



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

Default value is `All Grants`

Shows distinct Grants/Contrubution from the list of payments. So, it doesn’t list the Grant/Contribution whose payment isn’t available in the list.

Each Grant/Contrubution is shown in format : {Type} : {Start date/lowest date} - {End date/highest date}. 

For Custom, only one date is available, so it will not have End date/ Highest date. For e.g. `Custom Grant: Feb 1, 2018`

For Multi year where End date is set to `Never` will not have End date. Grant is shown in format : {Type} : {Start date}.
