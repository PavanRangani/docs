# Workspace

## Overview
This page shows various data on selected entity's investment-related preferences and details. Some details are pulled from the Cashflow and IPS tabs. 

## Entity Details

### Overview & Preferences
- It has 5 details- `Portfolio Status`, `Investor Accreditation`, `Tax loss harvesting sensitivity`, `Capital gains sensitivity`, `ESG Preference`
- Each detail has Value and Notes.
- Values of various details are as following
    - Portfolio Status 
        - Possible values are: `Active`, `Implementation`, `Review`, and `Limited`. 
        - Default it is empty.
    - Accredited Investor
        - Possible values are: `Yes` and `No`.
        - Default it is empty.
    - Qualified Client
        - Possible values are: `Yes` and `No`.
        - Default it is empty.
    - Qualified Purchaser
        - Possible values are: `Yes` and `No`.
        - Default it is empty.
    - Tax loss harvesting sensitivity
        - Possible values are: `High`, `Medium`, and `Low`.
        - Default it is empty.
    - Capital gains sensitivity
        - Possible values are: `High`, `Medium`, and `Low`.
        - Default it is empty.
    - ESG Preference
        - Possible values are: `Yes`, `No`.
        - Default it is empty.
    - K1 Sensitivity
        - Possible values are: `No K1’s`, `K1’s OK, but not late` & `Late K1’s are OK`
        - Default it is empty.
- For each above fields, the Default Value is blank
- Notes: It is a free-form text input field. 

### Portfolio Notes
- It is a Rich text input editor. Its Optional. Allows to add more than one notes.

### Suitability
- It has 6 buckets - `Stability`, `Diversification`, `Growth`, `Growth Illiquid`, `Private Capital Target`, `Private Capital Annual Pacing`
- Each bucket has single or multiple strategy. 
    - Stability has `Strategic Income Funds` strategy.
    - Diversification has `Diversifying Return` strategy.
    - Growth has `Fundamental Strategies`, `Focused Strategies`, `Satellite Strategies` strategies.
    - Growth Illiquid has `Private Equity`, `Venture Capital`, `Real Estate`, `Co-Investments`strategies.
- Each strategy has `Interest` and `Notes`.
    - Notes is a free-form text input field.
    - Possible value of Interest is `Yes` or `No`. Default value is `No`
    - When the Interest of the `Growth Illiquid` strategies is Yes, it shows 2 new buckets - `Private Capital Target`, `Private Capital Annual Pacing`.
        - Value of `Private Capital Target` is pulled from IPS
        - `Private Capital Annual Pacing` is an amount input field.

### Discretion details
- It has 6 types - `Raising cash`, `Rebalance strategic allocation`, `Rebalance within buckets`, `Hiring / Terminating managers`, `Tax loss harvesting`, and `Gain realization`.
- Each type has `Status` and `Notes`
    - Possible value of Status is `Yes` or `No`. Deault value is `No`.
    - Notes is a free-form text input field.

### Cashflow
- For each funding account of this legal entity, allows to enter `Cash Target`, `Cash Minimum` & `Cash Maximum`. It is amount input field.

### Portfolio Construction
- It has total 4 details - `Stability Model`, `Core Growth Allocation`, `Core Passive Equity`, `Core Active Equity (Global)`
- `Stability Model`, `Core Growth Allocation` both have Value and Notes.
    - Stability Model has `Tax Sensitive - Default`,`Tax Sensitive - Small`, `Tax Sensitive - ESG`, `Tax Sensitive - Low Tax`, `100% Municipal Bonds`, `Taxable Bonds - ESG`,`Tax Sensitive - Conservative`, `N/A` values.
    - Notes is a free-form text input field.
- `Core Passive Equity`, `Core Active Equity (Global)` 
    - Both are percentage input fields. Decimal value is not allowed.


## Add/Edit

### System Rule
- No fields are mandatory on this page.
- For `Private Capital Target` field of the `Suitability`, system will pull the amount of the `Strategic Target` of `Growth Illiquid` from the current IPS.

### UX Rule
- There isn't any concept of Add. Everything is edited. For each entity all these details are blank. Users can edit and fill in the details 

### UI Rule
- Mockups
    - [Edit dialog of Overview & Preferences](https://drive.google.com/file/d/1KgFQ1STnWBYQ_Tofq7j6-AIhYBrUT-SO/view?usp=sharing)
    - [Edit dialog of Suitability](https://drive.google.com/file/d/1lWlzqu-ftQoI9C2BwsjhCSKq6JAfAc88/view?usp=sharing)
    - [Edit dialog of Discretion](https://drive.google.com/file/d/13yKDDn_5au6eH9WlYZI1TWnHByC9onmO/view?usp=sharing)
    - [Edit dialog of Cash Flow of funding account](https://drive.google.com/file/d/1Bltu8bg8_4UFaesthpY93aVKVIx-PN7v/view?usp=sharing)
    - [Edit dialog of Portfolio Construction](https://drive.google.com/file/d/1ZolmFLe1Jwenk1B5c0SUM_0LkGl_RSL2/view?usp=sharing)


## Delete
- No concept of Delete. 
- User can reset any details using edit functionality only. 


## Browse Workspace page
## System Rule
- Data of two sections are pulled from other areas of the application - Cashflow and Portfolio
    - For `Cash Flow`, 
        - System will pull the entity's funding banking account (Active + Dispose) to the `Funding Accounts` section.
            - For e.g If the user adds a funding account in the banking module for the entity, the system will pull that account into the `Funding Accounts` section. 
        - System will pull the latest data of the `Pro Forma/Actual` from the [Cash Flow](../cash-flow/cash-flow.md#annual-cash-budget--actual-tracking) of the entity. System will pull only the last 5 years' records. 
        - Cash Sources & Uses value for each funding account is pulled from the Cash Flow tab. It's pulled from the Grand Total of Private Capital section. 
    - Under `Portfolio Construction`, system pulls the `Portfolio Constraints and Considerations` of the current IPS.
- `Portfolio Notes`
    - User can enter more than one notes. Each note will have `Created by` & `Updated by` time and user.

### UX Rule
- Shows all the details grouped by various section
- Shows pencil icon with each section always.
- Shows legal entity name in the Overview & Preferences section. [See this](https://drive.google.com/file/d/19neVS67d5fNA5EnxIgIp-gvE5Do3GAqo/view?usp=sharing) 
- For `Overview & Preferences`, shows tooltip on fields `Accredited Investor`, `Qualified Client` & `Qualified Purchaser` using [Textual Description feature](../admin-console/textual-descrption.md#browse-texual-description) See [Mockup of tooltip](https://drive.google.com/file/d/1cnON9qQIM9lar3QQM7WD_Fc922RMXeHU/view?usp=sharing)
- Shows proper message when no notes are available in the `Discretion Notes` & `Portfolio Notes`. 
- For `Portfolio Constraints and Considerations`, show the proper message when it has no data or no IPS available.
- Common rules for `Notes` column everywhere on this page
    - If Notes is too long, show it in multiline.
    - Shows `-` when no notes are available.

#### Cash Flow
- Funding Account(s)
    - Columns
        - Funding Account Name and Number
            - Shows all own funding account (Active or Dispose) of the entity. (Pulled account won't be shown)
            - Shows the Account Number in bracket. Like `Joint Main Account | Scwab (1670)`. (Here `1670` is account number)
        - Cash Target
            - Amount column. Decimal not allowed.
        - Cash Minimum
            - Amount column. Decimal not allowed.
        - Cash Maximum
            - Amount column. Decimal not allowed.
    - Sorting order: Alphabetical order on Funding Account nickname.
    - On hover of the records, show the pencil icon to the right side. On clicks, opens the edit dialog. 
    - Shows proper message when no funding accounts are available. 
- Cash sources & Uses
    - Columns
        - Funding Account Name and Number
                - Shows all own funding account (Active or Dispose) of the entity. (Pulled account won't be shown)
                - Shows the Account Number in bracket. Like `Joint Main Account | Scwab (1670)`. (Here `1670` is account number)
        - Overdue
            - It is applicable only when the Overdue amount is available.
            - It is pulled from the `Cashflow` tab. It shows total amount of `Overdue` column of the `Private Capital` section.
        - This Week
            - It is pulled from the `Cashflow` tab. It shows total amount of `This Week` column of the `Private Capital` section.
        - Next Week
            - It is pulled from the `Cashflow` tab. It shows total amount of `Next Week` column of the `Private Capital` section.
        - Future
            - It is pulled from the `Cashflow` tab. It shows total amount of `Future` column of the `Private Capital` section.
        - Total
            - It is pulled from the `Cashflow` tab. It shows grand total amount of `Total` column of the `Private Capital` section.
    - Sorting order: Alphabetical order on Funding Account nickname.
    - Shows proper message when no funding accounts are available.
- Annual Cash Flows
    - User can't edit the `Pro Forma/actual` amount.
    - Shows one icon with header. On click, redirects user to the Cash Flow tab.
    - Shows only `Within the Portfolio` section with `Total Sources`, `Total Uses` & `Net Cash Flow from the Portfolio` details.
    - Nagative numbers are shown in red color and Positive numbers are shown in black color.
    - Shows the background of whole `Pro Forma` column in light blue color. 

#### Portfolio Notes
- Shows portfolio notes to the right side of the page.
- Shows proper message when no notes available.
- It has one `+` button. On click, opens the notes in the editor mode and shows `Cancel` button. On click of `Cancel`, notes will be removed.
- At a time only a single note can be added. So the `+` button is disabled when one note is already open in edit mode. 
- On hover of Saved notes, shows hover effect and `Edit` & `Delete` action to the right side. 
    - On click of Delete, shows a delete confirmation dialog. On confirmation, notes will be removed.
- Edit Note
    - When user opens existing note in edit mode, shows the `Cancel` button to close the edit mode.
    - When user changes the notes, shows `SAVE` & `DISACRD` button. On click of SAVE, saved that notes and on click of DISCARD, remove that notes with data.
- Sorting order: Latest notes always shown at top.
- If notes is not saved and user refreshes the page or change the tab, notes won't be saved. It will removed. (We have not managed unsaved notes)


### UI Rule
- [Mockups for empty view](https://drive.google.com/file/d/19neVS67d5fNA5EnxIgIp-gvE5Do3GAqo/view?usp=sharing)
- [Mockup for view with data](https://drive.google.com/file/d/1cnON9qQIM9lar3QQM7WD_Fc922RMXeHU/view?usp=sharing)
- Placeholder text
    - For `Cash Flow`: `No Funding Account(s) Available`
    - For `Portfolio Constraints and Considerations (Pulled from IPS)`: `Not Available`
    - `Portfolio Notes`: `No Notes Available`



## PDF Export

### System Rule
- Downloaded PDF file name: `workspace-{legal entity name}.pdf`
- Columns and sorting order will be the same as [UI](#ux-rule-1).

### UX Rule
- Shows `Export As PDF` button to the top right side of the tabs.
- On click, PDF file will be downloaded on the same page.

### UI Rule
[Sample file](https://drive.google.com/file/d/1GhAmsR0Dd1-ticWLQsmY40qeV7ktuEYZ/view?usp=sharing)



## Tab Enable/Disable logic
- Workspace tab will be always shown enabled. Reason for this is to avoid complex cases of enable/disable logic. 
- See following cases:
    - If a user changes any value in any section, system will enable this tab
    - If any user adds/deletes a funding account in the banking section, system will enable/disable this tab.
    - If user adds/deletes/amends IPS details (Portfolio details), system will enable/disable this tab.
