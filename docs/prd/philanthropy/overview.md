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

When Never is selected in End date, right now system creates only one payment for given start date. System will auto create payment on each year 2 months ago before the defined date.

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
| Private Stock | Stock Name*           | Stock auto complete. alphabetically sorting.                 |
|           | Stock Basis*          | Currency input field. Decimal is allowed. Default value is `$0.00` |
|          | No of Shares*         | Number input field. Decimal is allowed.                      |
|             | High Price            | Currency input field. Decimal is allowed. Default value is `$0.00` |
|              | Low Price             | Currency input field. Decimal is allowed. Default value is `$0.00` |
|          | Average Price         | Read only field.<br />Its calculated field. <br />(`Average Price` = ((`High Price` + `Law Price`)/ 2)) |
|  | Tax Deductible Amount | Currency input field. Decimal is allowed. Default value is `$0.00` |
|         | Gift Tax Value        | Read only field.<br />Its calculated field.<br />(`Gift Tax Value` = (`No of Shares` * `Average Price`)) |
| Public stock | Stock Name*           | Stock auto complete. alphabetically sorting.                 |
|           | Stock Basis*          | Currency input field. Decimal is allowed. Default value is `$0.00` |
|          | No of Shares*         | Number input field. Decimal is allowed.                      |
|             | High Price            | Currency input field. Decimal is allowed. Default value is `$0.00` |
|              | Low Price             | Currency input field. Decimal is allowed. Default value is `$0.00` |
|          | Average Price         | Read only field.<br />Its calculated field. <br />(`Average Price` = ((`High Price` + `Law Price`)/ 2)) |
|  | Tax Deductible Amount | Currency input field. Decimal is allowed. Default value is `$0.00` |
|         | Gift Tax Value        | Read only field.<br />Its calculated field.<br />(`Gift Tax Value` = (`No of Shares` * `Average Price`)) |
|          | Purchase Date         | Date input field.                                            |
|         | Stock Exchange        | Company auto complete.                                       |
| Digital Currency | Security Name*        | Stock auto complete. alphabetically sorting.                 |
|        | Security Basis*       | Currency input field. Decimal is allowed. Default value is `$0.00` |
|           | No of Units*          | Number input field. Decimal is allowed.                      |
|             | High Price            | Currency input field. Decimal is allowed. Default value is `$0.00` |
|              | Low Price             | Currency input field. Decimal is allowed. Default value is `$0.00` |
|          | Average Price         | Read only field.<br />Its calculated field. <br />(`Average Price` = ((`High Price` + `Law Price`)/ 2)) |
|  | Tax Deductible Amount | Currency input field. Decimal is allowed. Default value is `$0.00` |
|         | Gift Tax Value        | Read only field.<br />Its calculated field.<br />(`Gift Tax Value` = (`No of Shares` * `Average Price`)) |
|          | Purchase Date         | Date input field.                                            |
|         | Stock Exchange        | Company auto complete.                                       |

