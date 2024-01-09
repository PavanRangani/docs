# Service team summary > Single family

## Overview
- Earlier, the team was set up at the family level. But now the team is set at the entity level. So if there is any change of person in team, they need to change team of many entities. 
- From this page, Clarius team can see team of all the entities (whose `Household` is Yes or `ASA Entity` is Yes and Service team is `Own`)
- When Clarius user wants to change the team of an entity, he can open each entity and change the team from `Service Scope` tab. But now, from this page Clarius user can change the team of any entity from this page.


## UX Rule
- Shows only those entities whose `Household is Yes` or `ASA Entity is Yes and Service team is Own`.
- Entities are grouped by `Household` & `ASA Entity`. Each group are shown in separate table.
- Shows only those table which has entities. Example - When there isn't anny ASA Entity, its table is not visible. 
- Shows proper message when any tables has no records.
- Columns are
    - Name
    - Service Scope
    - Director
    - Advisor
    - Investment Director
    - Associate Advisor
    - Investment Associate
    - Client Manager
    - Client Associate
    - Operations
    - PC / Rec.
        - User are primary sorting on users role and secondary sorting on alphabetical order.
        - Personal Controller types roles are shown first and Reconciliation types roles are shown second.
        - Show the role name in brackets with each user name. E.g `Arun K. (PC)` or `Keith V. (Rec.)`
- Shows tick mark icon for user marked as a lead. Mark as lead user is shown first in the roles columns and then the other user is alphabetically sorted.
- Sorting order of Household: Households are primarily sorted in ascending order of Generation and Secondary sorting in alphabetical order of household Name.
- Sorting order of ASA Entity: Entities are grouped by entity type in order of - Partnership, Foundation, Estate & Trusts. Under each entity type groups, records are sorted on alphabetical order of Name.
- On hover, shows hover effect and pencil icon to the far right side.
- On click of pencil icon, open the household team dialog. Dialog is the same as household team dialog [See more details](../new-household-asa-service-team/household-team.md).
- Note: There is not much width available on this page and that's why we only show the first character of the last name. For ex. `Keith V.`
- There is one button `Quick Update Team` from where the Clarius user in entity team can be changed quickly. [See more details](./quick-update-team.md#quick-update-team)


## UI Rule
- Placeholder message: `No Records Found`
- [See list page](https://drive.google.com/file/d/1Zs-my1hzcmH2_fU4D2ZcIe-qm4-6wTyD/view?usp=sharing)


## Scenarios - UX
- Entities not available
- Browse entities
- Change entity's team for any entity


