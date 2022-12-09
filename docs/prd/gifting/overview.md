# Overview

## Entity

See this excel to know more [different payments mode](https://docs.google.com/spreadsheets/d/1mUGBlI_ZCi5geOK27rnxa1NFf7lwrnl8/edit#gid=792496201)

#### Gift Name (*)

Free form text field

#### GST Exempt

Checkbox field. If its value is true then it is a `GST Gift` otherwise `Lifetime Gifts`.

#### Giftor

Read only field. It should be either `Individuals` or `Joint`.

#### Recipient (*)

Autocomplete of Contact, Individuals, Joint and Trust.

When user enter new name, system will create new contact. 

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
| Fair Market Value | Currency input. Default value is $0. Decimal isn't allowed.  |
| Charitable Gift   | Applicable only Recipient trust type is `CRUT`, `CRAT` & `CLAT`. It is Currency input. Default value is $0. Decimal isn't allowed. Charitable Gift always less or equal to FMV.  |
| Retained Interest | Applicable only Recipient trust type is `GRAT` & `QPRT`. It is Currency input. Default value is $0. Decimal isn't allowed. Retained Interest always less or equal to FMV.  |
| Gift              | It is Calculated field. Applicable only Recipient trust type is `CRUT`, `CRAT`, `CLAT`, `GRAT` & `QPRT`.<br /> Gift =  FMV - {Charitable Gift} or {Retained Interest}  |
| Gift Tax Value    | Disable field. Its value will be same as `Gift`. |
| Notes             | Multiline text field                                         |



#### Gift type is Private Stock

| Field Name                   |                   | Description                                                  |
| ---------------------------- | ----------------- | ------------------------------------------------------------ |
| Gift Date*                   |                   | Date input. Default shows current date                       |
| Stock Name*                  |                   | Company auto complete dropdown. It will show `Same Family Partnerships` and all `Private type companies` in the dropdown. When user enter new name, system will create new company of type `Private`. |
| Price*                       |                   | Number Input field. Default value is $ 0.0000. Decimal is allowed. [See more details](#price) |
| Is value estimated or final? |                   | Radio button field. Its value either `Estimated` or `Final`. Default value is `Estimated`. |
| Lots                         |                   | Its multi value field. User can add multiple if required. At least one `Lot` should be available. |
|                              | Purchase Date     | Date input field.                                            |
|                              | No of Shares      | Number input field. Decimal is allowed. [See more details](#no-of-shares) |
|                              | Price-per-Share   | Currency input field. Up to 4 decimal value is allowed. Default value is `$0.0000`<br />Bottom of `Price-per-Share` column show `Average Value`. `(Average Value = Total Basis / No of Shares)` |
|                              | Basis             | Disable field.<br />Its calculated field.<br />(`Basis` = (`No of Shares` * `Price-per-Share`))<br />Shows total value of `Basis`. |
|                              | Fair Market Value | Disable field. Default value is $0. Decimal isn't allowed. <br />Shows total amount of `Fair Market Value`. <br />Its calculated field.  `(Fair Market Value = Price * No of Shares)` |
|                              | Charitable Gift   | Applicable only Recipient trust type is `CRUT`, `CRAT` & `CLAT`. It is Currency input. Default value is $0. Decimal isn't allowed. Charitable Gift always less or equal to FMV.<br />Shows total amount of `Charitable Gift`  |
|                              | Retained Interest | Applicable only Recipient trust type is `GRAT` & `QPRT`. It is Currency input. Default value is $0. Decimal isn't allowed. Retained Interest always less or equal to FMV.<br />Shows total amount of `Retained Interest`  |
|                              | Gift              | It is Calculated field. Default value is $0. Decimal isn't allowed. Applicable only Recipient trust type is `CRUT`, `CRAT`, `CLAT`, `GRAT` & `QPRT`.<br /> Gift =  FMV - {Charitable Gift} or {Retained Interest}<br />Shows total amount of `Gift`  |
|                              | Gift Tax Value    | Currency input. Default value is $0. Decimal isn't allowed. Shows total amount of `Gift Tax Value`. |
| Notes                        |                   | Multiline text field                                         |



#### Gift type is Public Stock

| Field Name     |                    | Description                                                  |
| -------------- | ------------------ | ------------------------------------------------------------ |
| Gift Date*     |                    | Date input. Default shows current date                       |
| Stock Name*    |                    | Company auto complete dropdown. It will show all `Public type companies` in the dropdown. When user enter new name, system will create new company of type `Public`. |
| Stock Exchange |                    | Disable field. `Stock Exchange` will be pulled from selected company in the `Stock name` field. |
| Low Price      |                    | Currency input field. Decimal is allowed. Default value is `$0.0000`. [See more details](#price) |
| High Price     |                    | Currency input field. Decimal is allowed. Default value is `$0.0000`. [See more details](#price) |
| Average Price  |                    | Disable field.<br />Its calculated field. [See more details](#price) <br />(`Average Price` = ((`High Price` + `Law Price`)/ 2)) |
| Lots           |                    | Its multi value field. User can add multiple if required. At least one `Lot` should be available. |
|                | Purchase Date      | Date input field.                                            |
|                | No of Shares       | Number input field. Decimal is allowed. [See more details](#no-of-shares) |
|                | Price-per-Share    | Currency input field. Up to 4 decimal value is allowed. Default value is `$0.0000`<br />Bottom of `Price-per-Share` column show `Average Value`. `(Average Value = Total Basis / No of Shares)` |
|                | Basis              | Disable field.<br />Its calculated field.<br />(`Basis` = (`No of Shares` * `Price-per-Share`))<br />Shows total value of `Basis`. |
|                | Fair Market Value* | Disable field. Default value is $0. Decimal isn't allowed.<br />Shows total amount of `Fair Market Value`. <br />Its calculated field. `(Fair Market Value = Average Price * No of Shares)`. |
|                | Charitable Gift    | Applicable only Recipient trust type is `CRUT`, `CRAT` & `CLAT`. It is Currency input. Default value is $0. Decimal isn't allowed. Charitable Gift always less or equal to FMV.<br />Shows total amount of `Charitable Gift`  |
|                | Retained Interest  | Applicable only Recipient trust type is `GRAT` & `QPRT`. It is Currency input. Default value is $0. Decimal isn't allowed. Retained Interest always less or equal to FMV.<br />Shows total amount of `Retained Interest`  |
|                | Gift               | It is Calculated field. Default value is $0. Decimal isn't allowed. Applicable only Recipient trust type is `CRUT`, `CRAT`, `CLAT`, `GRAT` & `QPRT`.<br /> Gift =  FMV - {Charitable Gift} or {Retained Interest}<br />Shows total amount of `Gift`  |
|                | Gift Tax Value*    | Disable Field. Default value is $0. Decimal isn't allowed. Its value will be same as `Gift`. Shows total amount of `Gift Tax Value`. |
| Notes          |                    | Multiline text field                                         |



#### Gift type is Digital Currency

| Field Name                   |                   | Description                                                  |
| ---------------------------- | ----------------- | ------------------------------------------------------------ |
| Gift Date*                   |                   | Date input. Default shows current date                       |
| Security Name*               |                   | Company auto complete dropdown. It will show all `Public type companies` in the dropdown. When user enter new name, system will create new company of type `Public`. |
| Low Price                    |                   | Currency input field. Decimal is allowed. Default value is `$0.0000`. [See more details](#price) |
| High Price                   |                   | Currency input field. Decimal is allowed. Default value is `$0.0000`. [See more details](#price) |
| Average Price                |                   | Disable field.<br />Its calculated field. [See more details](#price) <br />(`Average Price` = ((`High Price` + `Law Price`)/ 2)) |
| Is value estimated or final? |                   | Radio button field. Its value either `Estimated` or `Final`. Default value is `Estimated`. |
| Lots                         |                   | Its multi value field. User can add multiple if required. At least one `Lot` should be available. |
|                              | Purchase Date     | Date input field.                                            |
|                              | No of Units       | Number input field. Decimal is allowed. [See more details](#no-of-shares) |
|                              | Price-per-Unit    | Currency input. Up to 4 decimal value is allowed. Default value is `$0.0000`<br />Bottom of `Price-per-Unit` column show `Average Value`. `(Average Value = Total Basis / No of Units)` |
|                              | Basis             | Disable field.<br />Its calculated field.<br />(`Basis` = (`No of Units` * `Price-per-Unit`))<br />Shows total value of `Basis`. |
|                              | Fair Market Value | Disable field. Default value is $0. Decimal isn't allowed.<br />Shows total amount of `Fair Market Value`. <br />Its calculated field. `(Fair Market Value = Average Price * No of Shares)`. |
|                              | Charitable Gift   | Applicable only Recipient trust type is `CRUT`, `CRAT` & `CLAT`. It is Currency input. Default value is $0. Decimal isn't allowed. Charitable Gift always less or equal to FMV.<br />Shows total amount of `Charitable Gift`  |
|                              | Retained Interest | Applicable only Recipient trust type is `GRAT` & `QPRT`. It is Currency input. Default value is $0. Decimal isn't allowed. Retained Interest always less or equal to FMV.<br />Shows total amount of `Retained Interest`  |
|                              | Gift              | It is Calculated field. Default value is $0. Decimal isn't allowed. Applicable only Recipient trust type is `CRUT`, `CRAT`, `CLAT`, `GRAT` & `QPRT`.<br /> Gift =  FMV - {Charitable Gift} or {Retained Interest}<br />Shows total amount of `Gift`  |
|                              | Gift Tax Value    | Currency input. Default value is $0. Decimal isn't allowed. Shows total amount of `Gift Tax Value`. |
| Notes                        |                   | Multiline text field                                         |



#### Gift type is Investment Fund

| Field Name                   |                   | Description                                                  |
| ---------------------------- | ----------------- | ------------------------------------------------------------ |
| Gift Date*                   |                   | Date input. Default shows current date                       |
| Subtype                      |                   | Dropdown of `Investment Fund` subtypes. Its values are `ETF`, `Mutual Fund`, `Limited Partnership`. `ETF` will be default subtype. |
| Asset Managers               |                   | Its a mandatory field. Dropdown of all asset managers having at least one selected sub-type Investment Fund avaialble. If user enters a new name, system creates a new Asset managers. Its a alphabetical sorted. |
| Investment Fund Name*        |                   | Its a mandatory field. Dropdown of the selected investment fund type of selected Asset manager. Its a alphabetical sorted. It is disable until user selects `Asset Managers`. If user enters a new name, system creates a new fund under the selected Asset manager. |
| Stock Exchange               |                   | Disable field. Its applicable only for `Investment Fund | ETF`.  It will be pulled from selected company in the `Investment Fund name` field. |
| Units or Percentage          |                   | Its applicable only for `Investment Fund | Limited Partnership`. <br />Number input field. Decimal is allowed. |
| Percentage                   |                   | Its applicable only for `Investment Fund | Limited Partnership`. <br />Flag. If true Units will be in %, if false Units will be in number |
| High Price                   |                   | Its applicable only for `Investment Fund | ETF`. Currency input field. Decimal is allowed. Default value is `$0.0000`. [See more details](#price) |
| Low Price                    |                   | Its applicable only for `Investment Fund | ETF` . Currency input field. Decimal is allowed. Default value is `$0.0000`. [See more details](#price) |
| Average Price                |                   | Disable field. Its applicable only for `Investment Fund | ETF`.<br />Its calculated field. [See more details](#price) <br />(`Average Price` = ((`High Price` + `Law Price`)/ 2)) |
| Closing Price                |                   | Its applicable only for `Investment Fund | Mutual Fund`.  <br />Currency input field. Decimal is allowed. Default value is `$0.00`. [See more details](#price) |
| Is value estimated or final? |                   | Radio button field. Its value either `Estimated` or `Final`. Default value is `Estimated`. |
| Lots                         |                   | Lots is applicable for `Investment Fund | ETF` and `Investment Fund| Mutual Fund`<br />Its multi value field. User can add multiple if required. At least one `Lot` should be available. |
|                              | Purchase Date     | Date input field.                                            |
|                              | No of Shares      | Number input field. Decimal is allowed. [See more details](#no-of-shares) |
|                              | Price-per-share   | Its applicable only for `Investment Fund | ETF` and `Investment Fund| Mutual Fund`.<br />Currency input. Up to 4 decimal value is allowed. Default value is `$0.0000`<br />Bottom of `Price-per-Share` column show `Average Value`. `(Average Value = Total Basis / No of Shares)` |
|                              | Basis             | Its applicable only for `Investment Fund | ETF` and `Investment Fund| Mutual Fund`.<br />Disable and Calculated field.<br />(`Basis` = (`No of Shares` * `Price-per-Share`))<br />Shows total value of `Basis`. |
|                              | Fair Market Value | It should be disable and calculated field for  `Investment Fund | ETF` and `Investment Fund| Mutual Fund` subtype.<br />For `Investment Fund| ETF`, `(Fair Market Value = Average Price * No of Shares)`<br />For `Investment Fund| Mutual Fund`, `(Fair Market Value = Closing Price * No of Shares)`<br />For `Investment Fund | Limited Partnership`, It should be Currency input. Default value is $0. Decimal isn't allowed.<br />Shows total amount of `Fair Market Value`. |
|                              | Charitable Gift   | Applicable only Recipient trust type is `CRUT`, `CRAT` & `CLAT`. It is Currency input. Default value is $0. Decimal isn't allowed. Charitable Gift always less or equal to FMV.<br />Shows total amount of `Charitable Gift`  |
|                              | Retained Interest | Applicable only Recipient trust type is `GRAT` & `QPRT`. It is Currency input. Default value is $0. Decimal isn't allowed. Retained Interest always less or equal to FMV.<br />Shows total amount of `Retained Interest`  |
|                              | Gift              | It is Calculated field. Default value is $0. Decimal isn't allowed. Applicable only Recipient trust type is `CRUT`, `CRAT`, `CLAT`, `GRAT` & `QPRT`.<br />Gift =  FMV - {Charitable Gift} or {Retained Interest}<br />Shows total amount of `Gift` |
|                              | Gift Tax Value    | It should be disable field for  `Investment Fund | ETF` and `Investment Fund| Mutual Fund` subtype. For this both subtype `Gift Tax Value` will be same as the `Gift`.<br />For `Investment Fund | Limited Partnership`, It should be Currency input. Default value is $0. Decimal isn't allowed. <br />Shows total amount of `Gift Tax Value`. |
| Notes                        |                   | Multiline text field                                         |

#### Price

- `Price` related field should allow to enter 4 decimals. for e.g. `12.4363`
  - `Price` means `Average Price, High Price, Low Price` for `Public Stock, Digital Currency, ETF,` `Closing Price` for `Mutual Fund` & `Price` for `Private Stock`.
  - `Average Price` field is a calculated field but during calculation it should preserve 4 decimals. 
    - For e.g. `High price : 183.8200`, `Low price : 182.6700`. Then `Average Price` should be shown as `183.2450`.
- In the view page, it doesn’t show 4 decimals. It will show only two decimals using round-off. for e.g. `12.44`. 
  - But when calculating the `Amount`, use the entered price with 4 decimals, not the rounded 2 decimal price.

#### No of Shares 

- No of shares & No of Units field should be allowed to enter 3 decimals. for e.g `11.456`.
  - This update is applicable in both Add/Edit dialog and View dialog.
  - When calculating the `Amount`, use the entered price with 3 decimals, not the rounded 2 decimal price.


## Design decisions

### Why Decimal is removed from `FMV` and `GTV`?
In some of the payment modes `FMV` & `GTV` are calculated and sometimes both fields are input. Using price of shares (which currently goes to 4 decimal places) we can not get the Fair Market Value to be an exact `GTV` (we are 34 cents short).  This is an issue when the Gift Tax Value is the same as the fair Market value. [See this problem](https://drive.google.com/file/d/1pYAcYCIB6B_qQ0PP9ITBa6ut4cd69mBF/view?usp=share_link)

To solve this we are rounding the Fair Market Value when its calculated from `Price of Shares` and also do not allow decimal when its input field.

### Why Deciaml is removed from `Charitable Gift` and `Retained Interest`?
- `Charitable Gift` is applicable only when Recipient trust type is `CRUT`, `CRAT` & `CLAT` and `Retained Interest` is applicable only when Recipient trust type is `GRAT` & `QPRT`. In both of these fields decimal is allowed.
- In this case, GTV is a calculated field. It is the same as Gift. 
- Formula for Gift is `FMV - {Charitable Gift} or {Retained Interest}`
- If the user enters a decimal value in the `Charitable Gift` or `Retained Interest`, `Gift` will also have decimals. Due to that, `GTV` will also have decimals.
- That's why we aren't allow to enter a decimal value in Charitable Gift and Retained Interest also.
