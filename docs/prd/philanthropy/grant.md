# Grant/Contribution

## Add Grant/Contribution

When creating Grant, existing project of the selected Organization can be selected or user can create new project.  When existing project is selected, its  category and description is prefilled 

Based on the selected Grant type, payments will be created. See entity details of [Grant type](./overview#grant-type) for more details.

### UI Requirement

- When Grant/Contribution is created in context of Organization, `Organization` or `Non Profit Organization` and `Organization group` can not be changed
- When new project name is entered by user, shows `New` tag in Project field
- Default [One-time](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScUSE7UOKcDCbLh7TphcAXm8) is selected in type.
- For [Multi Year](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScUorQ_9hKmZ3tCOxNgXFC9c)
  - When start date is not defined, End date field shows only one option `Never`
  - When start date is defined, End date field shows same date of start date for next 10 year along with `Never` .
    - For e.g. When start date is 02/01/2020, End date shows 11 options. 02/01/2021 to 02/01/2030 and Never
- For [Custom](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScYYGHrP2PK6sjRGN4BUJPNA)
  - At least one payment needs to be defined

## Edit Grant/Contribution

- `Type` can't be changed.
- `Category` can always be changed as it’s just a data field. No special use of it in business logic, other than in filter.

#### Multi year

- `Start Date` can never be changed.
- `End Date` can be changed. Can be reduced till last non paid payment.
- `Amount` 
  - All the payments after last `Paid` payment will be updated. e.g Last payment is on `15 March 2019`. Then amount for all payments after that date will be changed.
  - When few payments are already `Paid` and user change amount, system updates only amount for the remaining payments. Earlier payments stay on the old amount value. For this change, system track History. 

##### UI Requirement

While editing Multi year grant, if end date is not valid shows error. Error text: `End date can't be set before {Last payment date} as that payment is already made`.  [See this mockup](https://drive.google.com/file/d/1VnbtX0XtaaKY0fzRDypncEFBCSSZkDiB/view)

When user change amount and few payments are already made, it shows warning about only pending payments will be updated. See this [mockup](https://drive.google.com/file/d/1u3x8oQgDuFKD2jEpgPTSq7JYa4HcgTsI/view)

This error and warning will be shown as soon as user change the values. (Not on click of SAVE button)

#### One-Time

- `Amount` can be changed. `Approved Amount` and `Paid Amount` both are changed.
- Can be changed `Payment Mode` . And work same as `Edit Payment`.

#### Custom

- `Payments` which are already `Paid`, Can't  be Edited/Deleted during `Edit Grant`.

##### UI Requirement

Already paid payments are shown in table. Mockup of [Custom Grant Edit dialog](https://drive.google.com/file/d/1BkJFRecBTWVCmQJrKLS_-XQoCzkbfwan/view)

## Delete Grant/Contribution

- When all payments are `Pending`, can be deleted after confirmation.
- When at least one payment is `Paid`, asks for `Close Grant` instead.
- `Grant` is deleted when last payment is deleted. See [Payment Delete](#payment-delete)
- `Closed Grant` can not be deleted.

### UI requirement

When all pyaments are pending, it shows delete confirmation dialog. [Delete when no payment are made](https://drive.google.com/file/d/1GvojVshI5eWwwXoSAeOKs7FEliLB7BfV/view)

When at least one payment is made, its shows `Delete not possible` dialog with option to `Close Grant`. [Delete when payment are made](https://drive.google.com/file/d/1UuNx0vqmPo1kStja8HO9IbaAQyXykMUX/view)

For Closed grant, delete action won't be available

## Close Grant/Contribution

- When few payments are `Paid`, Grant can’t be deleted. In this case it should be `Closed` 
- When no payment are made and user try to close the Grant, system suggest to delete the Grant
- On `Close`, All the `Pending` payments are deleted.
- System shows text confirmation for this action.

### UI Requirement

When no payment are made and user try to close the Grant, shows `Delete Gant` dialog with proper message. See this [mockup](https://drive.google.com/file/d/1AF6KyqdoJj8aiIkW24OvsFwdywYU1NgN/view)

When some payments are made and user perform close action shows Close confirmation dialog. See this [mockup](https://drive.google.com/file/d/1NnBir3M0_TWwUKTElFfc-_d5pXmkMRvO/view)

## Browse Grant/Contribution of organization

- Shows all Grants/Contributions of this organization 
- Provides a way to filter it

### UI Requirement

- Shows all Grants in table
- When there is no records, shows  `No Grants Found`  or `No Contributions Found` message
- In table, grants are grouped by Active or Closed
- Shows count with each group
- Table columns
  - Start Date: 
    - Start date of the Grant/Contribution
    - For One time Grant/Contribution only one date is available. So it will be shown as Start date
  - Project: Name of the Project of Grant/Contribution
  - Category: Category of the Grant/Contribution
  - Type: Type of the Grant/Contribution
  - End Date: 
    - End date of the Grant/Contribution
    - For One time Grant/Contribution only one date is available. So it will be shown as End date
    - For Multi Year Grant/Contribution with end date `Never`, shows `Never`
  - Payments made
    - Shows count of how many payments are made and total payments in format {Count of Payments made}/{Total payments}
    - For Multi Year with end date `Never`, shows infinite symbol as Total Payment
- Records are sorted in descending order of Scheduled Date in both group
- Shows - when any value is not available
- On hover of row shows hover effect
- On hover shows vertmore action menu at right side on the row.
  - Vermore actions
    - For Active: Edit, Close, View History & Delete
    - For Closed: Edit & View History
  - View History action is shown for Multi year grant only if payment update history available for that Grant. Otherwise it won't be shown
  - On Click of row redirect user to the Payment tab of same Orgnization where Project and Grant filter applied

## View Amount change history 

Its available only for the Multi year Grant/Contribution.

When few payments are already `Paid` and user change amount, system updates only amount for the remaining payments. Earlier payments stay on the old amount value. For this change, system track History. 

### UI Requirement

[Mockup](https://drive.google.com/file/d/10BE9V8xUDi5hmTvD8WzI8Uz-ZOiM_QJo/view)

Shows history of amount update for this Grant/Contribution

For each amout update shows one row. 