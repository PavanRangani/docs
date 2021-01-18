Overview



## Entity

See this excel to know more [different payments mode](https://docs.google.com/spreadsheets/d/1mUGBlI_ZCi5geOK27rnxa1NFf7lwrnl8/edit#gid=792496201)

#### Gift Name (*)

Free form text field

#### Giftor

Read only field. It should be either `Individuals` or `Joint`.

#### Recipient (*)

Autocomplete of Contact, Individuals, Joint and Trust.

#### Gift Mode (*)

Select input. Possible values: `Cash` (Default), `Private Stock`, `Public Stock`, `Investment Fund`, `Digital Currency`.

`Investment Fund` has some subtype `ETF`, `Mutual Fund`, `Limited Partnership`.

#### Crummey Trust

Field view. Shows only when Recipient is Trust. Value of the field is `Yes` and `No`.

### Gift type specific field

#### Gift type is Cash

| Field Name        | Description                                                  |
| ----------------- | ------------------------------------------------------------ |
| Gift Date*        | Date input. Default shows current date                       |
| Fair Market Value | Currency input. Default value is $0.00. Decimal is allowed   |
| Gift Tax Value    | Disable field. Its value will be same as `Fair Market Value`. |
| Notes             | Multiline text field                                         |



#### Gift type is Private Stock

| Field Name  |                   | Description                                                  |
| ----------- | ----------------- | ------------------------------------------------------------ |
| Gift Date*  |                   | Date input. Default shows current date                       |
| Stock Name* |                   | Company auto complete dropdown. It will show `Same Family Partnerships` and all `Private type companies` in the dropdown. When user enter new name, system will create new company of type `Private`. |
| Price*      |                   | Number Input field. Default value is $ 0.00. Decimal is allowed. |
| Lots        |                   | Its multi value field. User can add multiple if required. At least one `Lot` should be available. |
|             | Purchase Date     | Date input field.                                            |
|             | No of Shares      | Number input field. Decimal is allowed.                      |
|             | Price-per-Share   | Currency input field. Decimal is allowed. Default value is `$0.00`.<br />Bottom of `Price-per-Share` column show `Average Value`. `(Average Value = Total Basis / No of Shares)` |
|             | Basis             | Disable field.<br />Its calculated field.<br />(`Basis` = (`No of Shares` * `Price-per-Share`))<br />Shows total value of `Basis`. |
|             | Gift Tax Value    | Currency input. Default value is $0.00. Decimal is allowed. Shows total amount of `Gift Tax Value`. |
|             | Fair Market Value | Disable field.<br />Shows total amount of `Fair Market Value`. <br />Its calculated field.  `(Fair Market Value = Price * No of Shares)` |
| Notes       |                   | Multiline text field                                         |



#### Gift type is Public Stock

| Field Name     |                    | Description                                                  |
| -------------- | ------------------ | ------------------------------------------------------------ |
| Gift Date*     |                    | Date input. Default shows current date                       |
| Stock Name*    |                    | Company auto complete dropdown. It will show all `Public type companies` in the dropdown. When user enter new name, system will create new company of type `Public`. |
| Stock Exchange |                    | Disable field. `Stock Exchange` will be pulled from selected company in the `Stock name` field. |
| Low Price      |                    | Currency input field. Decimal is allowed. Default value is `$0.00` |
| High Price     |                    | Currency input field. Decimal is allowed. Default value is `$0.00` |
| Average Price  |                    | Disable field.<br />Its calculated field. <br />(`Average Price` = ((`High Price` + `Law Price`)/ 2)) |
| Lots           |                    | Its multi value field. User can add multiple if required. At least one `Lot` should be available. |
|                | Purchase Date      | Date input field.                                            |
|                | No of Shares       | Number input field. Decimal is allowed.                      |
|                | Price-per-Share    | Currency input field. Decimal is allowed. Default value is `$0.00`.<br />Bottom of `Price-per-Share` column show `Average Value`. `(Average Value = Total Basis / No of Shares)` |
|                | Basis              | Disable field.<br />Its calculated field.<br />(`Basis` = (`No of Shares` * `Price-per-Share`))<br />Shows total value of `Basis`. |
|                | Gift Tax Value*    | Disable Field. Its value will be same as `Fair Market Value`. Shows total amount of `Gift Tax Value`. |
|                | Fair Market Value* | Disable field.<br />Shows total amount of `Fair Market Value`. <br />Its calculated field. `(Fair Market Value = Average Price * No of Shares)`. |
| Notes          |                    | Multiline text field                                         |



#### Gift type is Digital Currency

| Field Name     |                   | Description                                                  |
| -------------- | ----------------- | ------------------------------------------------------------ |
| Gift Date*     |                   | Date input. Default shows current date                       |
| Security Name* |                   | Company auto complete dropdown. It will show all `Public type companies` in the dropdown. When user enter new name, system will create new company of type `Public`. |
| Low Price      |                   | Currency input field. Decimal is allowed. Default value is `$0.00` |
| High Price     |                   | Currency input field. Decimal is allowed. Default value is `$0.00` |
| Average Price  |                   | Disable field.<br />Its calculated field. <br />(`Average Price` = ((`High Price` + `Law Price`)/ 2)) |
| Lots           |                   | Its multi value field. User can add multiple if required. At least one `Lot` should be available. |
|                | Purchase Date     | Date input field.                                            |
|                | No of Units       | Number input field. Decimal is allowed.                      |
|                | Price-per-Unit    | Currency input. Default value is $0.00. Decimal is allowed.<br />Bottom of `Price-per-Unit` column show `Average Value`. `(Average Value = Total Basis / No of Units)` |
|                | Basis             | Disable field.<br />Its calculated field.<br />(`Basis` = (`No of Units` * `Price-per-Unit`))<br />Shows total value of `Basis`. |
|                | Gift Tax Value    | Currency input. Default value is $0.00. Decimal is allowed. Shows total amount of `Gift Tax Value`. |
|                | Fair Market Value | Disable field.<br />Shows total amount of `Fair Market Value`. <br />Its calculated field. `(Fair Market Value = Average Price * No of Shares)`. |
| Notes          |                   | Multiline text field                                         |



#### Gift type is Investment Fund

| Field Name            |                   | Description                                                  |
| --------------------- | ----------------- | ------------------------------------------------------------ |
| Gift Date*            |                   | Date input. Default shows current date                       |
| Subtype               |                   | Dropdown of `Investment Fund` subtypes. Its values are `ETF`, `Mutual Fund`, `Limited Partnership`. `ETF` will be default subtype. |
| Investment Fund Name* |                   | Company auto complete dropdown. <br />For `ETF`,  It should show only `Investment Fund | ETF` type companies.<br />For `Mutual Fund`,  It should show only `Investment Fund | Mutual Fund` type companies.<br />For `Limited Partnership`, It should show only `Investment Fund | Limited Partnership` and `Same Family Partnership`. <br />When user enter new name, system will create new company with that subtype. |
| Stock Exchange        |                   | Disable field. Its applicable only for `Investment Fund | ETF`.  It will be pulled from selected company in the `Investment Fund name` field. |
| Units or Percentage   |                   | Its applicable only for `Investment Fund | Limited Partnership`. <br />Number input field. Decimal is allowed. |
| Percentage            |                   | Its applicable only for `Investment Fund | Limited Partnership`. <br />Flag. If true Units will be in %, if false Units will be in number |
| High Price            |                   | Its applicable only for `Investment Fund | ETF`. Currency input field. Decimal is allowed. Default value is `$0.00` |
| Low Price             |                   | Its applicable only for `Investment Fund | ETF` . Currency input field. Decimal is allowed. Default value is `$0.00` |
| Average Price         |                   | Disable field. Its applicable only for `Investment Fund | ETF`.<br />Its calculated field. <br />(`Average Price` = ((`High Price` + `Law Price`)/ 2)) |
| Closing Price         |                   | Its applicable only for `Investment Fund | Mutual Fund`.  <br />Currency input field. Decimal is allowed. Default value is `$0.00` |
| Lots                  |                   | Lots is applicable for `Investment Fund | ETF` and `Investment Fund| Mutual Fund`<br />Its multi value field. User can add multiple if required. At least one `Lot` should be available. |
|                       | Purchase Date     | Date input field.                                            |
|                       | No of Shares      | Number input field. Decimal is allowed.                      |
|                       | Price-per-share   | Its applicable only for `Investment Fund | ETF` and `Investment Fund| Mutual Fund`.<br />Currency input. Default value is $0.00. Decimal is allowed.<br />Bottom of `Price-per-Share` column show `Average Value`. `(Average Value = Total Basis / No of Shares)` |
|                       | Basis             | Its applicable only for `Investment Fund | ETF` and `Investment Fund| Mutual Fund`.<br />Disable and Calculated field.<br />(`Basis` = (`No of Shares` * `Price-per-Share`))<br />Shows total value of `Basis`. |
|                       | Gift Tax Value    | It should be disable and calculated field for  `Investment Fund | ETF` and `Investment Fund| Mutual Fund` subtype.<br />For `Investment Fund| ETF`, `(Gift Tax Value = Average Price * No of Shares)`<br />For `Investment Fund| Mutual Fund`, `(Gift Tax Value = Closing Price * No of Shares)`<br />For `Investment Fund | Limited Partnership`, It should be Currency input. Default value is $0.00. Decimal is allowed. <br />Shows total amount of `Gift Tax Value`. |
|                       | Fair Market Value | It should be disable field for  `Investment Fund | ETF` and `Investment Fund| Mutual Fund` subtype. For this both subtype `Fair Market Value` will be same as the `Gift Tax value`.<br />For `Investment Fund | Limited Partnership`, It should be Currency input. Default value is $0.00. Decimal is allowed. <br />Shows total amount of `Fair market Value`. |
| Notes                 |                   | Multiline text field                                         |