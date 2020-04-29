# Browse

## Browse Organizations

- Show all of the organizations for which grant is added
- Provides a way to filter organizations by year

### UI Requirement

- Shows organizations in table
  - Column: Organization, Organization Group
  - Sorting: Ascending
- Year Filter
  - By default shows current year in From & To
  - From: Shows all available year
  - To: Shows year selected in from and all other available years which is higher than year selected in From



## Browse payments

- Shows all payments of the legal entities
- Provides a way to filter payments

### UI requirement

- Shows all payments in table
- In tables records are grouped by Paid or Unpaid 

#### Table columns

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

#### Payment details in tooltip

For paid payments, shows info icon in Paid amount column. On click of info icon shows payment details in tooltip

### Filter 

## Browse payment of any organization

Its same as [Browse all payments](#browse-all-payments)

Only differences are

- In table records will be grouped by projects of the selected organization
- In filter, organization filter won't be available 
- In table, Organization and Project columns are not available

## Browse Grant

## Browse notes

## Export