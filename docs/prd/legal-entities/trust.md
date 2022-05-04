# Trusts

## System requirements

- There are total 11 type of trusts.
- For each type of trusts there are some common fields and there are some type specific data.

### Entity details

- Group is not part of entity. It is used on UI

| Group                       | Field                                     | Description                                                  | Applicable to                                           |
| --------------------------- | ----------------------------------------- | ------------------------------------------------------------ | ------------------------------------------------------- |
| **General details**         |                                           |                                                              |                                                         |
|                             | Name (*)                                  |                                                              | ALL                                                     |
|                             | Revocable                                 | Revocable / Irrevocable                                      | ALL                                                     |
|                             | Grantor                                   | Grantor / Non-Grantor                                        |                                                         |
|                             | Split interest                            | Split interest/ Non-Split interest                           |                                                         |
|                             | Trust Type                                | Total  11 type of trusts possible<br /><br />- Revocable Trust  <br />- Gift Trust  <br />- Charitable Lead Annuity Trust (CLAT)<br />- Charitable Lead Unitrust (CLUT)<br />- Charitable Remainder Annuity Trust (CRAT)<br />  - Charitable Remainder Unitrust (CRUT) <br />- Credit Shelter Trust (CST)<br /> - Grantor-Retained Annuity Trust (GRAT)<br /> - Grantor-Retained Unitrust (GRUT) <br /> - Qualified Personal Residence Trust (QPRT)<br />  - Qualified Terminable Interest Property Trust (QTIP)   <br /><br /><br />If Revocable is selected, then **Revocable Trust** automatically populates as the Trust type <br /> <br />When irrevocable is selected, it shows two dropdowns. One for Grantor or Non-Grantor and one for to choose between Split Interest or Non-Split Interest<br /><br />If Split Interest is selected, then the Trust type field shows a drop down menu with the following options to choose from <br /> <br />**Charitable Lead Annuity Trust (CLAT)  <br />Charitable Lead Unitrust (CLUT) <br />Charitable Remainder Annuity Trust (CRAT)  Charitable Remainder Unitrust (CRUT) <br />Credit Shelter Trust (CST) <br />Grantor-Retained Annuity Trust (GRAT) <br />Grantor-Retained Unitrust (GRUT)  Qualified Personal Residence Trust (QPRT) <br />Qualified Terminable Interest Property Trust (QTIP) **  <br /><br />If Non-Split Interest is selected, then **Gift Trust** automatically populates as the Trust type |                                                         |
|                             | Date of Formation (*)                     | Date input field.                                            | All                                                     |
|                             | State of Domicile                         | Its a mandatory field. <br />Its an auto complete dropdown of USA state. | All                                                     |
|                             | Status                                    | Default value is  `Inter Vivos`. Possible values can be: `Inter Vivos`  or `Active Testamentary` | All                                                     |
|                             | Crummey trust                             | For Gift type trust, when gift has been made, this value can't be changed | All                                                     |
|                             | Tax ID Type                               | Only applicable to Grantor type trusts. Revocable trusts are by default considered as Grantor type.<br />Its Possible values can be `EIN` or `Individual SSN`<br />Mostly Grantor Trusts (Revocable Trust & Irrevocable trust of  Grantor) will have Individual SSN as Tax ID but Sometimes banks/financial institutions require that the Trust have an EIN. So this option is provided to Athena user to select appropriate field here. | Applicable only for `Grantor Trust`                     |
|                             | EIN (*)                                   | EIN number of the trust. Mandatory for Non Grantor/Grantor trusts.<br />For Grantor trust, applicable when `Tax ID Type` = `EIN`. |                                                         |
|                             | Social Security Number of                 | Applicable when Tax ID Type = `Individual SSN` <br />Its Auto complete dropdown for current active family individuals (No deceased) |                                                         |
|                             | Social Security Number                    | Applicable when Tax ID Type = `Individual SSN`. It will pull the SSN number of the above selected individuals in `Social Security Number of` field.  <br />`Social Security Number` field with Individuals is not mandatory. So due to this, When `Social Security Number` is not available for selected Individual under `Social Security Number of` field, this field will remain blank |                                                         |
|                             | Initial valuation amount                  |                                                              | Gift Trust                                              |
|                             | Initial valuation notes                   |                                                              | Gift Trust                                              |
|                             |                                           |                                                              |                                                         |
| **Gift trust details**      |                                           | All fields are YES/NO                                        | Gift Trust                                              |
|                             | Generation skipping transfer of tax (GST) |                                                              |                                                         |
|                             | Crummey notices                           |                                                              |                                                         |
|                             | Owns insurance                            |                                                              |                                                         |
| **Term of income interest** |                                           |                                                              | Only applicable to **Split interest types**             |
|                             | Type of Income                            | Fixed Percentage Payout / Fixed Annuity Payment / Distribute All Income<br />  For CLUT, CST, GRUT - Type of Income is Fixed Percentage Payout<br /><br /> For CLAT, CRAT , CRUT, GRAT, QPRT -  Type of income is Fixed Annuity Payment <br /><br />For QTIP - Type of Income can be Distribute All Income or Fixed Percentage Payout |                                                         |
|                             | Number of months                          |                                                              | Only When Type of Income is **Fixed Percentage Payout** |
|                             | Percentage                                |                                                              | Only When Type of Income is **Fixed Percentage Payout** |
|                             | Term                                      | When Type of income is **Fixed Annuity Payment** <br />Possible values can be : Number of months / Term life of <br /><br />When Term is **Number of months**  allows to enter Number of months<br /><br /> When Term is selected as **Term life of** allows to select Term life of contact | When Type of income is **Fixed Annuity Payment**        |
|                             | Number of months                          |                                                              | When Type of income is **Fixed Annuity Payment**        |
|                             | Term life of                              |                                                              | When Type of income is **Fixed Annuity Payment**        |
|                             |                                           |                                                              |                                                         |
| **Trustor/Trustees**        |                                           |                                                              |                                                         |
|                             | Trustors (*)                              | Allows to select contact and company where type of company is `For-Profit | Professional Services | Legal`, `For-Profit | Professional Services | Banking/Credit` and `Non-Profit` |                                                         |
|                             | First trustee (*)                         | Same as Trustors                                             |                                                         |
|                             | Second trustee                            | Same as Trustors                                             |                                                         |
|                             | Third trustee                             | Same as Trustors                                             |                                                         |
| **Beneficiaries**           |                                           |                                                              |                                                         |
|                             | Income beneficiaries                      | Allows to select contact, All Client Entity and company where type of company is `Non-Profit`. <br />In percentage decimal is not allowed<br />Allows to enter text (Name directly) also. This will not create contact but it will remain only text. Its useful when you want to add name of the person which is not contact or Individual (for e.g. Grandchildren) |                                                         |
|                             | Remainder beneficiaries                   | Same as Income Beneficiaries                                 |                                                         |
|                             | Primary beneficiaries                     | Same as Income Beneficiaries                                 | Gift Trust                                              |
|                             | Secondary beneficiaries                   | Same as Income Beneficiaries                                 | Gift Trust                                              |
| **Withdrawal rights**       |                                           |                                                              |                                                         |
|                             | Withdrawal rights(*)                      | Applicable only when Crummey trust = Yes. <br />Its mandatory. <br />Allows to select contacts.<br />In percentage decimal is not allowed. |                                                         |
| **Clarius emails**          |                                           |                                                              |                                                         |
| **Partners**                |                                           |                                                              |                                                         |
|                             | CPA                                       |                                                              |                                                         |
|                             | Attorney                                  |                                                              |                                                         |
|                             | Insurance Agent                           |                                                              |                                                         |
| **Other information**       |                                           |                                                              |                                                         |
|                             | Purpose of trust                          |                                                              |                                                         |
|                             | Applicable laws                           |                                                              |                                                         |
|                             | Disposition provision                     |                                                              |                                                         |
|                             | Other notes                               |                                                              |                                                         |

#### Pull Assets to Owners

Possible values : `Yes` or `No`. Default value `Yes`.

Yes means assets of this Trust will be pulled to the owners. 

No means assets of this Trust won't be pulled to the owners.

Here Owners means any individual who is added to the trust as Trustor, Truestee or Beneficiary.

### Edit

- Can be edited anytime.

### Amend

- Amend is one type of edit. Amend should be used when update history is required 
- System maintains history of the amendment
- In Amend, System ask for date & Amendment purpose 
- For `Revocable type` , value of `Amendment purpose` can be `Amendment` or `Amendment & Restatement`
- For all other type, system allows to enter description for Amendment purpose.
- Amendment can be edited and deleted
- On `Delete` shows confirmation dialog

#### UI Requirement

- Shows Amendment history if available in dialog

### Terminate

- When any trust is terminated, system ask for `Date` and `Termination`.
- `State of Domicil` field is mandatory. When we have introduced it, we can not set any default value. User has to manually specify it. So we planned that whenever user edit the Trust, UI will not allow to SAVE the trust without filling its value. Terminate action internally uses EDIT API, so when user performs Terminate action for any trust and it has `State of Domicile` field blank, Edit api will be failed but UI will show a proper toast message.

#### UI Requirement
- Toast message: `stateOfDomicile may not be empty` 



### Download PDF

- Allows to download current as well as history of trust.
- Shows pdf icon on the header of Trust header. On click, Downloads PDF in the same browser tab.
- For Historical Trust: Click on `Download PDF` action on vertmore, So the pdf file will be downloaded in the same browser tab.
- For Gift Trust 
  - As per Keith, There is no need to show both `Valuation Amount` and `Valuation Notes` in PDF.
- For all types grantor trust
  - As per Keith, There is no need to show `SSN Number`  in the PDF. 

#### PDF File

[Mockup of other types](https://drive.google.com/file/d/1d-IEUJwhqJKVZ_67tXfTqlEeaFHrMjks/view?usp=sharing)

[Mockup of Gift Trust](https://drive.google.com/file/d/1CijvTF7PYDxfItJDLwF9sSsjwNJMp_KX/view?usp=sharing)

File name of current as well as historical trust will be in this format: `{Trust Name}-trust summary report.pdf`



## View Trust

### UI Requirement

- Shows 4 tabs: CURRENT, HISTORY, EMAIL, PARTNERS
  - CURRENT tab shows latest version of trust (In case of amendments are available)
  - HISTORY tab shows all the amendments
  - EMAIL & PARTNERS tab are common (Same as all other legal entities)
- CURRENT tab
  - CURRENT tab shows latest version of trust (In case of amendments are available)
  - Shows all amendments under Amendment section
  - Columns under Amendment section: Amendment Number, Amendment Date, Amendment Summary
  - Current tab have one pdf icon, on clicks download pdf file for current trust.
- HISTORY tab
  - It shows all amendments in table
  - When there isn't any amendment available, it shows `No records found` message
  - Columns: Amendment Number, Amendment Date, Amendment Summary
  - Records will be shown in ascending order of date. Oldest record will be shown at top
  - On click of any row it will open view dialog for that amendment
  - Context menu actions: Download PDF, Edit & Delete
  - On the click of `Download PDF`, the PDF file of those records will be downloaded.
  - For `Initial version` record, Delete is not allowed.
- Table of Amendment section and History page
  - Columns: Amendment number, Amendment Date, Amendment Summary
  - Amendment number is shown in pattern `Amendment #1`, `Amendment #2`
  - For Initial version Amendment number column shows static value  `Initial version` always
  - Here numbering is based on only date.
  - Amendment Date shows date of amendment. 

[Mockups](https://drive.google.com/drive/u/0/folders/1yvi2-zVNBQ4JnsB_12qjgHE3pglOU05d) 
