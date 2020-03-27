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