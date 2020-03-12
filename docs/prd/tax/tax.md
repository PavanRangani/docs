# Tax return

## Overview

- Each type of Legal entity has some predefined form for Tax return
- There can be only one Tax return of same form in a given year for any legal entity.



## Entity

### Basic details

| Field Name           | Description                                                  |                                                             |
| -------------------- | ------------------------------------------------------------ | ----------------------------------------------------------- |
| Tax Year             | Number input. Allows only four digits                        |                                                             |
| Form                 | Shows form                                                   |                                                             |
| Preparer             | Contact Autocomplete                                         |                                                             |
| Preparer (Firm)      | Company Autocomplete                                         |                                                             |
| EFTPS                | Bank autocomplete of type Checking<br />Only shows Active bank account (Not Closed ) | Applicable only when payment is applicable to selected form |
| Who Issues Payments  | One of the following options. Default option is `Client`<br />- `Clarius on Behalf of the Client`<br />- `Client`<br />- `Third Party` | Applicable only when payment is applicable to selected form |
| EFTPS Pin (*)        | Number input. Only 4 digits allowed                          | Applicable only when EFTPS is enabled                       |
| Enrollment Number(*) | Number input. Only 18 digits allowed                         | Applicable only when EFTPS is enabled                       |

#### Master of Legal entity wise applicable forms

| Legal entity Name | Form         | Default form |
| ----------------- | ------------ | ------------ |
| Individuals       | 1040, 709    | 1040         |
| Joints            | 1040         |              |
| Partnerships      | 1065, 1120-S | 1065         |
| Foundations       | 990PF        |              |
| Estates           | 1041, 706    | 1041         |
| Trusts            | 1041, 5227   | 1041         |

Payment entity

| Field Name       | Description                                                  |                                                              |
| ---------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| Name             | Date of the payment                                          |                                                              |
| Status           | Possible values: Pending (Default), Information Sent, Paid, No Payment Due |                                                              |
| Information Sent | Date input                                                   | Applicable  when status is other than Pending. Date less than current year is not allowed |
| Payment Method   | Possible values: Check, EFTPS, Not Known, Direct Pay. Default is `Check` | Applicable  when status is Paid                              |
| Amount           | Currency input                                               | Applicable  when status is Paid                              |
| Payment Made     | Date input                                                   | Applicable  when status is Paid. Date less than current year is not allowed |
| Notes            | Free form multiline text field                               |                                                              |
|                  |                                                              |                                                              |

### General

#### Date

| Field Name            | Description                                            |
| --------------------- | ------------------------------------------------------ |
| Due date              | See [Form wise due date](#form-wise-due-dates)         |
| Extended due date     | See [Form wise due date](#form-wise-due-dates)         |
| Expected filling date | Date input. Date less than current year is not allowed |
| Date filed            | Date input. Date less than current year is not allowed |

#### Summary information

| Field Name              | Description                                                  |
| ----------------------- | ------------------------------------------------------------ |
| Total Income            | Currency input. Decimal not allowed. Mandatory field to set status `Filed` |
| Adjusted Gross Income   | Currency input. Decimal not allowed. Mandatory field to set status `Filed` |
| Taxable Income          | Currency input. Decimal not allowed. Mandatory field to set status `Filed` |
| Tax or Total tax        | Currency input. Decimal not allowed. For form 1041 will be displayed as `Total Tax`. For form 1040 it will be displayed as `Tax`. Mandatory field to set status `Filed` |
| Alternative Minimum Tax | Currency input. Decimal not allowed. Only applicable to form 1040. Mandatory field to set status `Filed` |
| Total Credits           | Currency input. Decimal not allowed. Only applicable to form 1040. Mandatory field to set status `Filed` |
| Other Taxes             | Currency input. Decimal not allowed. Only applicable to form 1040. Mandatory field to set status `Filed` |
| Total Tax Due           | Calculated field.  `Tax` + `Alternative Minimum Tax` - `Total Credits` + `Other Taxes` |
| Effective Tax Rate      | Input is not allowed. its Calculated field. Calculation formula : `Effective Tax Rate = (Total Tax Due / Total Income) * 100` |
| Marginal Tax Rate       | Percentage input. Two decimal points allowed.                |



#### Carryforward

| Field Name                                   | Description                         |
| -------------------------------------------- | ----------------------------------- |
| Short-term Regular Capital Loss Carryforward | Currency input. Decimal not allowed |
| Long-term Regular Capital Loss Carryforward  | Currency input. Decimal not allowed |
| Passive Activity Loss Carryforward           | Currency input. Decimal not allowed |
| Charitable Carryforward                      | Currency input. Decimal not allowed |
| Ordinary Loss Carryforward                   | Currency input. Decimal not allowed |

#### Dates

| Field Name           | Description                                                  |
| -------------------- | ------------------------------------------------------------ |
| Due Date             | Value will be set based on the selected form. Doesn't allow to change this date |
| Extended Due Date    | Value will be set based on the selected form. Doesn't allow to change this date |
| Final Extension      | Value will be set based on the selected form. Doesn't allow to change this date. Only applicable to form `5227` |
| Expected Filing Date | Date input. Date less than current year is not allowed       |
| Status               | Pending, Extended, Filed. Default value is `Pending`<br />Status can be set `Filed` only when <br />- All components are in status other than `Pending`<br /><br />This status has nothing to do with Payment status. Even if payment status is pending  , status can be set to `Filed` |
| Date Filed (*)       | Applicable only when `Status` = `Filed`.  Do not allow to enter date lower than current year (for e.g. for 2019 return do not allow enter any date less than 01-01-2019) |



##### Form wise due dates

| Form   | Due dates | Extended due dates | Final extension |
| ------ | --------- | ------------------ | --------------- |
| 1040   | Apr 15    | Oct 15             |                 |
| 709    | Apr 15    | Oct 15             |                 |
| 1065   | Mar 15    | Sep 15             |                 |
| 1120-S | Mar 15    | Sep 15             |                 |
| 990PF  | May 15    | Nov 15             |                 |
| 706    | Apr 15    | Oct 15             |                 |
| 1041   | Apr 15    | Sep 30             |                 |
| 5227   | Apr 15    | Jul 15             | Oct 15          |

#### Dependencies

- Allows to select multiple `Legal entity`. For each entity allows to select applicable `Form`

#### K1 Distribution Partners

- Applicable to only Partnership forms: `1065` & `1120-S` 
- Allows to select multiple contact. For each contact allows to add `Date` and `Notes`

| Field name | Description                            |
| ---------- | -------------------------------------- |
| Partner    | Contact autocomplete                   |
| Date       | Date input. Future date is not allowed |
| Notes      | Multi line text field                  |



#### Notes

- Free form text field

## System requirement

- For Trust whose Grantor is True, Tax return is not applicable. 
- In old application, If such Trust has any old tax return data exists then only its available (Possible when previously trust was `Non Grantor` but now its `Grantor`). But in new application we are not allowing to add tax return in this case also.

### Create Tax return

- Allows to create Tax return by filling `Basic details`
- Doesn't allow to create Duplicate tax return with same year and same form

- System prefills data from available latest tax return. If last records not available then fields will be blank
- If payment is applicable for selected form, then only ask for payment related fields : EFTPS, Who Issues Payments, EFTPS Pin, Enrollment Number

#### Payments

- Based on the selected form, `Payments` section will be populated.  For different forms payment dates  are different. One payment for each date  and one `Final payment` will be created. See [Payment Entity](#payment-entity) for more detail.

| Form   | Payment dates                                                |
| ------ | ------------------------------------------------------------ |
| 1040   | Apr 15 (Tax return year), Jun 15 (Tax return year), Sep 15(Tax return year), Jan 15(Next year of Tax return year), Apr 15  (Next year of Tax return year) - Extension Payment |
| 709    | Apr 15(Next year of Tax return year) - Extension Payment     |
| 1065   | Not Applicable                                               |
| 1120-S | Mar 15, Jun 15, Sep 15, Dec 15, Mar 15(Next year of Tax return year) |
| 990PF  | May 15, Jun 15, Sep 15, Dec 15, May 15(Next year of Tax return year) |
| 706    | Apr 15(Next year of Tax return year)                         |
| 1041   | Apr 15, Jun 15, Sep 15, Jan 15(Next year of Tax return year), Apr 15(Next year of Tax return year) |
| 5227   | Not Applicable                                               |

- For `1040` two extra fields will be there under Payments section: `Applied from prior year` and `Federal Income Tax Withheld`
- `Applied from prior year` is pulled from `Applied to next year` amount of last year tax return. If last year tax return is not available allows user to input amount in this field.
- Allows user to enter amount in `Federal Income Tax Withheld`
- For some of the forms `Payment` is not applicable. For such forms, `Payments` section won't be populated at all. 
- `Total Payments` = `Applied from prior year` + `Federal Income Tax Withheld` + Amount of all date wise payments + Final payments
- Difference between `Total Payments` and `Tax Due` can be either Refunded or can be applied to next year. If `Amount refund`  is not entered all difference amount will be applied to next year. If `Amount Refund` is entered it will be subtracted from difference amount first and rest of the difference amount will be set to `Applied to Next Year`

#### General details

- Based on the selected form,  `General` section will be populated. For different forms, details in `General` section will be different
- Carryforward
  - Carryforward section has two type of data. `Into year` and `Out of year`
  - Value in `Into Year` will be retrieved from `Out of Year` values of last year Tax return for this legal entity. If last year return is not available then only allows to input value here.
- Dependencies
  - For form 1040 of Individual, If `Dependencies` available in last year tax return, it will also be prefilled. 
  - Shows status of tax return of same year of that dependency. If Tax return is not available shows `N/A`

##### Form wise details under General

| Form   | Details under General                                        |
| ------ | ------------------------------------------------------------ |
| 1040   | Dates, Summary Information, Carryforward, Dependencies, Notes |
| 709    | Dates, Notes                                                 |
| 1065   | Dates, Dependencies, K1 distribution partners, Notes         |
| 1120-S | Dates, Dependencies, K1 distribution partners, Notes         |
| 990PF  | Carryforward, Dates, Dependencies, Notes                     |
| 1041   | Summary Information, Carryforward, Dates, Dependencies, Notes |
| 706    | Carryforward, Dates, Dependencies, Notes                     |
| 5227   | Dates, Dependencies, Notes                                   |



### Edit `Basic details` of Tax return

- Year and form can't be changed
- Other details can be changed anytime

### Add State

- Shows list of states of USA. 
- Allows to add as many states as required. One state can be added only once.
- For each states, `Payments` and `General` section will be populated. 
- `Payments` section is same as `Federal`. 
- `Applied from prior year` is pulled from `Applied to next year` amount of last year tax return for the same state. If last year tax return is not available for this state, allows user to input amount in this field.
- in General section only `Dates` ,  `Carryforward` and `Notes` are only populated.  Other details are not applicable for `State`
- For form `709`, state is not applicable. So doesn't allow to add states
- In Carryforward section, Value in `Into Year` will be retrieved from `Out of Year` values of last year Tax return of this state. If last year return is not available for this state,  then only allows to input value here.



### Delete state

- Allows to delete state anytime

### Audit

- Audited is only applicable for 1040 form
- When Audited is true, 
  - System ask for name of the `Audit`
  - Allows to enter new values of [Summary information](#summary-information) and [Carryforward](#carryforward)
- When `Audited` is true, system shows Original and  audited  both values in `Summary information` and  `Carryforward` 

### Disable Payment

- Payments can be disabled if required. When its disabled all payments of `Federal` and `States` will be deleted.

### Enable Payment

- System allows to Enable Payments if its already disabled. On Enable, system creates applicable payments in `Federal` and `States`



### Download PDF

- Allows to download Summary or Tax return.
- On Download action, Downloads PDF in same browser tab
- Tax return PDF file name will be in format: `tax-return-report-{Legal entity name}-{Tax return year}({Tax return form}).pdf`
- Tax summary PDF file name will be in format: `tax-summary-report-{Legal entity name}-{Tax return form}.pdf`

### Archive

- Allows to Archive anytime
- Doesn't allow to edit when Archived

### Delete

- Allows to Delete anytime



## UI requirement

[Mockups](https://drive.google.com/drive/u/0/folders/1jRHPtA8_5nes3ekvm5R87P1e4SXwi1Cg)

- Summary tab 
  - Only applicable to form 1040 and 1041 because `Summary information` are only applicable in these forms.  For other form this tab won't be shown
  - Shows the overview detail of last four year tax returns regardless of its status
- State dropdown
  - On click of `Add State`, opens dropdown with states of USA
  - In dropdown, Shows records in ascending order
  - In dropdown, States which are already added will be shown as disabled. So that user can not click on it.