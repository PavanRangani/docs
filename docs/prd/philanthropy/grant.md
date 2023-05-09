# Grant

## Add Grant

When creating Grant, `Organization category ` is auto filled if existing grant available for the selected organization under current legal entity. Allows to change the auto filled `Organization category `. When such change happens, `Organization category ` is also changed in existing grants.

> Raven has given one Grant to "Alpha" and marked it as "Human services"
>
> Now when Raven gives subsequent grant to "Alpha", "Human services" will be auto filled as Organization Category. Here if category is changed from "Human services" to "Health services", category in first grant will also be changed to "Health services"

When creating Grant, existing project of the selected Organization can be selected or user can create new project.  When existing project is selected, its  `Project Description` and `Major Initiative` is prefilled.

Grant can't be given to archived organization and terminated foundation.

Based on the selected Grant type, payments will be created. See entity details of [Grant type](./overview#grant-type) for more details.

### UI Requirement

- When Grant is created in context of Organization, `Organization` or `Non Profit Organization` and `Organization group` can not be changed.
- When organization is already selected,  It will show only projects of the selected Organization in `Project` dropdown. When organization is not selected, `Project name` field is disable. Once the `Organization` is selected, `Project Name` field will become enabled. If there aren't any existing projects available, allow the user to create a new project by entering its name.
- When new project name is entered by user, shows `New` tag in Project field.
- When adding a Grant, the organization shows an error if it is Terminated or Archived. Error text: `This Organization is Archived/Terminated`.
- Default [One-time](https://drive.google.com/file/d/12-kIsGnM8oTxjtCRqwYa5kHu6W22a9PC/view?usp=sharing) is selected in type.
- For [Multi Year](https://drive.google.com/file/d/1Uj9vmwnFOpG9-jfmIre-bgKsA9ahm30X/view?usp=sharing)
  - When start date is not defined, End date field shows only one option `Never`
  - When start date is defined, End date field shows same date of start date for next 10 year along with `Never` .
    - For e.g. When start date is 02/01/2020, End date shows 11 options. 02/01/2021 to 02/01/2030 and Never
  - Based on the entered start and end dates, shows the payments. For Each payment, allows to enter amount manually.  
- For [Custom](https://drive.google.com/file/d/15cmBJHEGCyCd8E9N_XET1PlxmEkyfa2q/view?usp=sharing)
  - At least one payment needs to be defined

## Edit Grant

- `Type` can't be changed.

#### Multi year

- `Start Date` can never be changed.
- `End Date` can be changed. Can be reduced till last non paid payment.
- `Payments` which are already `Paid`, Can't be Edited/Deleted during `Edit Grant`.

##### UI Requirement

- While editing Multi year grant, if end date is not valid shows error. Error text: `End date can't be set before {Last payment date} as that payment is already made`.  [See this mockup](https://drive.google.com/file/d/1RrZSaQqXOWvlqLr8sIqF1sZahOhy_BJJ/view?usp=sharing). This error will be shown as soon as user change the values. (Not on click of SAVE button)

- Already paid payments are shown in table. [Mockup](https://drive.google.com/file/d/1ZqXZsBIHQIwFbd2bh1lkD5LagV5VQpa2/view?usp=sharing)
  - Primary sorting on descending order of Scheduled Date and secondary sorting on descending order of Approved amount.
  - If the Paid payment notes are large than it will appear in second line. 

When editing Grant, the organization shows an error if it is Terminated or Archived. Error text: `This Organization is Archived/Terminated`.

#### One-Time

- `Amount` can be changed. `Approved Amount` and `Paid Amount` both are changed.
- Can be changed `Payment Mode` . And work same as `Edit Payment`.

#### Custom

- `Payments` which are already `Paid`, Can't be Edited/Deleted during `Edit Grant`.

##### UI Requirement

- Already paid payments are shown in table. Mockup of [Custom Grant Edit dialog](https://drive.google.com/file/d/1xCF6PGS2dE1h7uOT1CgziCBbTta_obx8/view?usp=sharing)
  - Primary sorting on descending order of Scheduled Date and secondary sorting on descending order of Approved amount.
  - If the Paid payment notes are large than it will appear in second line. 

## Delete Grant

- Grant can be deleted anytime. 
- Closed grant can also be deleted anytime.
- On `Delete`, all the pending or paid payemnts are deleted. 

### UI requirement

On click of the delete action from vertmore, opens delete confirmation dialog [Delete when no payment are made](https://drive.google.com/file/d/1GvojVshI5eWwwXoSAeOKs7FEliLB7BfV/view)


## Close Grant

- When few payments are `Paid`, Grant can’t be deleted. In this case it should be `Closed` 
- When no payment are made and user try to close the Grant, system suggest to delete the Grant.
- On `Close`, All the `Pending` payments are deleted.
- System shows text confirmation for this action.

### UI Requirement

When no payment are made and user try to close the Grant, shows `Delete Gant` dialog with proper message. See this [mockup](https://drive.google.com/file/d/1AF6KyqdoJj8aiIkW24OvsFwdywYU1NgN/view)

When some payments are made and user perform close action shows Close confirmation dialog. See this [mockup](https://drive.google.com/file/d/1tpwfnVFdPo58E9lWpV4BS-8ltuEbtocn/view)



## Convert multi-year grant to custom grant

- Sometimes multi-year grant payment date needs to be changed. So at that time it should be converted to Custom

- Allows to convert active multi-year grant to custom. On this action it shows confirmation dialog.
- After conversion, as per the rule of custom grant, payment date can also be changed along with amount.

### UI Requirement

- Shows `Convert to Custom` action for open multi-year grant in `Grants` tab
- On click of `Convert to Custom`, shows confirmation dialog. [See this](https://drive.google.com/file/d/1x0ze4UuplcE6OH9WlccULl37CamlFvgC/view?usp=sharing)



## Browse Grant of organization

- Shows all Grants of this organization 
- Provides a way to filter it.

### UI Requirement

[Mockup](https://drive.google.com/file/d/1l2PEEgfpfoF6IZbfcxvGURNxc-Vp1r7l/view?usp=sharing)

- Shows all Grants in table
- When there is no records, shows  `No Grants Found`  message
- In table, grants are grouped by Active or Closed and shows count with each group.
- Table columns
  - Start Date: 
    - Start date of the Grant.
    - For `One time Grant` only one date is available. So it will be shown as Start date.
  - Project: Name of the Project of the Grant
  - Major Initiative
    - Shows `-` when any value is not available.
  - Type: Type of the Grant
  - End Date: 
    - End date of the Grant
    - For `One time Grant` only one date is available. So it will be shown as End date.
    - For Multi Year Grant with end date `Never`, shows `Never`
  - Payments Made
    - Shows count of how many payments are made and total payments in format {Count of Payments made}/{Total payments}
    - For Multi Year with end date `Never`, shows infinite symbol as Total Payment
- Sorting: Primary sorting on Ascending order of Start Date and Secondary sorting in alphabetically order of Project name.
- On hover of row shows hover effect
- On hover shows vertmore action menu at right side on the row.
  - Vertmore actions
    - For Active: `Edit`, `Close`, `Convert to Custom` & `Delete`
    - For Closed: `Edit` & `Delete`
    - `Convert to Custom` action is shown for Multi year grant.
  - On Click of row redirect user to the Payment tab of same Organization where Project and Grant filter applied



## Filter 

Allows to filter Grant by Projects, Categories, Type and Status.

When any of the filter is applied shows `RESET` button. On RESET all filters will be reset to its default state.

#### Projects

- Projects filter show all Project in alphabetical order of Project name. Its a Selected dropdown.

- By default shows `All` Projects.

#### Major Initiative

- Default value `All `

- Shows two options:  `Yes` & `No`.
- Its Selected Dropdown.

#### Type

- Default value `All `

- Shows Grant type in this filter. It should be `One-Time`, `Multi-Year` and `Custom ` .
- Its Selected Dropdown.

#### Status

Default value `All Status`

Shows two options: Active  & Closed. Selected Dropdown.



