# Grant

## Add Grant

When creating Grant, existing project of the selected Organization can be selected or user can create new project.  When existing project is selected, its  category and description is prefilled 

Based on the selected Grant type, payments will be created. See entity details of [Grant type](./overview#grant-type) for more details.

### UI Requirement

- When Grant is created in context of Organization, `Non Profit Organization` and `Organization group` can not be changed
- When new project name is entered by user, shows `New` tag in Project field
- For Multi Year Grant
  - When start date is not defined, End date field shows only one option `Never`
  - When start date is defined, End date field shows same date of start date for next 10 year along with `Never` .
    - For e.g. When start date is 02/01/2020, End date shows 11 options. 02/01/2021 to 02/01/2030 and Never
- For custom grant
  - At least one payment needs to be defined

## Edit Grant

- `Grant Type` can't be changed.
- `Grant Category`can always be changed. as it’s just a data field. No special use of it in business logic, other than in filter.

#### Multi year grant

- `Start Date` can never be changed.
- `End Date` can be changed. Can be reduced till last non paid payment.
- `Amount` 
  - All the payments after last `Paid` payment will be updated. e.g Last payment is on `15 March 2019`. Then amount for all payments after that date will be changed.
  - When few payments are already `Paid` and user change amount, system updates only amount for the remaining payments. Earlier payments stay on the old amount value. For this change, system track History. 

##### UI Requirement

While editing Multi year grant, if end date is not valid shows error. Error text: `End date can't be set before {Last payment date} as that payment is already made`.  See this mockup

#### One-Time Grant

- `Amount` can be changed. `Approved Amount` and `Paid Amount` both are changed.
- Can be changed `Payment Mode` . And work same as `Edit Payment`.

#### Custom Grant

- `Payments` which are already `Paid`, Can't  be Edited/Deleted during `Edit Grant`.

##### UI Requirement

Already paid payments are shown in table. Mockup of [Custom Grant Edit dialog](https://drive.google.com/file/d/1lRF-IfEtUbe5SAOmWW7528-uLJPyEygU/view)

## Delete Grant

- When all payments are `Pending`, can be deleted after confirmation.
- When at least one payment is `Paid`, asks for `Close Grant` instead.
- `Grant` is deleted when last payment is deleted. See [Payment Delete](#payment-delete)
- `Closed Grant` can not be deleted.

### UI requirement

Mockup: Delete when no payment are made & [Delete when payment are made](https://drive.google.com/file/d/1btt-GibDZb2-EHQTFCQaYaPk47mAMGC-/view)

For Closed grant, delete action won't be available

## Close Grant

- When few payments are `Paid`, Grant can’t be deleted. In this case the it should be `Closed` 
- When no payment are made and user try to close the Grant, system suggest to delete the Grant
- On `Close`, All the `Pending` payments are deleted.
- System shows text confirmation for this action.

### UI Requirement

Mockup: [Close when no payment are made](https://drive.google.com/file/d/1mVSewNUmUTZ-VEPK5l7o6-N0f6wIUi8_/view) & Close when payments are made

## 