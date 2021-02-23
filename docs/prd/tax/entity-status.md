# Entity Status

## System Rule

- Applicable only for Individuals and Joint.
- Records are pulled based on filter.
- Shows all trusts tax return of selected legal entity where this legal entity is added as Trustor, Trustee or Beneficiary for Trust.
  - Also show the grantor type trust where this individual is added as SSN.
- Shows all `Partnership` and `Foundation` tax return of selected legal entity where this legal entity is currently owner of `Partnership` or added as a Governance role in the `Partnership` and `Foundation`.
- Also show the details of the tax return of the family member of this legal entity.
- Does not show estate type legal entity tax return. //TODO



## UX Rule

- All records are grouped by legal entity type. Each types has separate table.
- There is a one-year filter. Set its default value to `Previous current year`.
- Column name
  - Entity
    - Name of Legal Entity
  - Relation
    - Applicable only for Individuals. //TODO (Individual Legal entity ma pan Individual type mate lagu padse.)
    - Show relation in between selected legal entity like `Father, Mother, Children, Spouse, Etc.`
  - Role
    - Applicable only for `Partnership` and `Trusts`.
    - For Partnership, its value should be `Owner`, `Any of the governance role`
    - For Trust, Its value should be `Trustor`, `Trustee`, `Any of the Beneficiary`.
    - If an individual is added to more than one role, all those roles appear together in one record.
    - In case of Joint, Show that legal entity name with role.
  - Year
    - Year column
  - Form
    - Form number of particular tax return
  - Status
    - Status of tax return
    - Its value should be : `Pending`, `Extended` & `Paid`
  - Total
    - Count of total component
  - Pending
    - Count of total `Pending` or `NA Current Year` component
    - If component is not available then show `-`.
  - Received
    - Count of total `Received` component
  - Sent
    - Count of total `Sent` component
  - Expected Filing Date
    - Date column
  - Date Filed
    - Date Column
- All records are sorted in alphabetical order of Entity name.
- If a legal entity has 2 different form number tax returns in the same year, both will appear in separate lines. Do not repeat the name of the entity in this case.
- On hover shows hover effect. On click open that tax return.
- If there isn't any record available in any table, that table won't be shown.
- Show proper message for Grantor types trust.
- Joint section is not applicable for the `Joint` legal entity.



## UI Rule

Mockup of Individuals & Joint //TODO

- Message for Grantor trust: `Trust is a Grantor Trust filing under the Grantor's social security number so the Trust does not file a separate return`





## TO DO

- What data should we pull in this tab?? Like Children, Father, Mother, Etc.
- Can we pulled Deceased or terminated data?x`
- Ek individuals same family ma 2 different role ma add thayelo hoi to aa case ma su avshe?
- Ek individuals same family ma active and past governance ma add thayelo hoi aa case?
- Ek j individuals pase same year ma 2 different form na tax return che aa case ma su karvu?
- Can we show that partnership where this individual is in ownership history?
- Can we pulled data for estate? (Where this individuals is added as representative name)
- Filter na dropdown ma kae value avshe?
- Partnership ma owner and Trust ma beneficiary pase `%` available hoi to tene ahi batavishu?
- Koi trust ma 2020 ma tax available che ane have hu 2021 ma e trust ne grantor karu to 2020 na tax mane pulled thaene batavshe?
- Jo koi tax pase state add karela hoi to te state ni column ahi batavii joiye?
  - Case 1 : Jo state nu tax return baki hoi to te tax nu status pending j kevay aetle
- Delete case //TODO
- For Joint
  - Can we show relation in individual type section?
  - Joint ma kya data pull karine batavva? Joint na k Individuals na k Both.
  - 