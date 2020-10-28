# Payment

## Edit Payment

- Status, Notes, Payment mode can be changed any time
- `Payment Edit` action can be used instead of `Make Payment` to make the payment. User can change the `Payment Status`  to  `Paid` and fill the other details.

### UI Requirement

[Mockup](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScbUq6a3wMw__F7-ftgQvH9s)

## Make Payment

- Only available for payment with status Pending or Overdue
- Its same as the `Payment edit`, only status will be pre-set to `Paid`

### UI Requirement

[Mockup](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScadG0ULfG0iNKvrHgJLZE-I)

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

[Mockup](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScUWGK0F2D-whuEZlcrBaMQc)

- Here records will be grouped by Year and date
- Sorting
  - Primary sorting on Descending order of Year and Secondary sorting on Descending order of Date and Third sorting on Ascending order of Project name.
- Shows total for each group of date and year.
- Scheduled Date and Organization columns won't be available. All other columns are same as Browse all payments page table.
- Filters are also same as Browse all payments page. Only organization filter won't be available here.
- On hover shows vertmore action menu at right side on the row.
  - Vertmore actions: Edit Payment, Make Payment, Edit Grant, Delete
  - Make Payment action won't be available for payment with status `Paid`
  - For Multi year Grant Delete action will be disabled. See this [Delete Payment](./payment#delete-payment)
- On click of any record shows details of that payments in [view dialog](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDSceJPu1qqxKZWjK68Of5Lusg)

## Browse All Payments

- Shows all payments of the legal entity
- Provides a way to filter payments

### UI requirement

- For Individual/Joint/Trust, shows two separate tables for `Grants payments` and `Contributions payments`. [see this](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScQiBDUNh3XXMFGjuEPX87NU)
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
    - If Payment Date is not available then show `-`.
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
    - If Term is not available then show `-`.
  - Tax Deduct: Tax deduct amount of the Grant
    - This column won't be available in this page for Foundation
  - Notes
    - Notes of the payment.
    - If Notes is not available then show `-`.
- Primary sorting in Descending order of Scheduled Date and Secondary sorting in Ascending order of Organization and third sorting on Ascending order of Project name.
- On hover shows vertmore action menu at right side on the row.
  - Vertmore actions: Edit Payment, Make Payment, Delete
  - Make Payment action won't be available for payment with status `Paid`
  - For Multi year Grant Delete action will be disabled. See this [Delete Payment](./payment#delete-payment)
- On click of any record shows details of that payments in [view dialog](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDSceJPu1qqxKZWjK68Of5Lusg)



### Filter 

Allows to filter payment by Year, Organization, Project, Payment status and Grant

When any of the filter is applied shows `RESET` button. On RESET all filters will be reset to its default state.

#### Year

By default shows last year in `From` and current year in `To`

`From` shows all available year

Sorting : Ascending order of year. Both are selected dropdown.

`To` shows year selected in `From` in addition to all other available years which is higher than year selected in `From`

#### Organization

Default value `All Organizations`

Shows distinct organizations from the list of payments. So, it doesn’t list the organization whose payment isn’t available in the list.

Sorting: Alphabetically sorting on Organization name. Auto-Complete dropdown.

#### Project

Default value `All Projects`

Shows distinct projects from the list of payments. So, it doesn’t list the Project whose payment isn’t available in the list.

Sorting: Alphabetically sorting on Organization name. Auto-Complete dropdown.

#### Status

Default value `All Status`

Shows two options: Pending  & Paid. Selected Dropdown.

#### Grant

Default value is `All Grants`

Shows distinct Grants/Contribution from the list of payments. So, it doesn’t list the Grant/Contribution whose payment isn’t available in the list.

Sorting order of Grant filters are: `Custom ` , `Multi-Year`, `One-Time`. Selected Dropdown.

Each Grant/Contribution is shown in format : {Type} : {Start date/lowest date} - {End date/highest date}. 

For One-time, only one date is available, so it will not have End date/ Highest date. For e.g. `One Time : Feb 1, 2018`

For Multi year where End date is set to `Never` will not have End date. Grant is shown in format : {Type} : {Start date}.
