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
- There is one pdf icon. On click of icon download pdf of entity status for selected year.
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
- Give the way to export all `Associated Entity Status`, `Open components` & `All Components` of the Associated entities. 


## UX Rule

- All records are grouped by legal entity type. Each types has separate table.
- If there isn't any record available in any table, that table won't be shown.
- Shows Year filter. Shows last 5 years in the dropdown. default value is `Previous year`.
- Column name
  - Entity
    - Name of Legal Entity
  - Role
    - Applicable only for `Partnership`, `Foundation` and `Trust`.
    - If entity name is too long, shows elipsis on the entity name. (Never shows it in next line)
    - Shows only those roles where these legal entity is added. 
      - for e.g. `John` is added as a Director in the Partnership `P1` along with other people. But in this tab, role column will show only John role.
    - For Partnership, it should be `Owner` & `Any of the governance role`.
    - For Foundation, it should be  `Any of the governance role`.
    - For Trust, It should be `Trustor`, `Trustee` & `Any of the Beneficiary`.
    - If an individual is added to more than one role, all those roles appear together in one record.
    - In case of Joint, show that legal entity name with role.
  - Signer(s)
    - Applicable only for `Partnership`, `Foundation`, `Trust` & `Estate`.
    - Shows checkmark icon in parallel of that role if individual is also signer. Otherwise shows `-`. [See Individual](https://drive.google.com/file/d/1bkDrxbOCfergjvzp-Bin2o2h22Yg8o8E/view?usp=share_link), [See Joint](https://drive.google.com/file/d/1pfabxViVMzuLcwqROguWpr-vnc422A_p/view?usp=share_link).
      - For e.g. `John` is added as manager role in the partnership `P1`. That partnership has one tax return and `John` is added as a signer. So when a user opens the Entity status tab of `John`, the system shows the tax return of partnership `P1` in the entity status tab and shows a checkmark icon in the signer(s) column next to the Manager role.
  - Year
    - Tax return year
  - Form
    - Form number of particular tax return
    - For Disregarded entity tax return Form is not applicable so it will show message `Disregarded Entity`
  - Status
    - Status of tax return. Its value should be : `Pending`, `Extended` & `Filed`.
    - Showing status of both Federal and states. There is some logic for overall status of Tax Return:
      - If Filing status of Federal and all of its states is `Filed`, then only status of Tax return is `Filed`. 
      - If status is `Extended` for any of the one state or Federal, overall status will be `Extended`.
      - If status is `Pending` for any of the one state or Federal, overall status will be `Pending`.
    - For Disregarded entity this is not applicable
  - Components
    - Total
      - Count of all component
    - Pending
      - Count of total `Pending` or `Overdue` component
    - Received
      - Count of total `Received` component
    - Sent
      - Count of total `Sent` component
    - NA Current Year
      - Count of total `NA Curret Year` component
  - Expected Filing Date
    - Expected filing date of Tax return
    - For Disregarded entity this is not applicable
  - Date Filed
    - Filing Date of Tax return
    - For Disregarded entity this is not applicable
- If records is not available in any column then show -.
- Sorting in Individual section   
  - Parents and Kids are shown separately
  - Parents are at top and kids are at bottom
  - for both group records are sorted in alphabetical order
- Sorting in Joint & Foundation section
  - All records are sorted in alphabetical order of Entity name.
- Sorting in Trusts & Partnership section
  - Show `Disregarded Entity` at bottom and other entities at the top.
  - Both entities records are sorted in alphabetically.
- If a legal entity has 2 different form number tax returns in the same year, both will appear in separate lines. Do not repeat the name of the entity in this case.
- On hover shows hover effect. On click open that tax return in same legal entity.
- List the joint section as first for both Joint and Individuals.
- Shows `Export` button on header where the user can export the Associated entity status report as PDf, `OPen` & `All` components as a PDF and Excel. [See more details](open-all-components-report.md#openall-components-reports)

## UI Rule

Mockup of Individuals & Joint //TODO



## Download PDF

### UX Rule

- Allows to Download PDF file for entity status for selected year.
- PDF section and sorting order is same as the [entity status tab](./entity-status.md#ux-rule). There are some changes.
  - Do not show Year column.
  - In pending column, showing the total of both `Pending` and `Overdue` component.
- Downloaded File name: `{legal-entity-name(First+Last)}-{selected year}-entity status-report.pdf`
- Show proper message when no records available in the whole report.
  - If there isn't any record available in any section, that section won't be shown.
- Due to a lack of space in the PDF, we do not show the Role and Singer(s) column in the PDF.


### UI Rule

[Mockup](https://drive.google.com/file/d/1s6VrHNqC5oH1VgCiV6WxxRKUYvN0wB8C/view?usp=sharing)

- Message for no records available : `No Records Found`

