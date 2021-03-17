# Entity Status

## Overview

- Shows tax return details of all other related legal entities. This is useful when filing tax return of the Individual or Joint.



## System Rule

- Applicable only for Individuals and Joint.
- Shows tax return details of related legal entities like Individuals, Joints, Partnerships, Foundation and Trusts 
- It doesn’t show tax return details of Estates (Based on Keith’s suggestion this is not required)
- If particular legal entity has tax return available for selected year then only it will be available on this page. Otherwise not.
- Allows to select particular year and based on selected year data will be pulled. 
- Shows tax return details of both of Archived and Active.
- Individuals
  - For Individuals It shows records of self Individual, Spouse and Children. (Please note parents are not included)
  - For Joint, It shows both Individuals of Joint & Unique Children of both Individual
- Joint
  - For Individual, it shows associated Joints (Mostly one individual will be associated with one joint in real life. But currently in our application we don’t have such restrictions. So in test environment one individual can have multiple joints)
  - For Joint, it shows self record only.
- Partnership
  - Individuals can be associated to a partnership as current or past owners. Also Individuals can be associated to partnership as a current or past governance role
  - Here only those partnerships data will be pulled where this individual is either current owner or in current governance role.
- Foundation
  - Individuals can be associated to a foundation as a current or past governance role.
  - Here only those foundations data will be pulled where this individual is in current governance role.
- Trust
  - Shows all trusts where this legal entity is added as Trustor, Trustee or Beneficiary in only current version (Not in history)
  - Grantor trust can not have tax return. So as per above rule it won’t be included. But as a special requirement, associated grantor trusts will always shown on this page.
- Legal entity can have multiple tax return forms. So all form’s tax return data will be pulled (for e.g. Partnership can have two form - 1065 & 1120-S).



## UX Rule

- All records are grouped by legal entity type. Each types has separate table.
- If there isn't any record available in any table, that table won't be shown.
- Shows Year filter. Shows last 5 years in the dropdown. default value is `Previous year`.
- Column name
  - Entity
    - Name of Legal Entity
  - Role
    - Applicable only for `Partnership`, `Foundation` and `Trust`.
    - For Partnership, it should be `Owner` & `Any of the governance role`.
    - For Foundation, it should be  `Any of the governance role`.
    - For Trust, It should be `Trustor`, `Trustee` & `Any of the Beneficiary`.
    - If an individual is added to more than one role, all those roles appear together in one record.
    - In case of Joint, show that legal entity name with role.
  - Year
    - Tax return year
  - Form
    - Form number of particular tax return
  - Status
    - Status of tax return
    - Its value should be : `Pending`, `Extended` & `Paid`
  - Total
    - Count of total component
  - Pending
    - Count of total `Pending` or `NA Current Year` component
  - Received
    - Count of total `Received` component
  - Sent
    - Count of total `Sent` component
  - Expected Filing Date
    - Expected filing date of Tax return
  - Date Filed
    - Filing Date of Tax return
- If records is not available in any column then show -.
- All records are sorted in alphabetical order of Entity name except individuals.
- Sorting in Individual section   
  - Parents and Kids are shown separately
  - Parents are at top and kids are at bottom
  - for both group records are sorted in alphabetical order
- If a legal entity has 2 different form number tax returns in the same year, both will appear in separate lines. Do not repeat the name of the entity in this case.
- On hover shows hover effect. On click open that tax return.
- Show proper message for Grantor types trust.
- For Joint, list the joint section is first.
- For Grantor type trust, any of the column except `Entity` and `Role` is not applicable. So show proper message for other.



## UI Rule

Mockup of Individuals & Joint //TODO

- Allows to download pdf of Entity status for the selected year. See this //TODO
  - Download file name: {Legal Entity name}-{Selected Year}-entity status-report.pdf

- Message for Grantor trust: `Trust is a Grantor Trust filing under the Grantor's social security number so the Trust does not file a separate return`


