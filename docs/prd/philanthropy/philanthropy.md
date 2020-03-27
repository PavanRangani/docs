# Philanthropy

## Entity 

### Common fields

|                    | Field Name               | Description                                                  |
| ------------------ | ------------------------ | ------------------------------------------------------------ |
| Organization       |                          |                                                              |
|                    | Non Profit Organization* | Company auto complete. <br />If the user first selects the name of the `Project`, then system will show those company name here. |
|                    | Organization Group       | Shows company group name here. <br />if the user selects any of the company in `Non Profit Organization`, then system will show group of that company in `Organization`. <br />If the company doesn't have any group, it will show `-` |
| Project            |                          |                                                              |
|                    | Project Name*            | `Project` auto complete.  Alphabetically sorting.<br />Shows projects associated with the selected company<br />When no projects available with company allows to enter new project name. On save, this project will be associated to the selected company. |
|                    | Project Category         | Simply drop-down. Values are `Arts and Culture`, `Environment`, `Health and Human Services`, `Public Policy`,  `Education`, `General`, `Private Foundation`, `Donor Advised Fund`. |
|                    | Project Description      | Multi line text input field.                                 |
| Grant              |                          |                                                              |
|                    | Type                     | Drop down. values are `One-Time Grant`, `Multi-Year Grant`, `Custom Grant`. default `One-Time Grant` is selected. |
|                    | Category                 | Drop down. values are `Annual Recurring`, `Major Initiatives`,  `Non-Recurring Minor`. |
| One time Payment   |                          |                                                              |
|                    | Payment Mode             | Drop down. Values are `Cash`, `Private Stock`, `Public Stock`, `In Kind`, `Digital Currency`. Default `Cash` is selected. |
|                    | Date*                    | Date input field.                                            |
|                    | Payment Notes            | Multi line text input field.                                 |
| Multi-Year Payment |                          |                                                              |
|                    | Start Date*              | Date input field.                                            |
|                    | Amount*                  | Currency input field. Decimal is allowed. Default value is `$0.00` |
|                    | End Date*                | Drop down. values are `Never` and show after 10 years of `Start date`. For ex. If i am selected `10-02-2020` in start date, then system shows 10 years after `Start Date` like `10-02-2021`, `10-02-2022` up to `10-02-2030`. |
|                    | Notes                    | Simple multi line text input field.                          |
| Payments           |                          | Multi value field.                                           |
|                    | Date*                    | Simple date input field                                      |
|                    | Amount*                  | Currency input field. decimal is allowed. default value is `$0.00`. |
|                    | Notes                    | Simple multi line text input field.                          |


## Payment entity

- For one time grant only one payment will be created
- For `Multi-year` and `Custom`, multiple payments will be created
- Based on the selected `Payment mode` fields will be different

### Payment mode = `Cash`. 

| Field Name            | Description                                                  |
| --------------------- | ------------------------------------------------------------ |
| Status                | `Paid` or `Pending`                                          |
| Payment mode          | Drop down. Values are `Cash`, `Private Stock`, `Public Stock`, `In Kind`, `Digital Currency`. Default `Cash` is selected. |
| Payment date          | Date input.                                                  |
| Amount*               | Currency input field. Decimal is allowed. Default value is `$0.00` |
| Tax Deductible Amount | Currency input field. Decimal is allowed. Default value is `$0.00` |
| Payment notes         | Multiline text input field                                   |

### Payment mode = `Private Stock`. 

| Field Name            | Description                                                  |
| --------------------- | ------------------------------------------------------------ |
| Stock Name*           | Stock auto complete. alphabetically sorting.                 |
| Stock Basis*          | Currency input field. Decimal is allowed. Default value is `$0.00` |
| No of Shares*         | Number input field. Decimal is allowed.                      |
| High Price            | Currency input field. Decimal is allowed. Default value is `$0.00` |
| Low Price             | Currency input field. Decimal is allowed. Default value is `$0.00` |
| Average Price         | Read only field.<br />Its calculated field. <br />(`Average Price` = ((`High Price` + `Law Price`)/ 2)) |
| Tax Deductible Amount | Currency input field. Decimal is allowed. Default value is `$0.00` |
| Gift Tax Value        | Read only field.<br />Its calculated field.<br />(`Gift Tax Value` = (`No of Shares` * `Average Price`)) |

### Payment mode = `Public Stock`. 

| Field Name            | Description                                                  |
| --------------------- | ------------------------------------------------------------ |
| Stock Name*           | Stock auto complete. alphabetically sorting.                 |
| Stock Basis*          | Currency input field. Decimal is allowed. Default value is `$0.00` |
| No of Shares*         | Number input field. Decimal is allowed.                      |
| High Price            | Currency input field. Decimal is allowed. Default value is `$0.00` |
| Low Price             | Currency input field. Decimal is allowed. Default value is `$0.00` |
| Average Price         | Read only field.<br />Its calculated field. <br />(`Average Price` = ((`High Price` + `Law Price`)/ 2)) |
| Tax Deductible Amount | Currency input field. Decimal is allowed. Default value is `$0.00` |
| Gift Tax Value        | Read only field.<br />Its calculated field.<br />(`Gift Tax Value` = (`No of Shares` * `Average Price`)) |
| Purchase Date         | Date input field.                                            |
| Stock Exchange        | Company auto complete.                                       |

### Payment mode = `In Kind`. 

| Field Name            | Description                                                  |
| --------------------- | ------------------------------------------------------------ |
| Amount*               | Currency input field. Decimal is allowed. Default value is `$0.00` |
| Tax Deductible Amount | Currency input field. Decimal is allowed. Default value is `$0.00` |

### Payment mode = `Digital Currency`. 

| Field Name            | Description                                                  |
| --------------------- | ------------------------------------------------------------ |
| Security Name         | Stock auto complete. alphabetically sorting.                 |
| Security Basis*       | Currency input field. Decimal is allowed. Default value is `$0.00` |
| No of Units*          | Number input field. Decimal is allowed.                      |
| High Price            | Currency input field. Decimal is allowed. Default value is `$0.00` |
| Low Price             | Currency input field. Decimal is allowed. Default value is `$0.00` |
| Average Price         | Read only field.<br />Its calculated field. <br />(`Average Price` = ((`High Price` + `Law Price`)/ 2)) |
| Tax Deductible Amount | Currency input field. Decimal is allowed. Default value is `$0.00` |
| Gift Tax Value        | Read only field.<br />Its calculated field.<br />(`Gift Tax Value` = (`No of Shares` * `Average Price`)) |
| Purchase Date         | Date input field.                                            |
| Stock Exchange        | Company auto complete.                                       |



## System requirement

### Add

- A new `Grant` can be added by clicking on the Add button.
- Creating another  `Grant` within one Organization,
  - `Non Profit Organization` and `Organization Group` can't be changed.
- There are total 3 types of `Grant`.
  - One-time Grant
  - Custom Grant
  - Multi-year Grant
  - As per `Grant` , The fields of Payment are different.

### Edit

- `Grant Type` can't be changed.
- `Grant Category`can always be changed. as it’s just a data field. No special use in business logic, other than in filter.
- When `Grant Type` is `Multi-Year Grant`
  - `Start Date` can never be changed.
  - `End Date`
    - Can always be changed.
    - Can be reduced till last non paid payment.
  - `Amount` 
    - All the payments after last `Paid` payment will be updated. e.g Last payment is on `15 March 2019`. Then amount for all payments after that date will be changed.
    - When few payments are already `Paid` and user change amount. We actually updates amount for the remaining payments. Earlier payments stay on the old amount value. For this change, we track History. 
- When `Grant Type` is `One-Time Grant`
  - `Amount` can be changed.
    - `Approved Amount` and `Paid Amount` both are changed.
  - Can be changed `Payment Mode` . And work same as `Edit Payment`.
- When `Grant Type` is `Custom Grant`
  - `Payments` which are already `Paid`, Can't  be Edited/Deleted during `Edit Grant`.

### View History

- Shows history of amount changes for the Payment Terms.
- It’s available only after an amount is change once.

### Delete

- When all payments are `Pending`, can be deleted after confirmation.
- When at least one payment is `Paid`, asks for `Close Grant` instead.
- `Delete` button should be disabled for the payments of ` Multi-year Grant`.
- `Grant` is also deleting when it has no payment left.
- `Closed Grant` can not be deleted.

### Close

- When few payments are `Paid`, Grant can’t be deleted. In this case the user should `Close` the Grant instead.
- On `Close`, All the `Pending` payments are deleted.
- System should ask for text confirmation for this action.

### Payment Edit

- Changes Notes for `Pending` Payment.
- If user want to make payment, the `Payment Status`  can be changed to  `Paid`.
  - `Payment Mode`  Can be changed.
- In `One-Time Grant` ,
  - It’s possible to change payment of One-time Grant from Paid to Pending.

### Make Payment

- should be available for make payment.

### Payment Delete

- Payments of `Multi-year Grant` can’t be deleted.
  - But, Payments of `One-time Grant` and `Custom Grant` can be deleted.
- `Grant` is deleted when last payment is deleted:
  - For `One-time Grant`, when Payment is deleted, Grant is also deleted.
  - For `Custom Grant`, When last payment is deleted, Grant is also deleted.



## UI Requirement