# Overview



## Entity

|                                 | Field Name           | Description                                                  |
| ------------------------------- | -------------------- | ------------------------------------------------------------ |
|                                 | Gift Name*           | Free form text field                                         |
|                                 | Giftor               | Individual or Joint                                          |
|                                 | Recipient*           | Autocomplete of Contact, Individuals, Joint and Trust.       |
|                                 | Gift Type*           | Select input. Possible values: Cash (Default), Private Stock, Public Stock, Partnership Units, Investment Fund |
|                                 | Crummey Trust        | Field view. Shows only when Recipient is Trust. Value of the field is `Yes` and `No`. |
| Common fields for any Gift Type |                      |                                                              |
|                                 | Date*                | Date input. Default shows current date                       |
|                                 | Fair Market Value*   | Currency input. Default value is $0.00. Decimal is allowed   |
|                                 | Gift Tax Value*      | Currency input. Default value is $0.00. Decimal is allowed   |
|                                 | Notes                | Multiline text field                                         |
| Gift Type = `Private Stock`     |                      |                                                              |
|                                 | Stock Name*          | Company auto complete dropdown. [See this](#stock-auto-complete) |
|                                 | Stock Basis*         | Currency input. Default value is $0.00. Decimal is allowed   |
|                                 | No of Shares*        | Number input field. Decimal is allowed.                      |
| Gift Type = `Public Stock`      |                      |                                                              |
|                                 | Stock Name*          | Company auto complete dropdown. [See this](#stock-auto-complete) |
|                                 | Stock Basis*         | Currency input. Default value is $0.00. Decimal is allowed   |
|                                 | No of Shares*        | Number input field. Decimal is allowed.                      |
|                                 | Average Price        | Disable field. Its calculated field.<br/>(`Average Price` = ((`High Price` + `Law Price`)/ 2)) |
|                                 | Low Price            | Currency input. Default value is $0.00. Decimal is allowed   |
|                                 | High Price           | Currency input. Default value is $0.00. Decimal is allowed   |
|                                 | Purchase Date        | Date input. Any date is allowed here.                        |
|                                 | Stock Exchange       | Company autocomplete.                                        |
| Gift Type = `Partnership Units` |                      |                                                              |
|                                 | Company              | Company autocomplete                                         |
|                                 | Units                | Number input field. Decimal is allowed.                      |
|                                 | Percentage           | Flag. If true Units will be in %, if false Units will be in number |
| Gift Type = `Investment Fund`   |                      |                                                              |
|                                 | Investment Fund Name | Free form text input field                                   |

#### Stock Auto complete

It will show `Same Family Partnerships` and all `Private type companies` in the dropdown. When user enter new name, system will create new company of type `Private`.

