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
|                             |                                           |                                                              |                                                         |
|                             |                                           |                                                              |                                                         |
|                             | Date of formation (*)                     |                                                              |                                                         |
|                             | EIN (*)                                   |                                                              |                                                         |
|                             | Status                                    | Default value is blank. Possible values can be: `Intervivos`  or `Testamentary` |                                                         |
|                             | Crummey trust                             | For Gift type trust, when gift has been made, this value can't be changed |                                                         |
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
|                             | Trustors (*)                              |                                                              |                                                         |
|                             | First trustee (*)                         |                                                              |                                                         |
|                             | Second trustee                            |                                                              |                                                         |
|                             | Third trustee                             |                                                              |                                                         |
| **Beneficiaries**           |                                           |                                                              |                                                         |
|                             | Income beneficiaries                      | Allows to select contact, partnership, estate and foundation.<br />In percentage decimal is not allowed |                                                         |
|                             |                                           |                                                              |                                                         |
|                             | Remainder beneficiaries                   |                                                              |                                                         |
|                             | Primary beneficiaries                     |                                                              | Gift Trust                                              |
|                             | Secondary beneficiaries                   |                                                              | Gift Trust                                              |
| **Withdrawal rights**       |                                           |                                                              |                                                         |
|                             | Withdrawal rights(*)                      | Its mandatory. Applicable only when Crummey trust = Yes      |                                                         |
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

### Terminate

- When any trust is terminated, system ask for `Date` and `Termination`

# UI Requirements

[Mockups](https://drive.google.com/drive/u/0/folders/1yvi2-zVNBQ4JnsB_12qjgHE3pglOU05d) 



