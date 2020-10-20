# Overview

This module is used to track the donation given to any Non profit organization or own family foundation.

Generally Non profit organization raise funds for different different type of projects. So Grant can be given for different projects within same organization.

For Estate, this module is not applicable.

#### What is Contribution?

- Individual/Joint/Trust making a payment to their Foundation

#### What is Grant?

- Individual/Joint/Trust making a direct payment to a non-profit firm
- Foundation making a direct payment to a non-profit firm

Grant/Contribution is exactly same. Its defined based on who is recipient.

Grant/Contribution can be given one time or recurringly for some years

## Grant/Contribution Entity

#### Organization

For Grant, its a Non profit company or foundation of other family, to which Grant is given. 

For Contribution, its a Foundation to which Contribution is given. Its one of the foundation of the same family.

#### Organization Group

Group of the company selected in `Non Profit Organization`

Not applicable to Contribution

#### Project Name

Name of the project for selected Organization

Allows to select from existing projects of selected organization or allows to type new name.

#### Project Category

Category of the project. It can be one of the:  `Arts and Culture`, `Environment`, `Health and Human Services`, `Public Policy`,  `Education`, `General`, `Private Foundation`, `Donor Advised Fund`.

Its not mandatory field

#### Project Description

Description of the project

#### Type

Possible values are: `One-Time`, `Multi-Year`, `Custom`. 

When Grant/Contribution is to be given only once `One-Time` should be selected.

When Grant/Contribution is to be given recurringly on each year  for up to some given year `Multi-Year` should be selected.

When Grant/Contribution is to be given more than one time but its payment frequency is custom, `Custom` should be selected

##### One time

For `One-time`  only one payment is created and its status will be paid.

##### Multi Year Payment

Based on the selected start date and end date, one payment for each year will be created. 

When Never is selected in End date, System creates only 3 payments: One Payment for given start date & Two payments for next two year of start date. On the next year payment date system will create another payment. This way system will keep creating payment on each year.



> Example case: When user create any multi year grant with start date 04/28/2020 and end date `Never`, system will create 3 payments with date 04/28/2020, 04/28/2021, 04/28/2022. 
>
> On 04/28/2021 system will create another payment of 04/28/2022. 
>
> This way on each year system will create one payment in advance.

Status of the all the payments will be `Pending`

##### Custom Grant Payment

Allows to Create more than one payment. For each payment allows to define Date, Amount and Notes

#### Category

It can be one of the : `Annual Recurring`, `Major Initiatives`,  `Non-Recurring Minor`

Its not mandatory field



## Payment entity

#### Payment Mode

It can be one of the: `Cash`, `Private Stock`, `Public Stock`, `In Kind`, `Digital Currency`. 

Based on the selected `Payment mode` some other fields will be shown. See [Payment mode specific fields](#payment-mode-specific-fields)

`In Kind` payment mode is only available for Grants. For Contributions, `In Kind` payment mode is not available. 

#### Date

Date of the payment

#### Amount

Amount of the Payment

#### Tax Deductible Amount

Amount after deducting tax

Its not applicable for the Grants given by Foundation

#### Notes

Notes for the payment

#### Status

Can be `Pending` or `Paid`

#### Payment mode specific fields

| Mode | Field name | Description |
| --------------------- | ---- | ---- |
| Private Stock | Stock Name*           | Stock auto complete. Alphabetically sorting. See [this](#stock-auto-complete). |
|           | Stock Basis*          | Currency input field. Decimal is allowed. Default value is `$0.00` |
|          | No of Shares*         | Number input field. Decimal is allowed.                      |
|             | High Price            | Currency input field. Decimal is allowed. Default value is `$0.00` |
|              | Low Price             | Currency input field. Decimal is allowed. Default value is `$0.00` |
|          | Average Price         | Read only field.<br />Its calculated field. <br />(`Average Price` = ((`High Price` + `Law Price`)/ 2)) |
|  | Tax Deductible Amount | Currency input field. Decimal is allowed. Default value is `$0.00`. Its not applicable for the Grants given by Foundation |
|         | Gift Tax Value        | Read only field.<br />Its calculated field.<br />(`Gift Tax Value` = (`No of Shares` * `Average Price`)) |
| Public stock | Stock Name*           | Stock auto complete. alphabetically sorting. See [this](#stock-auto-complete). |
|           | Stock Basis*          | Currency input field. Decimal is allowed. Default value is `$0.00` |
|          | No of Shares*         | Number input field. Decimal is allowed.                      |
|             | High Price            | Currency input field. Decimal is allowed. Default value is `$0.00` |
|              | Low Price             | Currency input field. Decimal is allowed. Default value is `$0.00` |
|          | Average Price         | Read only field.<br />Its calculated field. <br />(`Average Price` = ((`High Price` + `Law Price`)/ 2)) |
|  | Tax Deductible Amount | Currency input field. Decimal is allowed. Default value is `$0.00`. Its not applicable for the Grants given by Foundation |
|         | Gift Tax Value        | Read only field.<br />Its calculated field.<br />(`Gift Tax Value` = (`No of Shares` * `Average Price`)) |
|          | Purchase Date         | Date input field.                                            |
|         | Stock Exchange        | Company auto complete. Only shows normal companies        |
| Digital Currency | Security Name*        | Stock auto complete. alphabetically sorting. See [this](#stock-auto-complete). |
|        | Security Basis*       | Currency input field. Decimal is allowed. Default value is `$0.00` |
|           | No of Units*          | Number input field. Decimal is allowed.                      |
|             | High Price            | Currency input field. Decimal is allowed. Default value is `$0.00` |
|              | Low Price             | Currency input field. Decimal is allowed. Default value is `$0.00` |
|          | Average Price         | Read only field.<br />Its calculated field. <br />(`Average Price` = ((`High Price` + `Law Price`)/ 2)) |
|  | Tax Deductible Amount | Currency input field. Decimal is allowed. Default value is `$0.00`. Its not applicable for the Grants given by Foundation |
|         | Gift Tax Value        | Read only field.<br />Its calculated field.<br />(`Gift Tax Value` = (`No of Shares` * `Average Price`)) |
|          | Purchase Date         | Date input field.                                            |
|         | Stock Exchange        | Company auto complete. Only shows normal companies |

#### Stock Auto complete

Allows user to type new name of stock. Also allows to select existing values from list. In list, it shows all the unique records added till date in stock field.



## Notes

Previously, We concluded that the Philanthropy module should be disable for Partnership and Estate. But while checking existing data on production, we found the following two partnerships for which Grant records are added 

- [Seattle Hospitality Group, LLC](https://athena.clariusgroup.com/#partnerships/92e84db9-884e-4488-b7b1-8f58098f316e/grants)
- [Haven Entertainment](https://athena.clariusgroup.com/#partnerships/d0cfc8ab-5165-4c44-b20c-2d137b28ca99/grants/organizations)

So we haven't disabled this module for Partnership. 