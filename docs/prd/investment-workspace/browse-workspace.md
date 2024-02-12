# Browse Workspace

- Workspace is shown in 2 tabs: `Current` & `History`
- `Current` tab shows the current version and `History` tab shows the table with historical versions.

## Browse Current Version

### System Rule
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
- Shows Draft tag for the Draft workspace.
- Shows pencil icon with each section always.
- Shows legal entity name in the Overview & Preferences section. [See this](https://drive.google.com/file/d/19neVS67d5fNA5EnxIgIp-gvE5Do3GAqo/view?usp=sharing) 
- For `Overview & Preferences`, shows tooltip on fields `Accredited Investor`, `Qualified Client` & `Qualified Purchaser` using [Textual Description feature](../admin-console/textual-descrption.md#browse-texual-description) See [Mockup of tooltip](https://drive.google.com/file/d/1cnON9qQIM9lar3QQM7WD_Fc922RMXeHU/view?usp=sharing)
- Shows proper message when no notes are available in the `Discretion Notes` & `Portfolio Notes`. 
- For `Portfolio Constraints and Considerations`, show the proper message when it has no data or no IPS available.
- Common rules for `Notes` column everywhere on this page
    - If Notes is too long, show it in multiline.
    - Shows `-` when no notes are available.
- Current workspace version has one vertmore action.
    - Vertmore actions are `Amend Workspace`, `Publish Workspace` & `Delete Current`.
        - `Amend Workspace` is applicable only for publish workspace. [See amend action](./manage.md#amend)
        - `Publish Workspace` is applicable only for draft workspace. [See publish action](./manage.md#publish)
        - `Delete Current` action is applicable only when historical version is available. [See amend action](./manage.md#delete)


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


### UI Rule
- [Mockup for view with data](https://drive.google.com/file/d/1cnON9qQIM9lar3QQM7WD_Fc922RMXeHU/view?usp=sharing)
- [Mock with draft tag](https://drive.google.com/file/d/1an1KXBT-WuKywCSpN7jEb7NPUq5Q5TzE/view?usp=sharing)
- Placeholder text
    - For `Cash Flow`: `No Funding Account(s) Available`
    - For `Portfolio Constraints and Considerations (Pulled from IPS)`: `Not Available`


## Browse Historical Versions

### UX Rule
- Shows only histotical versions of workspace.
- Shows proper message when no historical version available.
- Columns are
    - Date
        - Shows amendment date
    - Notes
        - Shows amendmend notes
        - If notes is too long, shows notes in multiline.
        - Shows `-` when no notes available.
- Sorting order: Versions are sorted on descending order of Date. (Latest hostiracal version is shown at top)
- On hover, shows hover effect and vertmore action to the right side.
    - Vertmore action: `Download PDF`
- On click of any version, opens the view workspace dialog.

### UI Rule
- Placeholder text: `No Records Found`
- [See historical table with data](https://drive.google.com/file/d/1x56o1NUxb1mgjLYx6zIz1N9m3Ii6PoyT/view?usp=sharing)


## Browse Single Historical Version

### System Rule
- Can't be edited or deleted historical version.

### UX Rule
- Shows historical workspace version in the view dialog.
- Other details are same as the [currnet version](#browse-current-version). There is some other diffrences
    - Shows `Amendment Details` at top. 
    - When `Amendment Note` is too long, shows it in multiline.
    - When `Amendment Note` is not available, shows `-`.
- System doesn't store the details of the following section when workspace is amended because those data are pulled from other parts of the application. So for these sections, shows proper message
    - `Cash Sources & Uses`, `Annual Cash Flows`, `Portfolio Constraints and Considerations (Pulled from IPS)` & `Private Capital Target` in Suitability.
- Sorting order of `Cash sources & Uses` & `Funding Account(s)` is same as current version. [See this](#browse-current-version)
- In `Funding Account(s)` section of Cash Flow
    - It shows only those Funding accounts which has data entered while amend the Workspace.
    - If no any funding accounts available, shows proper message. 

### UI Rule
- Placeholder text for Funding Accounts: `No Records Found`
- [Browse single workspace](https://drive.google.com/file/d/1c5CBPICtIl0w1Pp7QquVJn9uG41Zle0n/view?usp=sharing)
- Proper message for
    - `Cash Sources & Uses`: `This is Historical version so this data is not shown here from the Cashflow tab`
    - `Annual Cash Flows`: `This is Historical version so this data is not shown here from the Cashflow tab`
    - `Portfolio Constraints and Considerations (Pulled from IPS)`: `This is Historical version so this data is not shown here from the Current IPS` 
    - `Private Capital Target` in Suitability: `This is Historical version so this data is not shown here from the Current IPS`
