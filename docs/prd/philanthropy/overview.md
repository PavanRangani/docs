# Overview

This module is used to track the donation (Philanthrophy or Grant) given to any Non profit organization

Generally Non profit organization raise funds for different different type of projects. So Grant can be given for different projects within same organization.

This Grant can be one time or recurring for some years.



## Grant Entity

#### Non Profilt Organization

Non profit organization to which Grant is given. One of the `Company` in Athena.

#### Organization Group

Group of the company selected in `Non Profit Organization`

#### Project Name

Name of the project for selected Organization in `Non Profit Organization`

#### Project Category

Category of the project. It can be one of the:  `Arts and Culture`, `Environment`, `Health and Human Services`, `Public Policy`,  `Education`, `General`, `Private Foundation`, `Donor Advised Fund`.

#### Project Description

Description of the project

#### Grant Type

Possible values are: `One-Time Grant`, `Multi-Year Grant`, `Custom Grant`. 

When Grant is to be given only once `One-Time Grant` should be selected.

When Grant is to be given recurringly on each year  for up to some given year `Multi-Year Grant` should be selected.

When Grant is to be given more than one time but its payment frequency is custom, `Custom Grant` should be selected

##### One time Grant

For `One-time Grant`  only one payment is created and its status will be paid.

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



## Payment entity

#### Payment Mode

It can be one of the: `Cash`, `Private Stock`, `Public Stock`, `In Kind`, `Digital Currency`. 

Based on the selected `Payment mode` some other fields will be shown. See [Payment mode specific fields](#payment-mode-specific-fields)

#### Date

Date of the payment

#### Amount

Amount of the Payment

#### Tax Deductible Amount

Amount after deducting tax

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
|  | Tax Deductible Amount | Currency input field. Decimal is allowed. Default value is `$0.00` |
|         | Gift Tax Value        | Read only field.<br />Its calculated field.<br />(`Gift Tax Value` = (`No of Shares` * `Average Price`)) |
| Public stock | Stock Name*           | Stock auto complete. alphabetically sorting. See [this](#stock-auto-complete). |
|           | Stock Basis*          | Currency input field. Decimal is allowed. Default value is `$0.00` |
|          | No of Shares*         | Number input field. Decimal is allowed.                      |
|             | High Price            | Currency input field. Decimal is allowed. Default value is `$0.00` |
|              | Low Price             | Currency input field. Decimal is allowed. Default value is `$0.00` |
|          | Average Price         | Read only field.<br />Its calculated field. <br />(`Average Price` = ((`High Price` + `Law Price`)/ 2)) |
|  | Tax Deductible Amount | Currency input field. Decimal is allowed. Default value is `$0.00` |
|         | Gift Tax Value        | Read only field.<br />Its calculated field.<br />(`Gift Tax Value` = (`No of Shares` * `Average Price`)) |
|          | Purchase Date         | Date input field.                                            |
|         | Stock Exchange        | Company auto complete.                                       |
| Digital Currency | Security Name*        | Stock auto complete. alphabetically sorting. See [this](#stock-auto-complete). |
|        | Security Basis*       | Currency input field. Decimal is allowed. Default value is `$0.00` |
|           | No of Units*          | Number input field. Decimal is allowed.                      |
|             | High Price            | Currency input field. Decimal is allowed. Default value is `$0.00` |
|              | Low Price             | Currency input field. Decimal is allowed. Default value is `$0.00` |
|          | Average Price         | Read only field.<br />Its calculated field. <br />(`Average Price` = ((`High Price` + `Law Price`)/ 2)) |
|  | Tax Deductible Amount | Currency input field. Decimal is allowed. Default value is `$0.00` |
|         | Gift Tax Value        | Read only field.<br />Its calculated field.<br />(`Gift Tax Value` = (`No of Shares` * `Average Price`)) |
|          | Purchase Date         | Date input field.                                            |
|         | Stock Exchange        | Company auto complete.                                       |

#### Stock Auto complete

Allows user to type new name of stock. Also allows to select exisiting values from list. In list, it shows all the unique records added till date in stock field.