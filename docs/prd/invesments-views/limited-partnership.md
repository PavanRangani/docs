# Limited Partnership

## Overview
Using this view Clarius team can see the details about how many LP has wire instructions entered and how many investors has SLOA setup.


## System Rule
- Shows current wire instructions of the Active or Archived Limited partnership fund. //TODO
- LP can have current or archived wire instructions but this page shows only data based on the current wire instruction.
- Allows to filter records by `Asset Manager`, `Wire Instruction` & `Standing Letters`.

## UX Rule
- Shows proper messages when no records are available.
- Shows wire instruction is 2 tabs: `Active` & `Archived`.
- Active LP will be shown in the Active tab and Archived LP will be shown in the Archived tab.
    - Note: Current we have not implement features of archive LP. So we should show placeholder message for Archived tab until we have implement.
- Shows counts of the wire instruction with each tab.
- Columns will be the same for both tabs.
- Columns
    - Asset Manager
    - Fund Name
        - If the fund name is too long, then show it in multi line. 
    - Drawdown
        - If drawdown value is true, shows ✔ otherwise shows -.
    - Wire Instructions
        - If the fund has current wire instruction, shows ✔ otherwise shows -.
    - Standing Letters
        - It shows the count of investors having SLOA completed. Like `Completed {count of completed SLOA} of {Total Investor count}`
        - If all Investor SLOA is marked as true, shows ✔ otherwise shows -.
        - If the fund has no current instruction available, shows -.
- Sorting order: Primary sorting on alphabetical order of Asset Manager and secondary sorting in alphabetical order of Fund name.
- On mouse hover, shows hover effect. On click of row, opens the wire instruction tab of the limited partnership fund in the same tab.
- Shows Excel export icon where user can export the data.

## UI Rule

[Mockup](https://drive.google.com/file/d/1xinbi-hoRjEXF8HxC8BL0G7wAx_Y5FTZ/view?usp=share_link)
- Placeholder message: `No Records Found`



## Filter

### UX Rule
- Allows to filter records using `Asset Manager`, `Wire Instruction` & `Standing Letters`.
- Show the RESET button to the right side when the filter is applied. On click, filter will be reset to default state.

### Asset Manager
- Multi-select filter of the Asset Manager.
- Default All asset managers are selected.
- When multiple Asset Managers are selected in the filter, then shows the count in the filter otherwise shows name.
    - Ex. If the user exports the file with 2 asset managers, it shows `2 Asset Managers` in the filter criterias.

### Wire Instruction
- Possible values are `All`, `Yes`, `No`.
- Default All options are selected.

### Standing Letters
- Possible values are: `All`, `Complete`, `Incomplete`
- Default All options are selected.



## Excel Export

### System Rule
- Export functionality isn't available, when the list page doesn't have any records.
- System allows to user to export LP with filtered or without filtered
- Columns and sorting will be the same as the [UI](#ux-rule). Only differences are: 
    - `Standing Letters` column: If SLOA is complete, show `Complete` otherwise show `Incomplete`.
    - `Excel` shows one extra column `Standing Letters details` after `Standing Letters`.
    - Shows an empty cell instead of `No` when records have no values.
- Downloaded Excel file name:
    - Active: `active-limited-partnership-views.xlsx`.
    - Archived: `archived-limited-partnership-views.xlsx`
- Shows values of applied Filter Criterias as a table in Excel as per following logic
    - Generated On
        - Shows date when the excel file is downloaded.
    - Asset Manager
        - When multiple Asset Managers are selected in the filter, then shows the count in the filter otherwise shows name.
        - Ex. If the user exports the file with 2 asset manager, shows `2 Asset Managers` in the filter criterias.
    - Wire Instructions, Standing Letters
        - When downloaded without any filter, Shows default value otherwise shows the selected filter value.
- Shows `Created on`, `Created by`, `Updated on` & `Updated by` of the fund as columns in the last.

### UX Rule
- Excel icon won't be shown when the list page doesn't have any records.
- On click excel file will be downloaded in the same page.

### UI Rule

Sample file of [Excel](https://docs.google.com/spreadsheets/d/10s9erEwxKMuLi0HtujpTmN-LOU62z-1h6oI4XgmSCic/edit#gid=0)



## Design Decision 

**Why don't we provide a PDF export option?**
- This Views is created only for the Clarius team. This report won't be sent by the Clarius team to any client. That's why we have only given the option of excel export.  

**Why do we show an empty cell instead of `No` when it has no value?**
- For easy scanning of how many yes records there are.



