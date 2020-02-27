# IPS

## Overview

- Its a short form of Investment Policy statement. Its a overview of the investment policy finalized for that legal entity
- Possible actions: `SAVE AS DRAFT`, `Edit`, `Amend`,  `Delete`, `Download PDF`

## Entity

### `IPS` Entity

| Field Name                                  | Description                                                  |
| ------------------------------------------- | ------------------------------------------------------------ |
| Date                                        |                                                              |
| Introduction and Purpose                    | Rich text input                                              |
| Account Value Table                         | Shows `Entity` wise total value.<br />Entity can have multiple `Account`<br />See below [Account entity](#account-entity) for detail of `Account`<br />Each `Account` can have value. Total value of Entity is total of  each `Account` under that `Entity`<br /> Does not allow decimal in Value. |
| Investment Objectives                       | Rich text input                                              |
| Management and Oversight                    | Rich text input                                              |
| Portfolio Constraints and Considerations    | Rich text input                                              |
| Asset Allocation                            | Rich text input                                              |
| Asset Allocation Table                      | See [Asset allocation table fields](#asset-allocation-table-fields) |
| Investment Principles and Asset Class Roles | Rich text input                                              |
| Investment Policy Review and Amendment      | Rich text input                                              |
| Notes                                       | Multiline text input                                         |

### `Account` entity

| Field name                      | Description                                 |
| ------------------------------- | ------------------------------------------- |
| Entity                          | Name of the Entity                          |
| Account name                    | Free form Text field                        |
| Account Open Date               | Date input                                  |
| Account Close Date              | Date input                                  |
| Custodian                       | Free form Text field                        |
| Last 4 Digits of Account Number | Number input. Allows to enter only 4 digits |



### Asset allocation table fields

- Based on the created date of IPS, shows field names of the Assets allocation table.
- If created date is set after 01/01/2020, table shows `New field names`. Otherwise shows `Old field names`
- Amendment is different than creation.  Amendment date is not used to define field names.
  - For e.g. Suppose any IPS is created on 08/15/2019 and its amendment is created on 07/14/2020. It will still show Old field names in table.



#### Old field names

| **Preservation Assets** |                                                              |
| ----------------------- | ------------------------------------------------------------ |
|                         | Cash: liquid cash reserves                                   |
|                         | Stability: short-term bonds                                  |
|                         | Low Growth: high-grade bonds, other debt investments, lower-volatility strategies |
| **Appreciation Assets** |                                                              |
|                         | Growth: global public equities                               |
|                         | Private Capital: private capital partnerships or direct private investments |

#### New field names

| **Preservation Assets** |                                                              |
| ----------------------- | ------------------------------------------------------------ |
|                         | Liquidity: cash reserves                                     |
|                         | Stability: short-term bonds                                  |
|                         | Diversification: high-grade bonds, other debt investments, lower-volatility strategies |
| **Appreciation Assets** |                                                              |
|                         | Growth: global public equities                               |
|                         | Growth Illiquid: private capital partnerships or direct private investments |

- Table can have two input mode: `Dollar Target` & `Percent Target`
  - When table input mode is `Dollar Target`, `Total Appreciation` percentage in `Strategic Targets` column should be 100. Otherwise shows error: `Total percentage must be 100`
  - When table input mode is `Percent Target`, `Total Portfolio` percentage in `Strategic Targets` column should be 100

## ADD

- When first time IPS is created, system make entry in history.

## SAVE AS DRAFT

- While creating new IPS, Amend or Edit IPS, it can be  saved as draft
- SAVE AS DRAFT is only possible when IPS not in active state (Here active state means not in draft)
- Should be used when your work is partial but you want to save your work

## Edit

- Current IPS or IPS from history can be edited anytime.
- When you want to do changes in current IPS without making entry in history, you should `Edit current`

## Amend

- When you want to update IPS and want to maintain its history then `Amend` action should be used
- System maintains history of each amendment 

## Delete

- Any record in IPS history can be deleted.

## Download PDF

- Allows to Download PDF file for any IPS in history.
- Downloaded File name: `{legal-entity-name}-ips-report.pdf`

## Restore unsaved changes

- System keeps track of changes which are not saved.
- When user leave the IPS page (Add/edit/Amend)  without CANCEL action, System will store unsaved changes in local storage. 
- When user performs any action like Add/Edit/Amend, System will check if there is any unsaved changes available in local storage or not. If any unsaved changes found in local storage, System asks user about restore unsaved changes. On confirmation of user, System restores unsaved changes.

## UX Requirement

See [Mockups](https://drive.google.com/drive/u/0/folders/1xfiUGFYjddQQoArdyN_dbkRwdqXNVIcI)



- 

### IPS Summary

- Shows data of the latest active IPS (Here active means IPS which is not in draft)

### IPS

- Shows latest IPS (Doesn't matter its Draft or not)

### IPS History

- Shows record in descending order of date

### Rich text editor

- Default font is Roboto and font size is 13px. Does not allow user to change font or font size



## UI Resources

### Restore Unsaved Changes confirmaion dialog

Title: Restore Unsaved Changes?

Message: Do you want to restore your unsaved changes?

Button: No, Yes (`No` button will be outlined & `Yes` button will be filled)



