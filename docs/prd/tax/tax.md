# Tax Return

## Overview

- Each type of Legal entity has some predefined form for Tax return
- There can be only one Tax return of same form in a given year for any legal entity.



## Entity

### Basic details

|             | Field Name            | Description                                                  |                                                              |
| ----------- | --------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| Summary     |                       |                                                              |                                                              |
|             | Tax Year              | Number input. Allows only four digits                        |                                                              |
|             | Tax Filing Status     | Its a disable field<br />It shows the current status of Trust either Grantor or Non-Grantor. | Applicable only for Grantor or Non-Grantor Trust             |
|             | Grantor Filing Status | Its dropdown field. <br />Dropdown values are : `Filed on Grantor's Tax Return` or `Filed under 5227 Trust Return` or `Filed under 1041 Trust Return`.<br />Default is set to `Filed on Grantor's Tax Return` | Applicable only for Grantor type Trust.                      |
|             | Grantor To            |  Its auto complete dropdown for current active family individuals. (No Deceased) | Applicable only when `Filed on Grantor's Tax Return`  and `1041 form for the grantor trust`. |
|             | Form                  | Shows form. For trust, [see this](https://docs.google.com/spreadsheets/d/1FjAcGjfDNoSwr_U5uOIrAcb6aAZQSbqSf0W38zeWvD4/edit#gid=1678585006) | Not applicable for Grantor filing status is `Filed on Grantor's Tax Return`. |
| Preparation |                       |                                                              | This section is not applicable for Partnership whose `Tax id` is `Individual SSN`.<br />Not applicable for Grantor type trust and Grantor filing status is `Filed on Grantor's Tax Return`. |
|             | Preparer              | Contact Autocomplete                                         |                                                              |
|             | Preparer (Firm)       | Company Autocomplete                                         |                                                              |
|             | Tax component Send to | Contact autocomplete                                         |                                                              |
|             | Where to Send Components | Its a free form text input field.                         |                                                              |
| Payment     |                       |                                                              |                                                              |
|             | EFTPS                 | Bank autocomplete of type Checking or Funding Account having EFTPS enabled<br />Only shows Active bank account (Not Disposed) | Applicable only when payment is applicable to selected form |
|             | Who Issues Payments   | One of the following options. Default option is `Client`<br />- `Clarius on Behalf of the Client`<br />- `Client`<br />- `Third Party` | Applicable only when payment is applicable to selected form  |
|             | Payment logistics     | Its a free form text input field.                                  | Applicable only when payment is applicable to selected form  |
|             | EFTPS Pin             | Pulled from selected Banking account.                              | Applicable only when EFTPS is enabled                        |
|             | Enrollment Number     | Pulled from selected Banking account.                              | Applicable only when EFTPS is enabled                        |
|             | Tax ID Entity         | Pulled from selected Banking account.                              | Applicable only when EFTPS is enabled                        |
|             | Tax ID Number         | Pulled from selected Banking account.                              | Applicable only when EFTPS is enabled                        |
| Signer(s)   | Signer(s)             | Signer dropdown will be different for each entity. <br />- For Partnership & Foundation, it will be the active governance role of the Partnership. <br />- For Trust, it will be all types of Trustees of the current Trust. <br />- For Estate, it will be Representative of the Estate. | Applicable only for `Partnership`, `Foundation`, `Trust` & `Estate` type legal entities. <br />- It won't be applicable for Disregarded Entity tax returns. |



## Legal entity and Form wise Tax Return details

![tax-return](./tax-return.png)

[File of above image](https://docs.google.com/spreadsheets/d/1FjAcGjfDNoSwr_U5uOIrAcb6aAZQSbqSf0W38zeWvD4/edit#gid=0)

### Payment Entity

| Field Name       | Description                              |                                          |
| ---------------- | ---------------------------------------- | ---------------------------------------- |
| Name             | Date of the payment                      |                                          |
| Status           | Possible values: Pending (Default), Information Sent, Paid, No Payment Due |                                          |
| Information Sent | Date input                               | Applicable  when status is other than Pending. Date less than current year is not allowed |
| Payment Method   | Possible values: Check, EFTPS, Not Known, Direct Pay. Default is `Check` | Applicable  when status is Paid          |
| Amount           | Currency input                           | Applicable  when status is Paid          |
| Payment Made     | Date input                               | Applicable  when status is Paid. Date less than current year is not allowed |
| Notes            | Free form multiline text field           |                                          |

### General

#### Date

| Field Name            | Description                              |
| --------------------- | ---------------------------------------- |
| Due date              | See [Form wise due date](#form-wise-due-dates) |
| Extended due date     | See [Form wise due date](#form-wise-due-dates) |
| Expected filling date | Date input. Date less than current year is not allowed |
| Date filed            | Date input. Date less than current year is not allowed |



#### Summary Information for Form 1040

| Field Name              | Description                              |
| ----------------------- | ---------------------------------------- |
| Total Income            | Currency input. Decimal not allowed. Negative amount is allowed. Mandatory field to set status `Filed` |
| Adjusted Gross Income   | Currency input. Decimal not allowed. Negative amount is allowed. Mandatory field to set status `Filed` |
| Taxable Income          | Currency input. Decimal not allowed. Negative amount is allowed. Mandatory field to set status `Filed` |
| Tax or Total tax        | Currency input. Decimal not allowed. For form 1041 will be displayed as `Total Tax`. For form 1040 it will be displayed as `Tax`. Mandatory field to set status `Filed` |
| Alternative Minimum Tax | Currency input. Decimal not allowed. Only applicable to form 1040. Mandatory field to set status `Filed` |
| Total Credits           | Currency input. Decimal not allowed. Only applicable to form 1040. Mandatory field to set status `Filed` |
| Other Taxes             | Currency input. Decimal not allowed. Only applicable to form 1040. Mandatory field to set status `Filed` |
| Total Tax Due           | Calculated field.  `Tax` + `Alternative Minimum Tax` - `Total Credits` + `Other Taxes` |
| Effective Tax Rate      | Input is not allowed. its Calculated field. Negative amount is allowed. Calculation formula : `Effective Tax Rate = (Total Tax Due / Taxable Income) * 100` |
| Marginal Tax Rate       | Percentage input. Two decimal points allowed. |



#### Summary Information for Form 1041

| Field Name            | Description                              |
| --------------------- | ---------------------------------------- |
| Total Income          | Currency input. Decimal not allowed. Negative amount is allowed. Mandatory field to set status `Filed` |
| Adjusted Gross Income | Currency input. Decimal not allowed. Negative amount is allowed. Mandatory field to set status `Filed` |
| Taxable Income        | Currency input. Decimal not allowed. Negative amount is allowed. Mandatory field to set status `Filed` |
| Total Tax             | Currency input. Decimal not allowed. Mandatory field to set status `Filed`. |



#### Summary Information for Form 709

| Field Name                        | Description                              |
| --------------------------------- | ---------------------------------------- |
| Remaining Exemption into (year)   | Input is not allowed. Auto calculated field. this field is pulled from master ledger. |
| Total Gift                        | For `Lifetime Exemption`, //TODO<br />For `GST Exemption`, //TODO<br /> Amount of `Total Gift` is pulled from the `Total Given` amount from the Gifting app for that individual for that year. Default value set to `$ 0`. |
| Annual Exclusion                  | Currency input. Decimal is allowed. Default value set to `$ 0.00`.<br />If the value of  `Annual Exclusion` is greater than `Total Gift`, it will show error. Error text is : `Should be <= Total Gift`. |
| Net Gift                          | Input is not allowed. Auto calculated field. Decimal is allowed. <br />Calculation formula : `Net Gift = Total Gift - Annual Exclusion`. |
| Remaining Exemption out of (year) | Input is not allowed. Auto calculated field. Default value set to `$ 0`.<br />Calculation formula : `Remaining Exemption out of (year)`= `Beginning Lifetime Exemption(Year)` - `Lifetime Exemption Used`.<br />If the value of `Remaining Lifetime Exemption` is less than 0, show only 0. (Do not show value with `-` sign) |
| Tax Due                           | Currency input. Decimal and Negative amount is not allowed. Mandatory field to set status `Filed`. |



#### Summary Information for Other Form (1120-S, 990PF, 706)

| Field Name   | Description                              |
| ------------ | ---------------------------------------- |
| Total Income | Currency input. Decimal not allowed. Negative amount is allowed. Mandatory field to set status `Filed` |
| Tax Due      | Currency input. Decimal not allowed. Mandatory field to set status `Filed`. |


#### Dates

| Field Name           | Description                              |
| -------------------- | ---------------------------------------- |
| Due Date             | Value will be set based on the selected form. Doesn't allow to change this date |
| Extended Due Date    | Value will be set based on the selected form. Doesn't allow to change this date |
| Final Extension      | Value will be set based on the selected form. Doesn't allow to change this date. Only applicable to form `5227` |
| Expected Filing Date | Date input. Date less than current year is not allowed |
| Status               | Pending, Extended, Filed. Default value is `Pending`<br />Status can be set `Filed` only when <br />- All components are in status other than `Pending`<br /><br />This status has nothing to do with Payment status. Even if payment status is pending  , status can be set to `Filed` <br />- Showing status of both Federal and states. There is some logic for overall status of Tax Return: <br />- If Filing status of Federal and all of its states is Filed, then only status of Tax return is Filed.
<br />- If status is Extended for any of the one state or Federal, overall status will be Extended. <br />- If status is Pending for any of the one state or Federal, overall status will be Pending. |
| Date Filed (*)       | Applicable only when `Status` = `Filed`.  Do not allow to enter date lower than current year (for e.g. for 2019 return do not allow enter any date less than 01-01-2019) |


#### K1 Distribution Partners

- Applicable to only Partnership forms: `1065` & `1120-S`. [See more details](auto-k1-distribution-partner.md#auto-populate-k1-distribution-partners)


#### Notes

- Free form text field



## System requirement

### Create Tax return

- Allows to create Tax return by filling `Basic details`
- Doesn't allow to create Duplicate tax return with same year and same form otherwise system show an error message.
- When a user creates a new tax return, the system will set the `Tax Component Lead` user from the family level. [See this](https://drive.google.com/file/d/1SMYwAVaXetS45sbT4Etf4ie6PF_qEzk3/view?usp=sharing)
  - Error message: `Tax Return with same year and form already exists`
- Doesn't allow the creation of a tax return for the future year otherwise system show an error message.
  - Error message: `Future year is not allowed`.
- For `Grantor trust`, If the selected `Grantor To` tax return is already filed, system shows [error message](https://drive.google.com/file/d/1ubOl2-ilHBBbK1YmhPBn6C8jN_fTHSkD/view?usp=share_link).
- System prefills all data from available latest tax return for same form. If last records not available then fields will be blank.
- If payment is applicable for selected form, then only ask for payment related fields : EFTPS, Who Issues Payments
  - Based on EFTPS, system pulls these EFTPS Pin, Enrolment Number, Tax ID Entity, Tax ID Number information from the Banking.
- In 5227, Payment field is applicable in create new Tax Return even payment is not applicable for this form (This is special case)

#### Signer(s)

- `+` button appears on the header. On click, new records will be added under the singer section. [See this](https://drive.google.com/file/d/1vhj_-mMO33KQar-MWkYZto8f0LDStTnJ/view?usp=share_link)
- Shows proper message when no signers are available.
- `+` button is shown disabled when no values available for signers dropdown. In such cases, shows a tooltip message on hover. [See this](https://drive.google.com/file/d/1l98DuA8ShIQsuznF-35R_M_JgMqBMyR-/view?usp=share_link)
- Duplicate values won't be allowed.
- Even if the user is removed from any role of the entity, he/she will not be removed from the tax return. 
  - For e.g. If `Jane` is added as a trustee to `Trust 1`. Now, the user creates a tax return for that entity and adds `Jane` as a signer.
  - Now, user removes `Jane` from the trustor of that `Trust 1`. 
  - But, when a user opens the edit tax return dialog, the signer field shows `Jane` in the Signer(s) field. When a user clicks on the dropdown, it doesn't show any values and the `+` button shows in disabled mode.


### UI Requirement

Mockup //TODO

- Tooltip message for Signers
  - For Partnership & Foundation, `No Governance Role Available for this entity`
  - For Trust: `No Trustees Available for this entity`
  - For Estate: `No Representative Available for this entity`
- Duplicate message for Singers: `Duplicate value is not allowed`
- Error message for Grantor to: `Grantor's Tax return is already filed for this year`.



#### Payments

- Based on the selected form, `Payments` section will be populated.  For different forms payment dates  are different. One payment for each date  and one `Final payment` will be created. See [Payment Entity](#payment-entity) for more detail.
- For `1040`,`1041`,`990PF`,`706`,`1120-S` two extra fields will be there under Payments section: `Applied from prior year` and `Federal Income Tax Withheld`
  - For `1041`, If trust is Grantor then payment section won't be applicable.
- `Applied from prior year` is pulled from `Applied to next year` amount of last year tax return. If last year tax return is not available allows user to input amount in this field.
- `Tax Credit` 
  - User can enters Tax Credit amount and Notes. [See this](https://drive.google.com/file/d/1zArbONfRlznBACflGGVMtpagcEs-T0yg/view?usp=sharing)
  - Credits is an amount input field and decimmal value is not allowed.
  - Notes is shown in secondary information. If notes is too long, shows it in multi line. [See this](https://drive.google.com/file/d/1fbZ0RlnwWWebARwXlluJ7W3TLHmwc3U7/view?usp=sharing)
- Allows user to enter amount in `Federal Income Tax Withheld`. Decimal is not allowed. Default value is set to `$ 0`.
- For some of the forms `Payment` is not applicable. For such forms, `Payments` section won't be populated at all. 
- `Total Payments` = `Applied from prior year` + `Federal Income Tax Withheld` + Amount of all date wise payments + Final payments
- Form `1040`, user can enter a `Penalties and Interest` for that tax return. Decimal is not allowed. Default value is set to `$ 0`.
- Difference between `Total Payments` and `Tax Due` can be either Refunded or can be applied to next year. If `Amount refund`  is not entered all difference amount will be applied to next year. If `Amount Refund` is entered it will be subtracted from difference amount first and rest of the difference amount will be set to `Applied to Next Year`

#### General details

- Based on the selected form, `General` section will be populated. For different forms, details in `General` section will be different


### Edit `Basic details` of Tax return

- Year and form can't be changed.
- For `Grantor Trust`, If `Grantor Filing Status` is `Filed under 5227 Trust Return`, it can't be changed otherwise it can be changed.
  - If tax return is Filed, system allows to change.
  - If `Grantor Filing Status` is `Filed under 1041 Trust Return` and user change it to `Filed on Grantor's Tax Return`, system will delete all federal and state tax return data (`Filed on Grantor's Tax Return` doesn't have its own return). For this, system shows proper error message.
  - If `Grantor Filing Status` is `Filed on Grantor's Tax Return` and user change it to `Filed under 1041 Trust Return`, system will generate empty federal tax return.
- For `Grantor Trust`, `Grantor To` can be changed until the tax return is not Filed. 
- Grantor tax return after 2022 year, `Grantor to` and `Grantor Filing status` is changed, the system validates that if `Grantor To` tax return is Filed, show an error message.
  - For e.g. Suppose Trust `T1` has one disregarded entity tax return of 2022 where Ravi is added as a `Grantor to`. Ravi 1041 tax return of 2022 is already Filed. Now, if the user changes the Grantor Filing status from Disregarded entity to 1041, the system shows an error message about Grantor to tax return is already Filed.
- Grantor tax return before 2021 year, system alloows to change the `Grantor to` and `Grantor Filing status` either grantor to tax return is filed or not.
  - Suppose Trust `T1` has one disregarded entity tax return of 2021 where Ravi is added as a `Grantor to`. Ravi 1041 tax return of 2021 is already Filed. Now, if the user changes the Grantor Filing status from Disregarded entity to 1041, the system doesn’t show any error message even if the Grantor to tax return is already Filed.
- Other details can be changed anytime. 
- For partenrship tax return, allows to change the form. 
  - If tax return is Filed, system allows to change.
  - When form is changed, system will add/delete data which are N/A. For this, system shows error message.
  - When form is changed from `Disregarded Entity` to `1065` or `1120-S`, system will auto delete tax components which are not applicable and system will generate empty federal tax return.
  - When form is change from `1065` or `1120-S` to `Disregarded Entity`, system will auto delete Federal and state return which are not applicable. 
  - When form is change from `1065` to `1120-S`, system will auto delete tax components which are not applicable and system will generate empty Payment & Return summary.
  - When form is change from `1120-S` to `1065`, system will auto delete Payments, Return summary and Tax compoennts which are not applicable.
- If the user changes the `Where to send component` value, it will also change the `Where to send Notes` field of all components of that tax return. 
- For `EFTPS details`, user can pull the latest details from the banking. [See more details](#refresh-eftps-details)
- When any tax return is marked as Filed, system will store the audit information of the Filing in database. So in future, we can check when this tax return is marked as filed by user to debug any issues/bugs. Because when tax return is marked as filed, system may trigger component auto creation logic. Component also has created time stored in database. So that we can be sure about why auto creation logic is triggered for any return. 

### Archive

- Allows to Archive anytime
- Doesn't allow to edit when Archived
- Show toast message of success on action of `Archive`.

#### UI Rule

- Toast message is: `Archived Successfully`.

- Partnership tax return message when form is changed
  - Message when user change the form from `Disregarded Entity` to `1065` or `1120-S`: `Form is changed so Tax components which are N/A will be deleted`. [See this](https://drive.google.com/file/d/19qMlbGIcZDs1CNWXfZWbVZabUh7oMNP7/view?usp=share_link)
  - Message when user change the form from `1065` or `1120-S` to `Disregarded Entity`: `Form is changed so Federal & State return will be deleted`. [See this](https://drive.google.com/file/d/16LeTXzsqUVuOcIbuYF0u5JRtXhDziXwZ/view?usp=share_link)
  - Message when user change the form from `1065` to `1120-S`: `Form is changed so Tax components which are N/A will be deleted`. [See this](https://drive.google.com/file/d/1ODDui8UDsphMtdC6aEgcxRy-PDb1_WYV/view?usp=share_link)
  - Message when user change the form from `1120-S` to `1065`: `Form is changed so Payments, Return summary & Tax components which are N/A will be deleted`. [See this](https://drive.google.com/file/d/1hH3H3D2PhXiL2fqNyH-lRblwxlzaCTil/view?usp=share_link)

- Trust tax return message when form is changed from `1041` to `Disregarded Entity`: `Form is changed so Federal data will be deleted`. [See this](https://drive.google.com/file/d/1sA7ihODN8WghvqxMBrm1rsJ-db31hu9q/view?usp=share_link)


### Delete

- Allows to Delete anytime
- On click opens delete confirmation dialog. 

### Restore

- Only `Archived` tax return can be restored.
- Show toast message of success on action of `Restore`.

#### UI Rule

- Toast message is: `Restored Successfully`.

### Refresh EFTPS details

#### Overview
- EFTPS details is saved with the tax return. Now if the EFTPS details is changed in banking, the EFTPS details of that account is not automatically changed in the tax return. So if the user wants to see the latest EFTPS details, he/she can see the latest EFTPS details by clicking on the refresh button.

#### UX Rules
- Refresh icon is shown with EFTPS dropdown
- Icon is shown only if the selected account’s EFTPS details doesn’t match with the Tax return EFTPS details.
- When EFTPS details is removed or the banking account is disposed, the system doesn't show the Refresh icon in the tax return.
- On click, it opens a dialog to confirm with the user. On Confirmation, the latest details will be pulled to the Tax return. On deny, tax return EFTPS details won’t be changed.

#### UI Rules
- Mockup having refresh icon [See this](https://drive.google.com/file/d/1QNzTRY_f_mKOUBPgu0rRS-2soN0WPqbp/view?usp=sharing)
- Confirmation dialog [See this](https://drive.google.com/file/d/1tibi_jWkFookupIhehAC478bsqRx8JEj/view?usp=sharing)


### Browse Tax Return

- Column name
  - Year
    - It show tax return year
  - Form
    - Shows form number
    - For Disregarded entity tax return Form is not applicable so it will show message `Disregarded Entity`.
  - Status
    - Status of tax return. It should be `Pending`, `Received`, `Paid`.
    - Showing `Filed` status in green and `Extend` status in orange colour.
    - Showing status of both Federal and states. There is some logic for overall status of Tax Return:
      - If Filing status of Federal and all of its states is `Filed`, then only status of Tax return is `Filed`. 
      - If status is `Extended` for any of the one state or Federal, overall status will be `Extended`.
      - If status is `Pending` for any of the one state or Federal, overall status will be `Pending`.
    - For `Disregarded Entity` tax return
      - Shows tax return status of `Grantor to` & `SSN of` of the return. Format: `{First name of the Grantor to or SSN of} - {tax return status}`
      - status column doesn't have much width, that's why we have shown only first name.
      - If `Grantor to` or `SSN of` tax return is not created yet, shows N/A. For e.g. `Sanjay - N/A`
      - For partnershiip, When Tax ID type is `EIN` and entity is filing Disregarded return, auto carryforward logic is shown status of entity selected in `Pull Components to`.
      - Filed status is shown in the green and Extended status is shown in Orange color.
      - When `Grantor to` or `SSN of` doesn't have its own 1040 but it has Joint and Joint has 1040, it will show the status of Joint's 1040 return. For e.g. `Sanjay & Monika - Pending`.
  - Total
    - Show total count of All Components.
    - For Disregarded entity this is not applicable
  - Pending
    - Show total count of pending components
    - Shows count of Pending and Overdue component are separated by pipe.
    - The calculation of the overdue component will be shown in red. A tooltip message `{Count number} items are overdue` will appear on its hover.
  - Received
    - Show total count of received components
  - Sent
    - Show total count of Sent components.
  - NA Current Year
    - Show total count of NA current year components.
  - States
    - If states is not applicable, then shows `-`.
    - If a tax return has more than one state available, that state will show up in different rows.
      - It will show a status with each state in bracket.
      - For Disregarded entity this is not applicable
  - Preparer
    - Show preparer name of that tax return.
    - For Disregarded entity this is not applicable
- Records are grouped by form. In each group, records are sorted in descending order of Year.
- For Joint, records are primary sorted on descending order of Year and secondary on entity type in order of Joint and Individual (Individuals are alphabetical sorted)
- For Partnership, records are primary sorted in descending order of Year and secondary sorted on Form. Sorting order of Form is:
  - For Partnership: 1065, 1120-S, Disregarded Entity
- If records is not available in any column then show -.
- When no records available then show `No Tax Returns Found`.
- On hover, show vertmore action. Vertmore action are : `Archive` , `Restore`& `Delete`.
  - `Archive` action is applicable for active tax return.
  - `Restore` action is applicable for archived tax return.
- On clicks, opens view page of that tax return.


## UI requirement

[Mockups](https://drive.google.com/drive/u/0/folders/1jRHPtA8_5nes3ekvm5R87P1e4SXwi1Cg)


#### For Joint

[Mockups](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScXY-SXhmlYyxsGbucFXg8S8)

For Joint entity, shows tax returns of both Joint and Individuals. 

In list page for ACTIVE and ARCHIVED, with each record shows the name of the owner entity. 

Records are primarily sorted on Year and secondary on entity type. In same year Joint record will be shown first and individual records are shown after joint. 

If owner of the record is Joint it shows `Joint` and if owner of the record is `Individual` shows First name of that Individual.

Summary tab shows separate table for Joint and each individuals. If no record available for any entity, that table won't be shown
