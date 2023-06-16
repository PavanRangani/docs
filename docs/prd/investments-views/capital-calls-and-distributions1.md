# Capital Calls and Distribution


## System Rule
- Shows Capital Call amount or Cash Distribution or Value (Stock Distribution) of each Investor of the each fund for an activity. (Shows all activities Draft, Approved, Completed)
- Allows to filter records by: `Family`, `Investor`, `Fund`, `Activity` & `Issue Date`.
- Allows to export records by Excel


### UX Rule
- Shows activity in 3 tabs: `Open`, `Completed` & `All`.
    - Open tab shows amount of the Open activities
    - Completed tab shows amount of the Completed activities.
    - All tab shows an amount of Open and Completed activities.
- Shows only associcated investor of the login user and it has activity.
- Shows proper message when no records available.
- Columns
    - Family
    - Investor
        - It is a link. On click, opens the activity task view dialog in same page. 
        - If 
    - Fund
        - It is a link. On click, opens the activity view dialog in same page.
    - Issue Date
    - Activity Type
        - Shows type of activity. Values are: Capital Call, Cash Distribution & Stock Distribution
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