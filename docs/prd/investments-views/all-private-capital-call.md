# All Private Capital Calls and Distributions

## Overview


## System Rule
- Shows Capital Call amount or Cash Distribution or Stock Distribution of each Investor of the each fund for approved activity.
- Allows filter records by: `Family`, `Entity` & `Fund`.
- Allows to export activities by Excel


## UX Rule
- Shows activity in 2 tabs: `Open` & `Completed`
    - Open tab shows amount of open activities.
    - Completed tab shows amount of completed activities.
- Shows only those investors who has activity task.
- Records are grouped by `Capital Calls or Cash Distributions` & `Stock Distributions`.
    - `Capital Calls or Cash Distributions`: It shows an amount of Capital Call or Cash Distribution type activity.
    - `Stock Distribution`: It shows shares of Stock Distributin type activity.
- Group doesn't have any records won't be shown.
- Shows proper message when no records available in the both groups.
- Shows shrink icon with each group. On click of shrink icon, shrink that group and shows DOWN icon.
- Columns
    - Family
    - Entity
    - Fund
    - Stock
        - For `Stock Distribution` group, if an activity has Investment company, shows that company name otherwise shows `-`.
    - Overdue
        - Applicable only for `Open` tab.
        - It won't be shown when no overdue amount or shares available. 
        - It is applicable only when `Overdue` amount or shares are available in the Open tub. 
        - It shows the `Capital Call` amount or `Cash Distribution` amount or `Stock Distribution` of all approved activity whose due date is passed.
    - This Week
        - Applicable only for `Open` tab.
        - It shows the `Capital Call` amount or `Cash Distribution` amount or `Stock Distribution` of all approved activity whose due date fall This Week and its due date is greater than or equal to current day. 
    - Next Week
        - Applicable only for `Open` tab.
        - It shows the `Capital Call` amount or `Cash Distribution` amount or `Stock Distribution` of all approved activity whose due date fall Next Week. 
    - Future
        - Applicable only for `Open` tab.
        - It shows the `Capital Call` amount or `Cash Distribution` amount or `Stock Distribution` of all approved activity whose due date is more than Next Week. 
    - Amount/Shares
        - Applicable only for `Completed` tab.
        - It shows the total amount of the `Capital Call` or `Cash Distribution` and total shares of `Stock Distribution`.
- Nagative amount can be shown in bracket `()`.
- Sorting order: Primary sorting on `Family` and secondary sorting on `Entity` and territory sorting on `Fund`.
- On hover, shows hover effect. On click, opens that Funds with Activity tab in other page.
- For `Both` type distribution, system will create 2 entry for each investor. One is for Cash and Second one is for Stock.
- Shows Excel export icon where user can export the data. 


## UI Rule

Mockup of [Open tab](https://drive.google.com/file/d/1s12ikPl7A3n6q9fATewrY3fqMJCRdqwO/view?usp=share_link) & [Completed tab](https://drive.google.com/file/d/1EiN7S7RlzVyGCrMhkuX_SqrMxx4KapnI/view?usp=share_link)
- Placeholder message: `No Records Found`.


## Filter

### UX Rule
- Allows to filter records using `Family`, `Entity` & `Fund`
- Show the `RESET` button to the right side when the filter is applied. On click, filter will be reset to default state.

### Family
- It is a multi select filter. Default value is `All`. Shows all families in the alphabetical order.
- When multiple Families are selected in the filter, then shows the count in the filter otherwise shows name.

### Entity
- By default its disable. It will be enable only when any particular Family is selected. Shows all entities of the selected family. It is a multi select filter. Default value is `All`.
- Entities are sorted on entity type in order of - Joint, Individual, Partnership, Trusts, Foundation, Estate. Each entity type is alphabetically sorted.
- When multiple Entities are selected in the filter, then shows the count in the filter otherwise shows name.

### Fund
- It is a multi select filter. Default value is `All`. Shows all funds in alphabetical sorted.
- When multiple Funds are selected in the filter, then shows the count in the filter otherwise shows name.


## Excel Export

### System Rule
- Export functionality isn't available, when the list page doesn't have any records.
- System allows to user to export activities with filtered or without filtered
- Columns and Sorting order will be same as [UI](#ux-rule). Only diffrence is:
    - Shows activity type is new `Type` column. 
    - For `Both` type distributuion, system will shows `Cash Distribution` for Cash type and `Stock Distribution` for stock type.
    - Shows an empty cell instead of `No` when records have no values. 
- Downloaded Excel file Name:
    - Open: `open-all-private-capital-calls-and-distribution-views.xlsx`
    - Completed: `completed-all-private-capital-calls-and-distribution-views.xlsx`
- Shows values of applied Filter Criterias as a table in Excel as per following logic
    - Generated On
        - Shows date when the excel file is downloaded.
    - Family
        - When multiple families are selected in the filter, shows the count in the filter otherwise shows name.
        - Ex. If the user exports the file with 2 families, shows `2 families` in the filter criterias.
    - Entity
        - When multiple entities are selected in the filter, shows the count in the filter otherwise shows name.
        - Ex. If the user exports the file with 2 entities, shows `2 entities` in the filter criterias.
    - Fund
        - When multiple Funds are selected in the filter, shows the count in the filter otherwise shows name.
        - Ex. If the user exports the file with 2 funds, shows `2 Funds` in the filter criterias.
- Shows `Created on`, `Created by`, `Updated on` & `Updated by` of the fund as columns in the last.


### UX Rule
- Excel icon won't be shown when the list page doesn't have any records.
- On click excel file will be downloaded in the same page.


### UI Rule

Sample file of [Excel](https://docs.google.com/spreadsheets/d/1FVpoIZkxOvxuQgFvvJpeI734-l1jc9PJ/edit?usp=share_link&ouid=108870014519956519924&rtpof=true&sd=true)