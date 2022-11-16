# Overview

This module is used to track the donation given to any Non profit organization or own family foundation.

Generally Non profit organization raise funds for different different type of projects. So Grant can be given for different projects within same organization.

For Estate, this module is not applicable.

#### What is Contribution?

- `Individual/Joint/Partnership/Trust` making a payment to their active Foundation.
- Contribution will always be `One time`.

#### What is Grant?

- `Individual/Joint/Partnership/Foundation/Trust` making a direct payment to a non-profit firm or other family active foundation.
- Foundation making a direct payment to a non-profit firm
- Grant can be given one time or recurringly for some years.



## Grant/Contribution Entity

#### Organization

For Grant, its a Non profit company or active foundation of other family, to which Grant is given. When user enter new name, system create a new company with type `Non-Profit`.

For Contribution, its a Foundation to which Contribution is given. Its one of the active foundation of the same family.

Its a mandatory field.

#### Organization Group

Group of the company selected in `Organization`.

#### Organization Category

Category of the project. It can be one of the:  `Arts and Culture`, `Donor Advised Fund`,  `Education`,  `Environment`, `General`, `Global`,  `Health` , ` Human Services`, `Private Foundation`, `Public Policy`,  `Religion`.

Organization Category is sorted on alphabetical order.

Its not mandatory field. 

Not applicable to Contribution

#### Project Name

Name of the project for selected Organization

Allows to select from existing projects of selected organization or allows to type new name. Its a mandatory field.

Not applicable to Contribution

#### Major Initiative

Its dropdown field. Possible values are `Yes` and `No`.  Default shows `No`. 

Not applicable to Contribution

#### Project Description

Description of the project. Its not mandatory field. 

Not applicable to Contribution

#### Type

Possible values are: `One-Time`, `Multi-Year`, `Custom`. 

`Contribution` will always be `One-time` .

When Grant is to be given only once `One-Time` should be selected.

When Grant is to be given recurringly on each year for up to some given year `Multi-Year` should be selected.

When Grant is to be given more than one time but its payment frequency is custom, `Custom` should be selected

##### One time

For `One-time`  only one payment is created and its status will be paid.

##### Multi Year Payment

Based on the selected start date and end date, one payment for each year will be created. 

When Never is selected in End date, System creates only 3 payments: One Payment for given start date & Two payments for next two year of start date. On the next year payment date system will create another payment. This way system will keep creating payment on each year.



> Example case: When user create any multi year grant with start date 04/28/2020 and end date `Never`, system will create 3 payments with date 04/28/2020, 04/28/2021, 04/28/2022. 
>
> On 04/28/2021 system will create another payment of 04/28/2023. 
>
> This way on each year system will create one payment in advance.

Status of the all the payments will be `Pending`

Start date is not available then show `No Scheduled Payments Avaialble` message.

Allows to define grant amount of each payment. Doesn't allow to change date.

##### Custom Grant Payment

Allows to Create more than one payment. For each payment allows to define Date, Amount and Notes



## Payment entity

See this excel to know more [different payments mode](https://docs.google.com/spreadsheets/d/1mUGBlI_ZCi5geOK27rnxa1NFf7lwrnl8/edit#gid=792496201)

#### Mode

For `Grant` , its called as `Payment Mode`.

For `Contribution`, Its called as `Contribution Mode`.

It can be one of the: `Cash`, `Private Stock`, `Public Stock`, `In Kind`, `Digital Currency`,  `Investment Fund`, `IRA RMD`, `Credit Card`. 

`IRA RMD` mode is applicable only for grant given individual and Joint.

`Investment Fund` has subtypes : `ETF` , `Mutual Fund`. For `Investment Fund | Limited Partnership` is not applicable for Philanthropy.

Based on the selected `Payment mode` some other fields will be shown. See [Payment mode specific fields](#payment-mode-specific-fields)

When Grant is given by `Private Foundation (Trust, C-Corporation)`, show only `Cash`, `Public Stock` & `Credit Card` payment mode.

When Grant is given by `DAF`, show only `Cash` payment mode. for this type it should be disable field.

`In Kind` payment mode is only available for Grants. For Contributions, `In Kind` payment mode is not available. 

#### Date

For `Grant`, Its called as `Payment Date`.

For `Contribution`, Its called as `Contribution Date`.

Date of the payment. its mandatory field.

#### Amount

Amount of the Payment. Its a mandatory field. default value is `$ 0.00`.

#### Tax Deductible Amount

Amount after deducting tax

Its not applicable for the Grants given by Foundation.

For `Cash`, It should be disable field. It value will be same as the `Tax Deductible Amount`.

#### Donation Multiple

Its applicable for `Contributions` and `Grant` where payment mode is `Private Stock`, `Public Stock`, `Digital Currency`, `Investment Fund|ETF`, `Investment Fund|Mutual Fund`.

 Its calculated and disable field. Default value is `$0.00`.  

Calculation formula is: `Donation Multiple = Price / Avg. of Price-per-Share`.

Here `Price` means `Average Price` for  `Public Stock, Digital Currency, ETF` & `Price` for `Private Stock` & `Closing Price` for `Mutual Fund`.

Here `Avg. of Price-per-Share` means the average of `Price-per-Share` column.

This field is not applicable for DAF types foundation.

#### Letter of Acknowledgement

Its a checkbox field. 

Its not applicable for Grant given by DAF types foundation.

#### Notes

Notes for the payment

#### Payment mode specific fields

| Mode | Field name |  | Description |
| --------------------- | ---- | ---- | --------------------- |
| Cash | All above common fields | |  |
| In Kind | All above common fields | |  |
| Private Stock | Stock Name*           |  | Company auto complete dropdown. It will show `Same Family Partnerships` and all `Private type companies` in the dropdown. When user enter new name, system will create new company of type `Private`. |
|  | Price | | Currency input field. Decimal is allowed. Default value is `$0.0000` . [See more details](#price) |
| | Lots |  | Its multi value field. User can add multiple if required. At least one `Lot` should be available. |
| |  | Purchase Date | Date input field. |
| |  | No of Shares | Number input field. Decimal is allowed.  Default value `$ 0.000`. Shows total value of `No of Shares`. [See more details](#no-of-shares) |
| |  | Price-per-Share | Currency input field. Up to 4 decimal value is allowed. Default value is `$0.0000`.<br />Bottom of `Price-per-Share` column show `Average Value`. `(Average Value = Total Basis / No of Shares)`. |
| | | Basis | Disable field.<br />Its calculated field.<br />(`Basis` = (`No of Shares` * `Price-per-Share`))<br />Shows total value of `Basis`. |
|  |                       | Amount | Currency input field. Decimal is allowed. Default value is `$0.00`. Shows total value of `Amount`. |
|         |                 | Tax Deductible Amount | Currency input field. Decimal is allowed. Default value is `$0.00`. Shows total value of `Tax Deductible Amount`. |
| Public stock | Stock Name*         |  | Company auto complete dropdown. It will show all `Public type companies` in the dropdown. When user enter new name, system will create new company of type `Public`. |
|           | Stock Exchange |  | Disable field. `Stock Exchange` will be pulled from selected company in the `Stock Name` field. |
|             | High Price            |  | Currency input field. Decimal is allowed. Default value is `$0.0000`. [See more details](#price) |
|              | Low Price             |  | Currency input field. Decimal is allowed. Default value is `$0.0000`. [See more details](#price) |
|          | Average Price         |  | Read only field.<br />Its calculated field. [See more details](#price) <br />(`Average Price` = ((`High Price` + `Law Price`)/ 2)) |
| | Lots |  | Its multi value field. User can add multiple if required. At least one `Lot` should be available. |
| |  | Purchase Date | Date input field. |
| |  | No of Shares | Number input field. Decimal is allowed.  Default value `$ 0.000`. Shows total value of `No of Shares`. [See more details](#no-of-shares) |
| |  | Price-per-Share | Currency input field. Up to 4 decimal value is allowed. Default value is `$0.0000`.<br />Bottom of `Price-per-Share` column show `Average Value`. `(Average Value = Total Basis / No of Shares)` |
| | | Basis | Disable field.<br />Its calculated field.<br />(`Basis` = (`No of Shares` * `Price-per-Share`))<br />Shows total value of `Basis`. |
|         |   | Amount | Disable field.<br />Its calculated field.<br />(`Amount` = (`No of Shares` * `Average Price`))<br />Shows total value of `Amount`. |
|         |                       | Tax Deductible Amount | Disable Field. Its value will be same as `Amount`. Shows total value of `Tax Deductible Amount`. |
| Digital Currency | Security Name*        |  | Company auto complete dropdown. It will show all `Digital Currency type companies` in the dropdown. When user enter new name, system will create new company of type `Digital Currency`. |
|             | High Price            |  | Currency input field. Decimal is allowed. Default value is `$0.00`. [See more details](#price) |
|              | Low Price             |  | Currency input field. Decimal is allowed. Default value is `$0.00`. [See more details](#price) |
|          | Average Price         |  | Read only field.<br />Its calculated field. [See more details](#price)<br />(`Average Price` = ((`High Price` + `Law Price`)/ 2)) |
| | Lots |  | Its multi value field. User can add multiple if required. At least one `Lot` should be available. |
|  |  | Purchase Date | Date input field. |
|         |  | No of Units | Number input field. Decimal is allowed. Default value is `$0.00`. Shows total value of `Amount`. [See more details](#no-of-shares) |
|          |          | Price-per-Unit          | Currency input. Default value is $0.00. Decimal is allowed.<br />Bottom of `Price-per-Unit` column show `Average Value`. `(Average Value = Total Basis / No of Units)` |
| | | Basis | Disable field.<br />Its calculated field.<br />(`Basis` = (`No of Units` * `Price-per-Unit`))<br />Shows total value of `Basis`. |
|         |         | Amount | Disable field.<br />Its calculated field.<br />(`Amount` = (`No of Shares` * `Average Price`))<br />Shows total value of `Amount`. |
| |  | Tax Deductible Amount | Currency input field. Decimal is allowed. Default value is `$0.00`. Shows total value of `Tax Deductible Amount`. |
| Investment  Fund | Subtype | | Dropdown of `Investment Fund` subtypes. Its values are `ETF`, `Mutual Fund`. `ETF` will be default subtype. |
|                  | Investment Fund Name* | | Company auto complete dropdown.<br />For `ETF`,  it should show only `Investment Fund | ETF` type companies.<br />For `Mutual Fund`,  it should show only `Investment Fund | Mutual FUnd` type companies.<br />When user enter new name, system will create new company with that subtype. |
|  | Stock Exchange | | Its applicable only for `Investment Fund | ETF`.  It will be pulled from selected company in the `Investment Fund name` field. This field will become disable only. |
|  | High Price            | | Its applicable only for `Investment Fund | ETF`. Currency input field. Decimal is allowed. Default value is `$0.00`. [See more details](#price) |
|                  | Low Price             |                           | Its applicable only for `Investment Fund | ETF` . Currency input field. Decimal is allowed. Default value is `$0.00`. [See more details](#price) |
|  | Average Price | | Disable field. Its applicable only for `Investment Fund | ETF`.<br />Its calculated field. [See more details](#price) <br />(`Average Price` = ((`High Price` + `Law Price`)/ 2)) |
|  | Closing Price | | Its applicable only for `Investment Fund | Mutual Fund`.  <br />Currency input field. Decimal is allowed. Default value is `$0.00`. [See more details](#price) |
|  | Lots | | Its multi value field. User can add multiple if required. At least one `Lot` should be available. |
|  |  | Purchase Date | Date input field. |
|  |  | No of Shares | Number input field. Decimal is allowed.  Default value `$ 0.000`. Shows total value of `No of Shares`. [See more details](#no-of-shares) |
|  |  | Price-per-Share | Currency input. Up to 4 decimal value is allowed. Default value is `$0.0000`<br />Bottom of `Price-per-Share` column show `Average Value`. `(Average Value = Total Basis / No of Shares)` |
| | | Basis | Disable field.<br />Its calculated field.<br />(`Basis` = (`No of Shares` * `Price-per-Share`))<br />Shows total value of `Basis`. |
|  |  | Amount | Disable field.<br />Its calculated field.<br />(`Amount` = (`No of Shares` * `Average Price`))<br />Shows total value of `Amount`. |
|  |  | Tax Deductible Amount | Disable Field. Its value will be same as `Amount`. Shows total value of `Tax Deductible Amount`. |
| IRA RMD | All above common fields |  |  |
| Credit Card | All above common fields |  |  |

#### Price

- `Price` related field should allow to enter 4 decimals. for e.g. `12.4363`
  - `Price` means `Average Price, High Price, Low Price` for `Public Stock, Digital Currency, ETF,` `Closing Price` for `Mutual Fund` & `Price` for `Private Stock`.
  - `Average Price` field is a calculated field but during calculation it should preserve 4 decimals. 
    - For e.g. `High price : 183.8200`, `Low price : 182.6700`. Then `Average Price` should be shown as `183.2450`.
- In the view page, it doesn’t show 4 decimals. It will show only two decimals using round-off. for e.g. `12.44`. 
  - But when calculating the `Amount`, use the entered price with 4 decimals, not the rounded 2 decimal price.

#### No of Shares 

- No of shares & No of Units field should be allowed to enter 3 decimals. for e.g `11.456`.
  - This update is applicable in Add/Edit Grant, Edit/Make payment dialog and View dialog.
  - When calculating the `Amount`, use the entered price with 3 decimals, not the rounded 2 decimal price.

## Notes

Previously, We concluded that the Philanthropy module should be disable for Partnership and Estate. But while checking existing data on production, we found the following two partnerships for which Grant records are added 

- [Seattle Hospitality Group, LLC](https://athena.clariusgroup.com/#partnerships/92e84db9-884e-4488-b7b1-8f58098f316e/grants)
- [Haven Entertainment](https://athena.clariusgroup.com/#partnerships/d0cfc8ab-5165-4c44-b20c-2d137b28ca99/grants/organizations)

So we haven't disabled this module for Partnership. 