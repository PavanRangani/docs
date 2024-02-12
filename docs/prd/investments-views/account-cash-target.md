# Account Cash Targets

## System Rule
- Shows all funding accounts of the entities
- This view shows data of all the funding accounts in the system along with workspace data of that funding account - like Cash Target, Cash Minimum & Cash Maximum.
- Only data of Active legal entities are shown. Doesn't show funding accounts of the Terminated or Deceased or Archived legal entities.
- To improve the load time of this view, system will load only some data. Other datas are loaded when user scroll down the view
- Allows to filter records by `Family`, `Legal entity` & `Workspace`

## UX Rule
- Records are grouped by Family and families are alphabetical sorted.
- Columns
    - Entity
    - Entity ID
    - Draft Workspace?
        - Shows `✔` icon for draft workspace.
        - Shows `-` for the published workspace.
    - Funding Account Name
        - If funding account name is too long, shows name in multiline.
    - Funding Account Number
        - Shows account number in proper format. For e.g. `XXXX-XXXX`
    - Cash Target
    - Cash Minimum
    - Cash Maximum
- Records are sorted under each family in order of entity type - individual, joint, partnership, foundation, estate, trust. Under each entity type, records are sorted alphabetically.
- When any columns has no data available, shows `-`.
- Shows proper message when list page has no data available.
- On hover, shows hover effect.
- User can't add/edit `Cash Target`, `Cash Minumum` & `Cash Maximum` from this view.
- On click of row, opens that entity's workspace page in other page.
- At a time only the top 50 entities are shown. If the user wants to see the next 50 records, the user will scroll the page and system shows the the next 50 records.
    - When user scrolls the page, system shows loaded at bottom until next 50 records is shown.
- When user opens the page for the first time, shows one loader under the table until data is not loaded.

## UI Rule
- [List page](https://drive.google.com/file/d/1kvT7l52WCHzvRJguhi34qkqUR1y6dXi8/view?usp=sharing)
- Placeholder message: `No Records Found`


## Filter
### UX Rule
- Allows to filter records using `Family`, `Entity` & `Workspace`
- When any filter is applied, system shows RESET button to the right side.
- On click RESET, all filters will be reset to default state.
- When user applied fiter or RESET the filter, system shows loader after the excel icon until data is not loaded and system shows current data until new data is loaded.

#### Family Filter
- Allows to select multiple families
- Shows all families in alphabetical order
- Default value `All`.
- If more than one family is selected, it shows a count of selected families in this filter otherwise shows that family name. For e.g. when only two families are selected, dropdown shows `2 Families`.

#### Entity Filter
- By default its disable. It will be enabled only when any Family is selected.
- Shows all entities of the selected family in alphabetical order. Allows to select multiple entities.
- Default value is `All`. 
- If more than one entity is selected, it shows a count of selected entities in this filter otherwise shows that entity name. For e.g. when only two entities are selected, dropdown shows `2 Entities`.

#### Workspace
- It dropdown of `All`, `Draft` & `Publish`
- Default `All` value is selected.  


## Excel Export

### System Rule
- Export functionality isn't available, when the list page doesn’t have any funding accounts.
- System allows users to export Funding Accounts with filtered or without filtered
- Columns will be same as the [UI](#ux-rule)
- Sorting order will be same as the [UI](#ux-rule)
- Downloaded Excel file name: `account-cash-target.xlsx`
- Shows values of applied Filter Criterias as a table in Excel as per following logic
    - Generated On
        - Shows date when the excel file is downloaded.
    - Family & Entity 
        - When downloaded without any filter, Shows default value.
        - When any multiple family or entity is selected in the filter, then shows the count in the filter otherwise shows name.
            - Ex. If user export the excel file with 2 families, then shows `2 Families` in the familiy filter criterias.
    - Workspace

### UX Rule
- Excel icon is not appeared when the list page doesn't have any funding accounts.
- On click, excel file will be downloaded in same page.

### UI Rule
Sample file of [Excel](https://docs.google.com/spreadsheets/d/1h50chGuzvYfFxAg16M16QlncZd3hFY-piqufxD44GK0/edit?usp=sharing)
