# Insurance

## Add

- Insurance can be added only after filling all mandatory fields
- For different types, mandatory fields are different. See this [page](./insurance-entity.md) for details of mandatory fields for each type

### UI requirements

Mockup

- When user initiate add action, user needs to select insurance type first. Once user selects insurance type it opens add dialog for selected type. Mockup of [Selection of Insurance type](https://drive.google.com/file/d/1dta4mZ22BjvUesJ8AbeXAgkNiVDHjiin/view) dialog
- Default selection will be on `Homeowners` is selected under `Property and Casualty`
- When user enters `Issue date`, System prefills Expiry date. It will be set to  `next year date of Issue date` - 1 day. 
- `Issue date` should be lower than `Expiry date`, other wise shows error `Should be later than issue date` error in `Expiry date` field

[Mockup of Add dialog](https://drive.google.com/file/d/1-Q9MjpkGET-dN09-VR-6V1IT_qr4xKBS/view)

## SAVE AS DRAFT

- While adding new insurance if you have filled partial details  but you want to save your work then you can  use SAVE AS DRAFT
- It allows user to save insurance without filling any mandatory fields.
- For Insurance in DRAFT mode, DISPOSE & RENEW is not allowed

## Renew

- Should be used when insurance needs to be renewed
- On Renew
  - System prefill `Issue date` as  `last poilicy expiry date + 1 day` and `Expiry date` as `next year date of Issue date` - 1 day. 
  - Allows to change `Issue date` and `Expiry date` if required
  - Asks for `Premium` amount
  - All other details of policy will be prefilled from last policy. Allows user to change any details if required.
  - During renew doesn't allow to change `Insured Asset` or `Account Nickname` 
- System maintains history of renewals
- For DRAFT insurance, renew is not possible

## Update

- Current insurance or any insurance from history can be updated anytime

## Delete

- Insurance can be deleted anytime

## Dispose

- Insurance can be disposed anytime
- DRAFT insurance can not be disposed

## Restore

- Only `Disposed` insurance can be restored.

## Browse insurance

- Allows to browse all insurance of any legal entity
- Shows ACTIVE and DISPOSED insurance in separate tabs
- Shows count with each tab title
- In both tab, records are shown in 3 tables: Life Insurance, Health Insurance, Property and Casualty 
- When there isn't any record available for any particular type, its table wont' be shown

### UI Requirements

Mockup

- Columns in each table: 
  - Coverage Type
  - Account Nickname
  - Insured
  - Insurance Carrier
  - Policy Number
  - Annual Premium
  - Policy Expiration
- Sorting: Alphabetical, Primary on `Coverage Type` and Secondary on `Account Nickname`
- On click of vertmore icon of table, starts its selection mode of table.
  - When single record is selected, shows `Edit`, `Renew` `Dispose` & `Delete` action from right to left order.
  - When multiple records are selected, shows `Dispose` & `Delete` action from Right to left order. `Delete` will be shown in gray colour.
- When Policy Expiration date is already passed, it shows in red colour
- When multiple insured is available, shows each `Insured` in new line
- On hover of any record shows vertmore icon. 
  - Vertmore actions:  `Edit`, `Renew`, `Dispose` & `Delete`. `Delete` is shown in red colour.
  - For `Disposed` record, `Renew` action is not available
- On mouse hover of any record shows hover effect
- On click of any record opens its view page.

## View insurance

Mockup

### UI Requirement

- Shows all details of insurance
- Insurance with Latest Issue date is shown under `CURRENT` 
- Other policies are shown in `HISTORY`. 
- When there isn't any renewal policy HISTORY tab is not shown
- Shows links for fields: Carrier, Insurance Agent, Insured,  any contact field , any asset field.  On click of that link opens view dialog or view page for that entity
- When Insurance is DISPOSED, it shows DISPOSED tag in header
- When Insurance is in DRAFT, it shows DRAFT tag in header

### Browse history of any insurance

Mockup

- All policies other than Current is shown in history
- Shows policies in table
- Columns: Issue Date, Expiry Date, Premium, Notes
- Sorting: Descending order of Issue Date
- On mouse hover of any record shows hover effect and vertmore icon. 
  - Vertmore actions:  `Edit` & `Delete`. `Delete` is shown in red colour.
- On click of any record shows details of that policy in view dialog
