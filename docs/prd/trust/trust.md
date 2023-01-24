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
|                             | Retained Interest                         |                                                              | Applicable to `CRUT`, `CLAT`, `CRAT`, `GRAT` & `QPRT` types of trust                     |
|                             | 7520 Rate                                 |                                                              | Applicable to `CRUT`, `CLAT`, `CRAT`, `GRAT` & `QPRT` types of trust                     |
|                             | Valuation amount                          |                                                              | Applicable to all types of trust except revocable Trust                             |
|                             | Valuation notes                           |                                                              | Applicable to all types of trust except revocable Trust                             |
|                             |                                           |                                                              |                                                         |
| **Purpose of Trust**       |                                           |                                                              |                                                         |
|                             | Purpose of trust                          |                                                              |                                                         |
| **Contact Information**         |                                           |                                                              |  [See more details](#address)                                                      |
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
|                             | Applicable laws                           |                                                              |                                                         |
|                             | Disposition provision                     |                                                              |                                                         |
|                             | Other notes                               |                                                              |                                                         |


### Address

- Address of the Trust firm. User can allows to add 2 addresses. Its not mandatory.
- By default, addresses name are `Address` & `Addtional Address`.
- User can able to change the header of the address. On hover, shows pencil icon. On click, opens header in edit mode where user can able to change the header name.
- Address is not a mandatory.
- Fields of the addresses are: 
  - Address 1 
  - Address 2
  - City 
  - State 
  - Zip-code
  - Country
    - By default, USA is prefilled.