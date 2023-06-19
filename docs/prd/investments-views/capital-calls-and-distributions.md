# Capital Calls and Distribution


## System Rule
- Shows Capital Call amount or Cash Distribution or Value (Stock Distribution) of each Investor of the each fund for an activity. 
- Shows all activities (Draft, Approved, Completed) of the family where the login user is associated.
- Allows to filter records by: `Family`, `Investor`, `Fund`, `Activity` & `Issue Date`.
- Allows to export records by Excel

## UX Rule
- Shows activity in 3 tabs: `Open`, `Completed` & `All`.
    - Open tab shows amount of the Open activities
    - Completed tab shows amount of the Completed activities.
    - All tab shows an amount of Open and Completed activities.
- Shows proper message when no records available.
- Columns
    - Family
    - Investor
        - It is a link only it task is created. On click, opens the activity task view dialog in same page. 
        - It is not link of Draft activity.
    - Fund
        - It is a link. On click, opens the activity view dialog in same page.
        - Shows `Draft` tag for draft activity. 
    - Issue Date
    - Activity Type
        - Shows type of activity. 
    - Stock
        - For `Stock Distribution` type activity, if an activity has Investment company, shows that company name otherwise shows `-`.
    - Overdue
        - Applicable only for `Open` & `All` tab.
        - It won't be shown when no overdue amount available. It is applicable only when `Overdue` amount or shares are available in the Open tub. 
        - It shows the `Capital Call` amount or `Cash Distribution` amount or `Value` of all activity whose due date is passed.
    - This Week
        - Applicable only for `Open` & `All` tab.
        - It shows the `Capital Call` amount or `Cash Distribution` amount or `Stock Distribution` of all approved activity whose due date fall This Week and its due date is greater than or equal to current day. 
    - Next Week
        - Applicable only for `Open` & `All` tab.
        - It shows the `Capital Call` amount or `Cash Distribution` amount or `Stock Distribution` of all approved activity whose due date fall Next Week. 
    - Future
        - Applicable only for `Open` & `All` tab.
        - It shows the `Capital Call` amount or `Cash Distribution` amount or `Stock Distribution` of all approved activity whose due date is more than Next Week. 
    - Amount/Shares
        - Applicable only for `Completed` & `All` tab.
        - It shows the total amount of the `Capital Call` or `Cash Distribution` and total shares of `Stock Distribution`.
- Shows `Call Amount` for Capital Call or `Cash Distribution` for Cash Distribution or `Value` for the Stock Distribution.
- Sorting order: Primary sorting on Family, Secondary on Investor, Territory on Fund and Fourth on Issue date (Lowest date shown first)
- On hover, shows hover effect. 
- On click of row except `Investor` and `Fund` column, opens the activity tab of that fund in the other tab.

## UI Rule
[Mockup]



## Filter
### UX Rule
- Allows to records using `Family`, `Investor`, `Fund`, `Activity` & `Issue Date`
- Filters are applicable to all 3 tabs.
- Show the RESET button to the right side when the filter is applied. On click, filter will be reset to default state.

#### Family
- Multi-select filter of the family. Default value is `All`.
- Shows all associated families of the login user in alphabetical order.
- When other user is selected under `View as`, it shows all families of the application in alphabetical order.

#### Investor
- Shows all entities. It is a multi select filter. Default value is `All`.
- Entities are sorted on entity type in order of -Joint, Individual, Partnership, Trusts, Foundation, Estate. Each entity type is alphabetically sorted.

#### Fund
- It is a multi-select filter. Default value is `All`.
- It shows all LP funds in alphabetical order.

#### Activity
- It is a multi-select filter. Default value is `All`.
- Values are: `Capital Call`, `Distribution`, `Net` & `Net with Separate Fund`.

#### Issue Date
- Values are: `Today`, `Next Day`, `This Week`, `Last Week`, `Last 2 Weeks`, `Custom`
- Default value is `All`.
- This filter will show task based on the Issue date.
- On click of `Custom`, opens a dialog where user can enter any From and To date. Future date is not allowed.
    - Validation for `From` & `To` are done in following sequence
        1. First check if date is valid or not. If invalid shows error `Invalid Date`
        2. Date is future date or not. If future date entered, shows error `Future date is not allowed`
        3. `From` date is higher than `To` date or not. Otherwise shows error : `Date must be >= From date`



    
## View as other user

### System Rule
- A `View as` function will allow one user to view another's families activities. There will be no restrictions on which user can view which other user's queues.
- Any user (Admin or non-admin) will have `View as: All` option available using which he/she can see the activity of all users across the application.
- This functions is available in all 3 tabs.
- When user select another user in `View as`, page will be shown that selected user's families activities.

### UX Rule
- By default, login user will be selected. User can change as per needed.
- In the `View as` dropdown, `View as All` action is shown first and login user name is shown second and the other user names are shown in alphabetical order.
- Shows `You` word in bracket for Login user in dropdown.
- When user change the `View as`, system will reset the filter to its default value.




## Export Excel

### System Rule
- Export functionality isn't available, when the list page doesn’t have any records.
- Column will be same as [UI](#ux-rule). Excel have some addtional columns:
    - Due Date
        - If activity is not completed and its due date is overdue, shows due date in red color.
    - Distribution price per Share
    - Quantity
    - Notes
        - Shows the activity note
- Downloaded Excel file name: `capital-call-and-distribution.xlsx`
- Shows values of applied filter Criterias as a table in Excel as per following logic
    - Generated On
        - Shows date when the excel file is downloaded.
    - `Family`, `Investor`, `Fund`, `Activity` & `Issue Date`
        - When downloaded without any filter, Shows default value
        - When any mulltiple value is selected in the filter, then shows the count in the filter otherwise shows name.
            - Ex. If user export the excel file with 2 families, then shows 2 Families in the familiy filter criterias.

### UX Rule
- Excel icon is disabled when the list page doesn't have any task.
- On click, excel file will be downloaded in same page.

### UI Rule
- Sample file //



## Design Decision

**Why pagination is not implemented for this report?**
- Both type activity has 2 records. One is for Cash Distribution and second one is for Stock Distribution. So total 2 records will be shown for single activity. That's why pagination is not possible.

**Why doesn't the `Investor` filter show default disabled?**
- Sue want to show only those famiily, Investor and Fund which has activity. Due to implement this requirement, we have not add depedency on filter criteria. That's why Investor filter is not shown disabled. 

    
