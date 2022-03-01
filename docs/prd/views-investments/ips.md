# IPS View

## System Rule
- Shows IPS details of those legal entities whose IPS is setup. 
- Only data of Active legal entites are shown. Doesn't show data of Terminated or Deceased or Archived legal entities 
- Legal entity can have multiple IPS but this page shows only data of latest active IPS
- Along with IPS, Shows name of the Family team of the legal entity. Only Investment team details are shown
- Allows to filter records by Family, Legla entity and family team member

## UX Rule
- Records are grouped by Family
- Columns
    - Family name
    - Legal Entity name
    - Family team details
        - Advisor
        - I. Director
        - A. Advisor
        - I. Associate
    - IPS Data fields
        - IPS Date
        - IPS Type: Its value is either Percent or Dollar.
        - Liquidity
        - Stability
        - Diversification
        - Total Preservation
        - Growth: It's percentage column and Decimal values appear.
        - Growth Illiquid: It's percentage column and Decimal values appear.
        - When the `IPS Type` is `Percent`, `Liquidity, Stability, Diversification, Total Preservation` is a Percentage column and decimal values ​​appear.
        - When the `IPS Type` is `Dollar`, `Liquidity, Stability, Diversification, Total Preservation` is a Amount column and decimal values doesn't ​​appear. 
- Sort order
    - Records are sorted in order of entity type - individual, joint, partnership, foundation, estate, trust. Under each entity type, records are sorted alphabetically.
- On mouse hover, shows hover effect. On click of row, opens the IPS page of that legal entity.

### Filter
#### UX Rule
- On click of `Filter` icon, opens fiter dialog.
- Allows to select records using `Family`, `Entity` & `Clarius User`
- APPLY button is disabled until the any of the filter is apply. once the filter is applied, Apply button is enabled. On click of Apply, records will be shown based on filter.
- On click RESET, all filters will be reset to default state.

#### Family Filter
- Allows to select multiple families
- Shows all families available in application in alphabetical order
- Default value `All`.
- If more than one family is selected, it shows a count of selected families in this filter otherwise shows that family name. For e.g. when only two families are selected, dropdown shows `2 Families`.

#### Entity Filter
- By default its disable. It will be enable only when any Family is selected.
- Shows all entities of the selected family in alphabetical order. Allows to select multiple entities.
- Default value is `All`. 
- If more than one entity is selected, it shows a count of selected entities in this filter otherwise shows that entity name. For e.g. when only two entities are selected, dropdown shows `2 Entities`.

#### Clarius User Filter
- Allows to select multiple users
- Shows all active users in the alphabetical order
- Default value `All`.
- If more than one user is selected, it shows a count of selected Users in this filter otherwise shows that user name.
- When this filter is applied, it will show the IPS of those families where the selected user in the role of Advisor, I. Director, A. Advisor or I. Associate




 

