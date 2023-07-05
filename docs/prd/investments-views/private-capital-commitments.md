# Private Capital Commitments


## System Rule
- It shows the Investors having Funds.
- By default, it shows only `My Families` Investor's Fund.
- Shows all types of Funds (Active or Archived)
- Allows filtering records by: `Family`, `Investor`, `Asset Manager`, `Fund`.
- Allows exporting records by Excel
- Sorting order:
    - Primary sorting on alphabetical order of Family, Secondary sorting in alphabetical order of Investor name, Tertiary sorting on alphabetical order of Asset Manager and Quaternary sorting on alphabetical order of Fund Name.

## UX Rule
- Shows proper messages when no records are available.
- Records are shown grouped by Family. Families are alphabetically sorted.
- Grouped is shown only when records are available. Otherwise the group is not shown.
- Columns
    - Investor
    - Asset Manager
    - Fund Name
        - If funs name is too long, shows ellipsis. 
- On hover, shows hover effect.
- On click, the user redirects to that LP's Investor tab in new page.

## UI Rule

[Mockup](https://drive.google.com/file/d/1iIDA6PDq6Fr9o5BvK8-buLO0XFsYjXm1/view?usp=drive_link)



## Filters

### UX Rule
- Allows records using `Family`, `Investor`, `Asset Manager`, `Fund`
- Show the `RESET` button to the right side when the filter is applied. On click, the filter will be reset to the default state.

### Family 
- Filter shows familiy in this format: [See this](https://drive.google.com/file/d/1dMsYKbbhZTMKkDdZ-Y92GPZehk7zJ2zl/view?usp=drive_link)
    - `My Families`, `All Families`, `Families`
    - By default, `My Families` option is selected.
    - `Families` section shows all families in alphabetical order. 
        - Users can select more than one family from the Families section. When 2 or 3 families are selected, filter shows `2 Families` or `3 Families` otherwise shows the family name.  
- By default the `Apply` button is disabled. It's enabled only when the user selects any family from the `Families` section.

### Investor
- It's a multi-select filter.
- Shows only those investors who are added in any Fund as Investor.
- Investors are sorted by entity type in order of -Joint, Individual, Partnership, Trusts, Foundation, and Estate. Each entity type is alphabetically sorted.
- When 2 or 3 Investors are selected, the filter shows `2 Investors` or `3 Investors` otherwise shows the Investor name.

### Asset Manager
- It's a multi-select filter. Shows asset manager in alphabetical order.
- Shows only those Asset Managers having Fund and it have Investors.
- When 2 or 3 Asset Managers are selected, the filter shows `2 Asset Manager` or `3 Asset Manager` otherwise shows the Asset Manager name.

### Fund 
- It's a multi-select filter. Shows Funds in alphabetical order.
- Shows only those funds having Investors.
- When 2 or 3 Asset Managers are selected, the filter shows `2 Asset Manager` or `3 Asset Manager` otherwise shows the Asset Manager name.



## Export

### System Rule
- Export functionality isn't available when the list page doesn’t have any records.
- Columns will be same as [UI](#system-rule). Excel has one extra `Family` column.
- Downloaded file name: `private-capital-commitements.xlsx`
- Shows values of applied filter criteria as a table in Excel as per the following logic
    - Generated On
    - `Family`, `Investor`, `Asset Manager`, `Fund`
        - When downloaded without any filter, Shows default value
        - When any multiple values are selected in the filter, then shows the count in the filter otherwise shows the name.
            - Ex. If the user exports the Excel file with 2 families, then shows 2 Families in the family filter criteria.

### UX Rule
- Excel icon isn't applicable when the list page doesn't have any task.
- On clicking the icon, the Excel file will be downloaded on the same page.

### UI Rule
[Sample file](https://docs.google.com/spreadsheets/d/1ZCaCRglxHylZ9ldR1yUSUA3TO7zBM7EiP77eOkGalUc/edit#gid=0)
