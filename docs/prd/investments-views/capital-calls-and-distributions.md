# Capital Calls and Distribution

## System Rule
- Shows Capital Call amount or Cash Distribution or Value (Stock Distribution) of each Investor of each fund for an activity. 
- Shows all activities (Draft, Approved, Completed) of the family where the login user is associated.
- Shows only those Investor having activity tasks or whose `Create Task` checkbox is ON.
- Allows filtering records by: `Family`, `Investor`, `Fund`, `Activity` & `Issue Date`.
- Allows exporting records by Excel
- For `Both` type Distribution, system shows 2 entries for one investor. One is for Cash Distribution and the second is for Stock Distribution.
- For `Net` type activity, It has a total of 2 amounts `Cash Distribution` & `Capital Call` but system shows only a single entry for investors based on Net amount.
- For `Net with Separate Fund`, there are 2 types of funds available for single investors in an activity but system shows only a single entry for the Investor based on the Net amount. 
- If the same investor has the same fund, it will show two separate entries in view for it. 

## UX Rule
- Shows activity in 3 tabs: `Open`, `Completed` & `All`.
    - Open tab shows the amount of the Open activities
    - Completed tab shows the amount of Completed activities.
    - All tab shows an amount of Open and Completed activities.
- Shows proper message when no records are available.
- Columns
    - Family
    - Investor
        - It is a link only if the task is created. On click, opens the activity task view dialog on the same page. 
        - It is not linked to the Draft activity.
        - If name is too long, show the name in multiline. (Never shows ellipsis)
    - Fund
        - It is a link. On click, opens the activity view dialog on the same page.
        - Shows `Draft` tag for draft activity. 
        - If name is too long, show name in multiline. (Never shows ellipsis)
    - Activity Type
        - Shows type of activity. 
    - Issue Date
    - Due Date
        - Shows the activity due date.
        - If task is not done, show Overdue due date in red color.
    - Stock
        - For `Stock Distribution` type activity, if an activity has an Investment company, shows that the company name otherwise shows `-`.
    - Overdue
        - Applicable only for the `Open` & `All` tabs.
        - It won't be shown when no overdue amount is available. It is applicable only when the `Overdue` amount or shares are available in the Open tab. 
        - It shows the `Capital Call` or `Cash Distribution` or `Value` or `Net` amount of all approved or draft activity whose due date is passed.
    - This Week
        - Applicable only for the `Open` & `All` tabs.
        - It shows the `Capital Call` or `Cash Distribution` or `Value` or `Net` amount of all approved or draft activity whose due date falls This Week and whose due date is greater than or equal to the current day. 
    - Next Week
        - Applicable only for the `Open` & `All` tabs.
        - It shows the `Capital Call` or `Cash Distribution` or `Value` or `Net` amount of all approved or draft activity whose due date falls Next Week. 
    - Future
        - Applicable only for the `Open` & `All` tabs.
        - It shows the `Capital Call` or `Cash Distribution` or `Value` or `Net` amount of all approved or draft activity whose due date is more than Next Week. 
    - Amount
        - Applicable only for the `Completed` & `All` tabs.
        - It shows the `Capital Call` or `Cash Distribution` or `Value` or `Net` amount of all Completed activity.
- Shows `Call Amount` for Capital Call or `Cash Distribution` for Cash Distribution or `Value` for the Stock Distribution or `Net` for the `Net` & `Net with Separate Fund` type.
- On hover, shows hover effect. 
- On click of row except the `Investor` and `Fund` column, opens the activity tab of that fund in the other tab.

### Sorting
- User can manually sort by column. [See more details](../ui-components/list-page.md#sorting). Sorting feature is applicable in the following column: `Family`, `Investor`, `Fund`, `Activity Type`, `Issue Date`, `Due Date`.
    - Default sorted column is the Issue Date in ascending order.
    - When the user applies sorting on the `Family` column, the `Investor` and `Fund` columns will also be auto-sorted in alphabetical order.
    - When the user applies sorting on the `Investor` column, the `Fund` columns will also be auto-sorted in alphabetical order.  



## UI Rule
[Open tab](https://drive.google.com/file/d/1UvBBP3-hnx7CrvJCsAR9jvEsWGik6rXG/view?usp=drive_link) & [Completed tab](https://drive.google.com/file/d/1D0IfgI3Lm6K95-89Ps6UtrA7vRvTw76W/view?usp=drive_link) & [All](https://drive.google.com/file/d/16diGRFo1x9K_Joh1qrqsnHgGTG9bDLdF/view?usp=drive_link)



## Filter
### UX Rule
- Allows records using `Family`, `Investor`, `Fund`, `Activity` & `Issue Date`
- Filters are applicable to all 3 tabs.
- Show the RESET button to the right side when the filter is applied. On click, the filter will be reset to the default state.

#### Family
- Multi-select filter of the family. The default value is `All`.
- Shows all associated families of the login user in alphabetical order.
- When another user is selected under `View as`, it shows all families of the application in alphabetical order.

#### Investor
- Shows all entities. It is a multi-select filter. The default value is `All`.
- Entities are sorted by entity type in order of -Joint, Individual, Partnership, Trusts, Foundation, and Estate. Each entity type is alphabetically sorted.

#### Fund
- It is a multi-select filter. The default value is `All`.
- It shows all LP funds in alphabetical order.

#### Activity
- It is a multi-select filter. The default value is `All`.
- Values are: `Capital Call`, `Distribution`, `Net` & `Net with Separate Fund`.

#### Issue Date
- Values are: `Today`, `Yesterday`, `This Week`, `Last Week`, `Last 2 Weeks`, `Custom`
- Default value is `All`.
- This filter will show the task based on the Issue date.
- On click of `Custom`, opens a dialog where the user can enter any From and To date. Future date is not allowed.
    - Validation for `From` & `To` is done in the following sequence
        1. First check if the date is valid or not. If invalid shows the error `Invalid Date`
        2. `From` date is higher than the `To` date or not. Otherwise shows the error: `Date must be >= From date`

### Due Date
- Values are: `All`, `Overdue`, `Today`, `Next Day`, `This Week`, `Next Week`, `This Month`, `Next Month`, `Custom`
- Default value is `All`.
- This filter will show the task based on the Due date.
- On click of `Custom`, opens a dialog where the user can enter any From and To date. Future date is not allowed.
    - Validation for `From` & `To` is done in the following sequence
        1. First check if the date is valid or not. If invalid shows the error `Invalid Date`
        2. `From` date is higher than the `To` date or not. Otherwise shows the error: `Date must be >= From date`
     
### Status
- Applicable only for the `open` and `All` tab.
- Values are: `All`, `Active` & `Draft`. Default value is `All`.
- Active means shows only active activity and `Draft` means shows only draft activity.

    
## View as other user

### System Rule
- A `View as` function will allow one user to view another's family's activities. There will be no restrictions on which users can view other users' queues.
- Any user (Admin or non-admin) will have a `View as: All` option available using which he/she can see the activity of all users across the application.
- This function is available in all 3 tabs.
- When the user selects another user in `View as`, the page will be shown the selected user's family's activities.

### UX Rule
- By default, the login user will be selected. Users can change as needed.
- In the `View as` dropdown, the `View as All` action is shown first and login user name is shown second and the other user names are shown in alphabetical order.
- Shows the `You` word in the bracket for the Login user in the dropdown.
- When the user changes the `View as`, the system will reset the filter to its default value.


## Export Excel

### System Rule
- Export functionality isn't available when the list page doesn’t have any records.
- Column will be same as [UI](#ux-rule). Excel has some additional columns:
    - Due Date
        - If the activity is not completed and its due date is overdue, show the due date in red color.
    - Distribution price per Share
    - Quantity
    - Notes
        - Shows the activity note
- Downloaded Excel file name: `capital-call-and-distribution.xlsx`
- Shows values of applied filter criteria as a table in Excel as per the following logic
    - Generated On
        - Shows the date when the Excel file is downloaded.
    - `Family`, `Investor`, `Fund`, `Activity` & `Issue Date`
        - When downloaded without any filter, Shows default value
        - When any multiple values are selected in the filter, then shows the count in the filter otherwise shows the name.
            - Ex. If the user export the Excel file with 2 families, then shows 2 Families in the family filter criteria.
- Sorting order of Excel
    - First sorting on Descending order of Issue date (most recent date on top), Second sorting on alphabetical order of Family, Third sorting on alphabetical order of Investor, Fourth sorting on alphabetical order of Fund.

### UX Rule
- Excel icon isn't applicable when the list page doesn't have any task.
- On click, the Excel file will be downloaded on the same page.

### UI Rule
- [Sample file](https://docs.google.com/spreadsheets/d/1fh0DHaRlFg3hapHxXDZq23J1rCNVvUW8/edit?usp=drive_link&ouid=108870014519956519924&rtpof=true&sd=true) //



## Design Decision

**Why pagination is not implemented for this report?**
- Both types of activity have 2 records. One is for Cash Distribution and the second one is for Stock Distribution. So a total of 2 records will be shown for a single activity. That's why pagination is not possible.

**Why doesn't the `Investor` filter show default disabled?**
- Sue wants to show only those families, Investor, and Fund which has activity. Due to implementing this requirement, we have not added a dependency on filter criteria. That's why the Investor filter is not shown disabled. 

**Why Excel have its own sorting order instead of UI sorting?**
- Because the user can manually sort for each column from Excel. That's why we don't show the sorting done by the user on the UI in Excel. 
    
