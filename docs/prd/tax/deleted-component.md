# Deleted Components

## Overview
- It is possible that any user has deleted any component which is carried/manually created. Currently when any component is deleted, we don’t have any track. It's completely deleted from the database. 
- To make component tracking robust, the system will not delete components completely from the database ever. System will just mark it as deleted in the database. System will show them in a separate tab. This will help us in debugging any case.

## System Rule
- Any user can delete components. 
- Deleted component will not be carried forward to next year.
- When tax return in deleted or when component tracking is disabled, all components including deleted components will be removed.
- Deleted components of the disregarded entity tax return won’t be pulled to its `Grantor to` or `SSN of`.
- Deleted component is not included in validation of Tax return filing. 
- Deleted components can not be restored again.
- When any component is deleted, the system will store the Deleted on (Date & Time) and Deleted by (user name)
- Deleted components can’t be edited.
- When tax return is deleted, system will delete the deleted components of that tax return.


## UX Rule
- Shows one new tab “Deleted” which shows deleted components.
- This tab appears only when the return has deleted components.
- New components are not added from the deleted tab. So `+` button is not shown.
- Columns
    - Name
    - Document
    - Status
    - Final Year
    - Auto
        - This column is applicable only when any components of this return is auto carryforwarded.
        - If component is auto created by system, shows `✔` otherwise `-`.
    - Permanent/Current Notes
        - If a note is too long, show it in multiline.
        - Shows `Permanent` and `Current` note in the single column.
        - Permanent notes is shown in the normal color. Current Notes is shown in gray color.
    - Deleted On/By
        - Format: `Jan 4, 2024 01:01:01 by Ravi Hirpara`
- On hover, shows hover effects.
- On click, opens the view dialog.
    - View dialog doesn't have `Edit` & `Delete` action
    - Shows `Deleted On/By` details
- Sorting order is same as [other tabs.](./tax-components.md#browse-tax-component)
- Deleted tab will not have Multi select action.
- Deleted components are not shown in the All tabs.
- Deleted components counts is not shown in the list page of tax return.
- Deleted components are not exported in Excel & PDF.
- Deleted components are not shown in the Tax Views or Open tax components.

## UI Rule

- 

