# Overview



## Entity

#### Gift Name (*)

Free form text field

#### Giftor

Read only field. It should be either `Individuals` or `Joint`.

#### Recipient (*)

Autocomplete of Contact, Individuals, Joint and Trust.

#### Gift Type (*)

Select input. Possible values: Cash (Default), Private Stock, Public Stock, Partnership Units, Investment Fund

#### Crummey Trust

Field view. Shows only when Recipient is Trust. Value of the field is `Yes` and `No`.

### Gift type specific field

#### Gift type is `Cash`

| Field Name         | Description                                                |
| ------------------ | ---------------------------------------------------------- |
| Date*              | Date input. Default shows current date                     |
| Fair Market Value* | Currency input. Default value is $0.00. Decimal is allowed |
| Gift Tax Value*    | Currency input. Default value is $0.00. Decimal is allowed |
| Notes              | Multiline text field                                       |



#### Gift type is `Private Stock`

| Field Name  |                    | Description                                                  |
| ----------- | ------------------ | ------------------------------------------------------------ |
| Date*       |                    | Date input. Default shows current date                       |
| Stock Name* |                    | Company auto complete dropdown. It will show `Same Family Partnerships` and all `Private type companies` in the dropdown. When user enter new name, system will create new company of type `Private`. |
| Lots        |                    | Its multi value field. User can add multiple if required. At least one `Lot` should be available. |
|             | No of Shares*      | Number input field. Decimal is allowed.                      |
|             | Stock Basis*       | Currency input. Default value is $0.00. Decimal is allowed   |
|             | Gift Tax Value*    | Currency input. Default value is $0.00. Decimal is allowed. Shows total amount of `Gift Tax Value`. |
|             | Fair Market Value* | Currency input. Default value is $0.00. Decimal is allowed. Shows total amount of `Fair Market Value`. |
| Notes       |                    | Multiline text field                                         |



#### Gift type is `Public Stock`

| Field Name     |                    | Description                                                  |
| -------------- | ------------------ | ------------------------------------------------------------ |
| Date*          |                    | Date input. Default shows current date                       |
| Stock Name*    |                    | Company auto complete dropdown. It will show all `Public type companies` in the dropdown. When user enter new name, system will create new company of type `Public`. |
| Stock Exchange |                    | Company auto complete. Only shows normal companies           |
| Low Price      |                    | Currency input field. Decimal is allowed. Default value is `$0.00` |
| High Price     |                    | Currency input field. Decimal is allowed. Default value is `$0.00` |
| Average Price  |                    | Read only field.<br />Its calculated field. <br />(`Average Price` = ((`High Price` + `Law Price`)/ 2)) |
| Lots           |                    | Its multi value field. User can add multiple if required. At least one `Lot` should be available. |
|                | Purchase Date*     | Date input field.                                            |
|                | No of Shares*      | Number input field. Decimal is allowed.                      |
|                | Stock Basis*       | Currency input. Default value is $0.00. Decimal is allowed   |
|                | Gift Tax Value*    | Currency input. Default value is $0.00. Decimal is allowed. Shows total amount of `Gift Tax Value`. |
|                | Fair Market Value* | Currency input. Default value is $0.00. Decimal is allowed. Shows total amount of `Fair Market Value`. |
| Notes          |                    | Multiline text field                                         |



#### Gift type is `Partnership Units`

| Field Name         | Description                                                  |
| ------------------ | ------------------------------------------------------------ |
| Date*              | Date input. Default shows current date                       |
| Fair Market Value* | Currency input. Default value is $0.00. Decimal is allowed   |
| Gift Tax Value*    | Currency input. Default value is $0.00. Decimal is allowed   |
| Company            | Auto complete dropdown of `Same Family Partnership`.         |
| Units              | Number input field. Decimal is allowed.                      |
| Percentage         | Flag. If true Units will be in %, if false Units will be in number |
| Notes              | Multiline text field                                         |



#### Gift type is `Investment Fund`

| Field Name            | Description                                                  |
| --------------------- | ------------------------------------------------------------ |
| Date*                 | Date input. Default shows current date.                      |
| Fair Market Value*    | Currency input. Default value is $0.00. Decimal is allowed.  |
| Gift Tax Value*       | Currency input. Default value is $0.00. Decimal is allowed.  |
| Investment Fund Name* | Company auto complete dropdown. It will show all `Investment Fund` type companies in the dropdown. When user enter new name, system will create new company of type `Investment Fund`. |
| Notes                 | Multiline text field.                                        |

