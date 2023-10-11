# Associated Entities

## Overview

While looking at the Entity tasks or Entity Tax Status tab, we want to show the data of related entities. Related entities means entities that are associated with given Individuals. 

While looking at the Entity tasks or Entity status(Tax) data of Individuals, we want to show the data of their family members like Children, Fathers, and Mothers.  Also when Children become Adults, we don't want to show their data. So system allows to manual selection of associations. Clarius team will define the association and the system will use that to pull data of associated entities.

Association can be defined only for individuals and Joints. 

Sometimes Individuals are single, so association will be defined at the Individual level. When an Individual is part of any Joint, the association will be only defined at the Joint level. There won't be any association of Individuals in such a case.

## System Rule

- If the Individual is single (Not associated with Joint), show their own association. 
- If the Individual is associated in any Joint, shows the association of Joint.
- Suppose the Individual is single, so it will have its own association defined. Now Joint is created for that Individual, so own association of that Individual won't be used anymore. System will only use the association of Joints. 

## UX Rules

- Associated Entities tab is applicable only to Individuals and Joints. 
- By default shows only associated entities. Shows one toggle switch `Show Associated Entities`. By default it's ON. To see all entities, the user can make that switch OFF.
- Show proper message when the entity has no associated entity available. (In case of when the current entity is also marked as Deceased or Terminated or Archived)
- Records are grouped by Entity type in order of Individual, Joint, Partnership, Foundation, Estate and Trust. Under Each group, records are alphabetically sorted by name.
- Column name
    - Common Columns
        - Name
        - Associated: 
            - The default value will be set to `False`. If the user wants to add an association, set its value to `Yes`.
            - Current entity is always shown enable in this tab and no way to disable that associated. For Joint, both Individuals of the Joint are auto-associated. No way to disable that association. 
            - System shows a lock icon for that. On hover, shows a tooltip message.
    - Individual
        - Spouse
        - Children
        - Father
        - Mother
    - Joint
        - Same as common
    - Partnership
        - Established on
        - Purpose of Partnership
    - Foundation
        - Established on
        - Purpose of Foundation
    - Estate
        - Established on
        - Deceased
    - Trust
        - Date of Formation
        - Type
        - Details
        - Purpose of Trust
- On hover of row except `

## UI Rules
- When any of the columns have long values, show it in the next line. Never shows ellipses.
- `Purpose` column in Trust and Partnership is shown with a maximum width of 1000px. This means for a large screen, it is never shown in more than 1000px.
- Tooltip message on hover of individual of the Joint: `Change is not allowed for Individuals associated with this Joint`
- Tooltip message for current entities: `Change is not allowed for Current Entities`
- Message when there isn't any associated entity available: `No Associated Entities Available`


