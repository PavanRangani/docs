# Portfolio View

## System Rule
- Shows IPS details of those legal entities whose IPS is setup. 
- Only data of Active legal entities are shown. Doesn't show data of Terminated or Deceased or Archived legal entities 
- Legal entity can have multiple IPS but this page shows only data of latest Active or Draft IPS
- Along with IPS, Shows name of the Family team of the legal entity. Only Investment team details are shown
- Allows to filter records by Family, Legal entity, family team member, IPS status and 1-year old IPS.

## UX Rule
- Records are grouped by Family
- Columns
    - Entity
    - Entity ID
        - Shows entity id
    - Entity's household team details
        - Advisor
        - I. Director
        - A. Advisor
        - I. Associate
    - IPS Data fields
        - Draft
            - If the IPS is DRAFT, shows `✔` icon otherwise shows `-`.
        - IPS Date
            - Shows current or draft IPS date.
            - If IPS date is overdue, shows it in red.
        - Portfolio Status
            - Shows portfolio status of the entity.
            - Pull portfolio status from the Investment Workspace page.
            - If Portfolio is not setup yet, shows `-`.
        - Type 
            - Its value is either `Percent` or `Dollar`.
        - Liquidity
            - Shows `Strategic Targets` of the Liquidity
        - Bands - Liquidity Range
            - Lower Bound
                - Shows min value of the range of the Liquidity Preservation assets
                - For percent type, shows % value.
            - Upper Bound
                - Shows max value of the range of the Liquidity Preservation assets
                - For percent type, shows % value.
        - Stability
            - Shows `Strategic Targets` of the Stability
        - Bands - Stability Range
            - Lower Bound
                - Shows min value of the range of the Stability Preservation assets
                - For percent type, shows % value.
            - Upper Bound
                - Shows max value of the range of the Stability Preservation assets
                - For percent type, shows % value.
        - Diversification
            - Shows `Strategic Targets` of the Stability
        - Bands - Diversification Range
            - Lower Bound
                - Shows min value of the range of the Diversification Preservation assets
                - For percent type, shows % value.
            - Upper Bound
                - Shows max value of the range of the Diversification Preservation assets
                - For percent type, shows % value.
        - Total Preservation
            - Shows `Strategic Targets` of the `Total Preservation` Preservation assets
        - Bands - Preservation Range
            - Lower Bound
                - Shows min value of the range of the `Total Preservation` Preservation assets
                - For percent type, shows % value.
            - Upper Bound
                - Shows max value of the range of the `Total Preservation` Preservation assets
                - For percent type, shows % value.
        - Growth: It's percentage column and Decimal values appear.
        - Growth Illiquid: It's percentage column and Decimal values appear.
            - Shows `Strategic Targets` of the Growth Illiquid
        - Bands - Appreciation Range
            - Lower Bound
                - Shows min value of the range of the `Total Appreciation` Appreciation assets
                - For percent type, shows % value.
            - Upper Bound
                - Shows max value of the range of the `Total Appreciation` Appreciation assets
                - For percent type, shows % value.
        - When the `IPS Type` is `Percent`, shows `%` in all IPS related column and decimal values ​​appear.
        - When the `IPS Type` is `Dollar`, shows `Amount` in all IPS related column and decimal values doesn't ​​appear. 
        - If the `IPS date` is more than 1-year old from the current date, IPS date shown in the red colour.
- Range is applicable for IPS whose date is greater than or equal to `01/01/2023`. So another entity which has no date range in the Account value table, show `-` in the Lower and Upper bound column for that entity.
- Sort order
    - Records are sorted under each family in order of entity type - individual, joint, partnership, foundation, estate, trust. Under each entity type, records are sorted alphabetically.
- On mouse hover, shows hover effect. On click of row, opens the IPS page of that legal entity in the same tab.

## Filter
### UX Rule
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
- Default current login user is selected.
- If more than one user is selected, it shows a count of selected Users in this filter otherwise shows that user name.
- When this filter is applied, it will show the IPS of those entities where the selected user in the role of Advisor, I. Director, A. Advisor or I. Associate.

#### IPS Status
- Possible values are: `All`, `Final IPS` & `Draft IPS`. Default value is `All`.

#### Show only 1-year old IPS
Overview: IPS has to be renewed from time to time. If user wants to see IPS whose `IPS date` is more than 1 year old and not renewed yet, user can see such IPS using this filter.
- It is a checkbox. Default it is unchecked.
- If user wants to see the overdue IPS whose date is more than 1-year old from current date, she/he can view by checking this checkbox. For e.g. Suppose the current date is `Feb 01, 2022`. So the system shows all IPS whose IPS date is less than or equal to `Jan 31, 2021`.


## Excel Export

### System Rule
- Export functionality isn't available, when the list page doesn’t have any IPS.
- System allows users to export IPS with filtered or without filtered
- Columns will be same as the [UI](#ux-rule) other diffrences are
    - Draft : If IPS is draft IPS, shows Yes otherwise shows blank.
    - When any column has no data, shows taht column as blank.
- Sorting order will be same as the [UI](#ux-rule)
- Downloaded Excel file name: `portfolio-views.xlsx`
- Shows values of applied Filter Criterias as a table in Excel as per following logic
    - Generated On
        - Shows date when the excel file is downloaded.
    - Family, Entity, Clarius User, IPS Status & Show only 1-year old IPS 
        - When downloaded without any filter, Shows default value
        - When any multiple family or entity or clarius user is selected in the filter, then shows the count in the filter otherwise shows name.
            - Ex. If user export the excel file with 2 families, then shows `2 Families` in the familiy filter criterias.
        - If the value of the `Show 1-year old IPS only` checkbox is true, the word `Yes` appears in the filter criteria.


### UX Rule
- Excel icon is appeared when the list page doesn't have any IPS.
- On click, excel file will be downloaded in same page.


### UI Rule
Sample file of [Excel](https://docs.google.com/spreadsheets/d/11LQVz-ovmWtFFxpj4pro6ZGRo8mVdXbhs00-4_qIQhg/edit#gid=0) 




 

