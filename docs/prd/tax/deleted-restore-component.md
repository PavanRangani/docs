# Deleted/Restore Components

## Deleted Components

### Overview
- It is possible that any user has deleted any component which is carried/manually created. Currently when any component is deleted, we don’t have any track. It's completely deleted from the database. 
- To make component tracking robust, the system will not delete components completely from the database ever. System will just mark it as deleted in the database. System will show them in a separate tab. This will help us in debugging any case.

### System Rule
- Any user can delete components. 
- Deleted component will not be carried forward to next year.
- When tax return in deleted or when component tracking is disabled, all components including deleted components will be removed.
- Deleted components of the disregarded entity tax return won’t be pulled to its `Grantor to` or `SSN of`.
- Deleted component is not included in validation of Tax return filing. 
- When any component is deleted, the system will store the Deleted on (Date & Time) and Deleted by (user name)
- Deleted components can’t be edited.
- When tax return is deleted, system will delete the deleted components of that tax return.


### UX Rule
- Shows one new tab `Deleted` which shows deleted components.
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

### UI Rule
- [See mocks of deleted tab](https://drive.google.com/file/d/1u1D9MyTiPgonvW6VplEGLoAm7EwX9W0d/view?usp=sharing)
- [See mocks of deleted component view dialog](https://drive.google.com/file/d/1H7Q6mNN9k7UN9-iEuozENiLQJizxqpYg/view?usp=sharing)


## Restored Coomponents

### System Rule
- Allows to restore deleted components.
- Deleted components can't be restored for the Filed tax return.
- For `Disregarded entity` tax return, when the `SSN of` or `Grantor to` tax return (Individual or Joint) is Filed, system won't allows to restore disregarded entity's deleted components.

### UX Rule
- When any components is restored, shows confirmation dialog. On confirmation, component is restored and move to the other tabs as per component status. 
    - For e.g. If deleted component status is Pending and user restore that components, component will be moved from the deleted tab to Peding tab.
- System shows proper message when restore is not possible.

### UI Rule
- Message when restore is not possible: `Tax return is Filed so restore is not allowed. You can unfile this return and try again.` [See this](https://drive.google.com/file/d/1FdzVxu586vUq1pa9AL8Ai3Y1q3H-dc8w/view?usp=sharing)
- Restore conformation dialog: `Are you sure you want to restore this components - {component name in bold}` [see this](https://drive.google.com/file/d/1nt7_SLsdASOWxl3PQOrnZs-l1_uc-Czi/view?usp=sharing)


### Design Decision

#### When return is filed, why we have completley restricted Restore? Seems we can allow restore other than Pending component?
- When tax return is Filed, system have already carryforward its active components (Not deleted) to the next year return. If we allow to restore deleted component (other than pending status) of Filed tax return, that component will not auto carry forward to the next year. If we allows it, we have to handle an extra case and this is not even a real usecase. That's why we have not provided restore functionality for filed tax returns. 
 - For e.g. Suppose User has 4 active and 1 deleted component for 2023. 4 components are already carry forwarded to 2024 return. Now, when user restore the deleted components of 2023 return, system will need to carryforward that component to 2024 return. To avoide this complexity, we have not given this feature.


#### Why are we not allowing to restore pending component?
- If we allows to restore pending components for Filed tax return, it will create inconsistency that the filed tax return has a pending component. That's why we not allow it.

