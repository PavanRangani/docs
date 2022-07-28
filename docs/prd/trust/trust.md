# Trusts

## Entity details

- There are total 11 type of trusts.
- For each type of trusts there are some common fields and there are some type specific data.
- Group is not part of entity. It is used on UI

To get field matrix of each type then you can see it on this [spread sheet](https://docs.google.com/spreadsheets/d/18PjQox8c1EAzxw04Gc_ti91t9V4sRIAg/edit#gid=1692642728)

| Group                       | Field                                     | Description                                                  | Applicable to                                           |
| --------------------------- | ----------------------------------------- | ------------------------------------------------------------ | ------------------------------------------------------- |
| **General details**         |                                           |                                                              |                                                         |
|                             | Name (*)                                  |                                                              | ALL                                                     |
|                             | Revocable                                 | Revocable / Irrevocable                                      | ALL                                                     |
|                             | Split interest                            | Split interest/ Non-Split interest                         | When its `Non-Split Interst`, shows this types of trust `Revocable`, `Gift Trust`, `CST`, `QTIP`. <br /> When its `Split Interst`, shows this types of trust `QPRT`, `CLAT`, `CRAT`, `CRUT`, `GRAT`, `CLUT`, `GRUT`. |
|                             | Trust Type                                | Total  11 type of trusts possible<br /><br />- Revocable Trust  <br />- Gift Trust  <br />- Charitable Lead Annuity Trust (CLAT)<br />- Charitable Lead Unitrust (CLUT)<br />- Charitable Remainder Annuity Trust (CRAT)<br />  - Charitable Remainder Unitrust (CRUT) <br />- Credit Shelter Trust (CST)<br /> - Grantor-Retained Annuity Trust (GRAT)<br /> - Grantor-Retained Unitrust (GRUT) <br /> - Qualified Personal Residence Trust (QPRT)<br />  - Qualified Terminable Interest Property Trust (QTIP)   <br /><br /><br /> If Revocable is selected, then **Revocable Trust** automatically populates as the Trust type <br /> <br />When irrevocable is selected, it shows one dropdowns to choose between Split Interest or Non-Split Interest<br /><br />If `Split Interest` is selected, then the Trust type field shows a drop down menu with the following options to choose from <br /> <br />**Charitable Lead Annuity Trust (CLAT)  <br />Charitable Lead Unitrust (CLUT) <br />Charitable Remainder Annuity Trust (CRAT) <br />Charitable Remainder Unitrust (CRUT) <br />Grantor-Retained Annuity Trust (GRAT) <br />Grantor-Retained Unitrust (GRUT) <br />Qualified Personal Residence Trust (QPRT)**  <br /><br />If `Non-Split Interest` is selected, then the Trust type field shows a drop down menu with the following options to choose from <br /> <br />**Gift Trust** <br />**Credit Shelter Trust (CST)** <br />**Qualified Terminable Interest Property Trust (QTIP)**  <br /> |                                                         |
|                             | Grantor                                   | Grantor / Non-Grantor                                        | For this `Revocable`, `QPRT`, `GRAT`, `GRUT` trust, set its value to `Grantor`<br /> For this `CRAT`, `CRUT`, `CST`, `QTIP` trust, set its value to `Non-grantor`<br /> For `Gift Trust`, `CLAT`, `CLUT` trust, its value either `Grantor` or `Non-grantor`  |
|                             | Date of Formation (*)                     | Date input field.                                            | All                                                     |
|                             | State of Domicile                         | Its a mandatory field. <br />Its an auto complete dropdown of USA state. | All                                                     |
|                             | Status                                    | Default value is `Inter Vivos`. Possible values can be: `Inter Vivos`  or `Active Testamentary` | All                                                     |
|                             | Crummey trust                             |                                                              | Applicable only for `Gift Trust`.                                                     |
|                             | Tax ID Type                               | Only applicable to Grantor type trusts. Revocable trusts are by default considered as Grantor type.<br />Its Possible values can be `EIN` or `Individual SSN`<br />Mostly Grantor Trusts (Revocable Trust & Irrevocable trust of  Grantor) will have Individual SSN as Tax ID but Sometimes banks/financial institutions require that the Trust have an EIN. So this option is provided to Athena user to select appropriate field here. | Applicable only for `Grantor Trust`                     |
|                             | EIN (*)                                   | EIN number of the trust. Mandatory for Non Grantor/Grantor trusts.<br />For Grantor trust, applicable when `Tax ID Type` = `EIN`. |                                                         |
|                             | Social Security Number of                 | Applicable when Tax ID Type = `Individual SSN` <br />Its Auto complete dropdown for current active family individuals (No deceased) |                                                         |
|                             | Social Security Number                    | Applicable when Tax ID Type = `Individual SSN`. It will pull the SSN number of the above selected individuals in `Social Security Number of` field.  <br />`Social Security Number` field with Individuals is not mandatory. So due to this, When `Social Security Number` is not available for selected Individual under `Social Security Number of` field, this field will remain blank |                                                         |
|                             | Valuation amount                          |                                                              | Applicable to all types of trust except revocable Trust                             |
|                             | Valuation notes                           |                                                              | Applicable to all types of trust except revocable Trust                             |
|                             |                                           |                                                              |                                                         |
| **Gift trust details**      |                                           | All fields are YES/NO                                        | Gift Trust                                              |
|                             | Generation skipping transfer of tax (GST) |                                                              |                                                         |
|                             | Crummey notices                           |                                                              |                                                         |
|                             | Owns insurance                            |                                                              |                                                         |
| **Term of income interest** |                                           |                                                              | For various types, fields under this sections are different. See this field matrix sheet to know more about [each types](https://docs.google.com/spreadsheets/d/18PjQox8c1EAzxw04Gc_ti91t9V4sRIAg/edit#gid=1692642728) |
| **Trustor/Trustees**        |                                           |                                                              |                                                         |
|                             | Trustors (*)                              | Allows to select contact and company where type of company is `For-Profit | Professional Services | Legal`, `For-Profit | Professional Services | Banking/Credit` and `Non-Profit` |                                                         |
|                             | First trustee (*)                         | Same as Trustors                                             |                                                         |
|                             | Second trustee                            | Same as Trustors                                             |                                                         |
|                             | Third trustee                             | Same as Trustors                                             |                                                         |
| **Beneficiaries**           |                                           |For various types, Applicable beneficiaries are different. See this field matrix sheet to know more about type wise applicable [beneficiaries](https://docs.google.com/spreadsheets/d/18PjQox8c1EAzxw04Gc_ti91t9V4sRIAg/edit#gid=1692642728) |                                                         |
|                             | Income beneficiaries                      | Allows to select contact, All Client Entity and company where type of company is `Non-Profit`. <br />In percentage decimal is not allowed<br />Allows to enter text (Name directly) also. This will not create contact but it will remain only text. Its useful when you want to add name of the person which is not contact or Individual (for e.g. Grandchildren)<br />In percentage decimal is allowed. |                                                         |
|                             | Remainder beneficiaries                   | Same as Income Beneficiaries                                 |                                                         |
|                             | Primary beneficiaries                     | Same as Income Beneficiaries                                 |                                                |
|                             | Secondary beneficiaries                   | Same as Income Beneficiaries                                 |                                                |
| **Withdrawal rights**       |                                           |                                                              |                                                         |
|                             | Withdrawal rights(*)                      | Applicable only when Crummey trust = Yes. <br />Its mandatory. <br />Allows to select contacts.<br />In percentage decimal is allowed. |                                                         |
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

## Add Trust

### UX Rule

- New trusts will always be added from the Family Details page.
- For `Withdrawal Rights`, a total percentage should be allowed to 100 otherwise system show an error message.
- For `Beneficiary`, a total percentage should be allowed to 100 or 99.99 otherwise system show an error message.  

### UI Rule

- Error message for `Beneficiary` and `Withdrawal Rights`: Total percentage should be 100

#### Design decision
Why should the system allow 99.99% for the beneficiaries section?
- Sometimes, it will happen that there are 3 contacts available in the beneficiary section and each contact has received 1/3 part of the Trust. That's why we have allowed 99.99 (1/3 = 33.33 and 33.33 * 3 = 99.99) for beneficiary section.

## Edit

- Can be edited anytime.
- Terminated trust can't be edited

## Amend

- Not applicable for Terminated trust
- Amend is one type of edit. Amend should be used when update history is required 
- System maintains history of the amendment
- In Amend, System ask for date & Amendment purpose 
- For `Revocable type`, value of `Amendment purpose` can be `Amendment` or `Amendment & Restatement`
- For all other type, system allows to enter description for Amendment purpose.
- Amendment can be edited and deleted
- On `Delete` shows confirmation dialog

### UI Requirement

- Shows Amendment history if available in dialog

## Terminate

- When any trust is terminated, system ask for `Date` and `Termination`.
- Termination date is always greater than Formation date otherwise system show error message.
- `State of Domicil` field is mandatory. When we have introduced it, we can not set any default value. User has to manually specify it. So we planned that whenever user edit the Trust, UI will not allow to SAVE the trust without filling its value. Terminate action internally uses EDIT API, so when user performs Terminate action for any trust and it has `State of Domicile` field blank, Edit api will be failed but UI will show a proper toast message.

### UI Requirement
- Toast message: `stateOfDomicile may not be empty` 
- Error message for `Termination date`: should be >= Date of Formation {date of formation}

## Download PDF

- Allows to download current as well as history of trust.
- Shows pdf icon on the header of Trust header. On click, Downloads PDF in the same browser tab.
- For Historical Trust: Click on `Download PDF` action on vertmore, So the pdf file will be downloaded in the same browser tab.
- For Gift Trust 
  - As per Keith, There is no need to show both `Valuation Amount` and `Valuation Notes` in PDF.
- For all types grantor trust
  - As per Keith, There is no need to show `SSN Number`  in the PDF. 

### PDF File

[Mockup of other types](https://drive.google.com/file/d/1d-IEUJwhqJKVZ_67tXfTqlEeaFHrMjks/view?usp=sharing) //TODO

[Mockup of Gift Trust](https://drive.google.com/file/d/1CijvTF7PYDxfItJDLwF9sSsjwNJMp_KX/view?usp=sharing) //TODO

File name of current as well as historical trust will be in this format: `{Trust Name}-trust summary report.pdf`



## View Trust

### UI Requirement

- Shows 4 tabs: CURRENT, HISTORY, EMAIL, PARTNERS
  - CURRENT tab shows latest version of trust (In case of amendments are available)
  - HISTORY tab shows all the amendments
  - EMAIL & PARTNERS tab are common (Same as all other legal entities)
- CURRENT tab
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


##  Pull Assets to Owners

Possible values : `Yes` or `No`. Default value `Yes`.

Yes means assets of this Trust will be pulled to the owners. 

No means assets of this Trust won't be pulled to the owners.

Here Owners means any individual who is added to the trust as Trustor, Truestee or Beneficiary.