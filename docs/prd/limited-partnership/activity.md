# Activity

## Overview
- When Clarius clients invest in the Private Capital Funds, clarius team processes those investment funds periodically. This capital fund issues a capital call and distributions. Clarius team has around 600 private capital investments so Clarius processes a lot of these calls each year.  To streamline this process this module is built 
- When Fund issues a call or distribution, Clarius team performs such tasks for their clients. One fund will have many investors. Using this module, system creates a bulk task for each investor so that clarius team doesn't have to manually add tasks individually for each investors
- There are total of 4 types of activity. 
    - Capital Call: Any investment fund calls for money from its investors is called a capital call.
    - Distribution: When the investment fund distributes its profit to its investors, it is called distribution.
    - Net: Funds will occasionally issue a capital call and distribution at the same time from the same fund.
    - Net with Separate Fund: Funds can issue a capital call and distribution at the same time for different funds, this activity can be used.

## Add Activity

### System Rule
- Name: 
    - It's a mandatory and free form text input field. 
- Issue Date
    - It's a mandatory and date input field.
- Due Date
    - It's a mandatory and date input field.
    - Due date should be greater than Issue date.
- Notes
    - It's a free form text input field.
- Any user can add the activity (Normal or Admin user).
- New activity can't be added if no investors exist.
- Investors will be pulled from the Investors tab of the Fund (Regardless of its SLOA is true or false)
- When Investor is added or removed from the Investor tab, it won't affect any existing active or completed activity. Those Investor changes will be reflected in the future activity only.
- Allows user to decide weather the task should be created or not for that particular investor
- Activity can be approved only if there is at least one investor whose task is to be created.

#### Capital Call
- For each investors, allows to enter the `Call amount`. It is mandatory only if task is to be created for that investor.
- On Approve, System creates a `Capital Call` task for the selected investors.


#### Distribution
- Distribution can be of three types : `Cash`, `Stock` & `Both`.
    - For `Cash`, system asks `Cash Distribution` amount for each investor. 
    - For `Stock`, System asks for `Stock Distribution` for each investor. 
    - For `Both`, the system asks for `Cash Distribution` amount and `Stock Distribution` for each investor. 
- System will also ask the `Stock Company` for `Stock` & `Both` type distribution is selected. It is a mandatory and dropdown of public type companies. Users are able to enter a new name. When a user enters a new name, the system will auto create a public type company.
- `Cash Distribution` and `Stock Distribution` both are mandatory for investor if task is to be created for that investor.
- On Approve, system creates a `Distribution` task for the selected investors.

#### Net
- Users can enter the `Call Amount` & `Cash Distribution` for each Investor. 
 - It is an amount and mandatory only when the `Create Task` button is ON.
- System calculates the `Net` value for each investor. `Net` is difference of Call and Distribution.
    - If Net is call, the system will create a Capital call task for the Investor. (Call amount is higher than Distribution amount)
    - If Net is Distribution, the system will create a Distribution task for the Investor. (Distribution amount is higher than Call amount)
- System won't create a task when the calculation of `Net` is $0.


#### Net with Separate Fund
- Allows to select `Distribution fund`. It is a mandatory field. Allows to select other LP of the same asset manager whose `Drawdown` is Yes. Original LP won't be shown in this dropdown (LP under which this activity is being added)
- Allows to enter `Call Amount` for the Original fund and `Distribution Amount` for the Distribution fund.
- Call or distribution amount can be entered only for the common Investors of both funds.
- System calculates the `Net` value for each investor. `Net` is difference of Call and Distribution.
    - If Net is call, the system will create a Capital call task for the Investor. (Call amount is higher than Distribution amount)
    - If Net is Distribution, the system will create a Distribution task for the Investor. (Distribution amount is higher than Call amount)
- Tasks can be created only for the common investors. 

### UX Rule
- Investors are shown in alphabetical order.
- Shows `+` button disabled when LP don't have any investors. On hover, it shows a proper message in tooltip. [See mockup](https://drive.google.com/file/d/1RMjI-p00R5W9oAcaMkA_BsgMAQVQjqMf/view?usp=share_link)
- Amount is mandatory if Create task = ON
- If `Issue date` is greater than `Due date`, the system shows an error message in the `Due Date` field. [See this](https://drive.google.com/file/d/1pCdutzIRm5ATxg5Ha_slt4vAZNPktLSR/view?usp=share_link)
- When there isn't any investors having `Create Task` checkbox = ON and the user clicks the `Create Task` button, the system shows a proper message. [See this](https://drive.google.com/file/d/17F0SzetDEfkEFNakPXCepNuO2bN-mSMD/view?usp=share_link)

- **Distribution**
    - Shows a `New` tag in the stock company field when the user enters a new name.

- **Net**
    - When the calculation of `Net` is `$0`, shows the `Create Task` checkbox disabled. [See this](https://drive.google.com/file/d/1W6IS-kqCA91ylq1peC97IB_yOquVxc7M/view?usp=share_link)
    - Checkbox is enable only when Net is not 0. 
    - Shows a negative amount in brackets. like `($ 50,000)`.

- **Net with Separate Fund**
    - `Call Amount`, `Distribution Amount` & `Create task` checkbox is shown disabled until `Distribution Fund` is not selected.
    - Shows placeholder message until distribution fund is selected. [See this](https://drive.google.com/file/d/15batT0jgGqffvm7YPPZ0JUzgTv4QK9B9/view?usp=share_link)
    - Shows `Capital Call` word in bracket of the Original fund and shows `Distribution` word in bracket of the Distribution fund. 
    - When `Distribution Fund` is changed, all data will be reset except `Call Amount` of Original fund.
    - `Create Task` checkbox, `Call Amount` & `Distribution Amount` is shown disabled for investors which are not common in both funds. [See this](https://drive.google.com/file/d/1nfx7pxT6otNa-GeHvQTLUwYoe7271_Bh/view?usp=share_link)
        - For e.g. If the Capital Call fund (Original fund) has 4 investors and Distribution fund has 2 investors. 2 investors are commmon and 2 investors are not common. So Call Amount, `Distribution Amount` & `Create task` checkbox is shown disabled for the 2 investors which are not common.
    -  When the calculation of `Net` is `$0`, shows the `Create Task` checkbox disabled.
    - If investors are diffrent for both fund (Original & Distribution), `Create Task` checkbox shown disabled.
    - Net column doesn't calculate until user enters the `Distribtion amount` & `Call Amount`. 
    - Shows `Create Task` checkbox enabled only for those investor having Net amount. 

### UI Rule
- [Add Capital call](https://drive.google.com/file/d/1VqBF3GEKH88SBpv_5s5668RwnKGyKG--/view?usp=share_link)
- [Add Distribution - Call](https://drive.google.com/file/d/11qcjvYqdgVl1Ks3pMf1fkdba9v7keAPr/view?usp=share_link) & [Add Distribution - Stock](https://drive.google.com/file/d/1zbhSowXnhn0UPzySmRvmmyLwU2J7wnQa/view?usp=share_link) & [Add Distribution - Both](https://drive.google.com/file/d/1qq9mWSMcxBtIfBzjzOmS35ZvFPvwLaFv/view?usp=share_link)
- [Add Net](https://drive.google.com/file/d/19SNZMaWEnUi32OgWyKyt4C_iHfDcYprQ/view?usp=share_link)
- [Add Net with Separate Fund](https://drive.google.com/file/d/1nfx7pxT6otNa-GeHvQTLUwYoe7271_Bh/view?usp=share_link)

- Tooltip message when no investor available: `No Investors Exists. So new activity can't be added`
- Placeholder message for `Net with Separate Fund`: `Please select Distribution Fund`
- Error message for `Due date`: `Should be >= Issue date`.
- Error message when no task selected and user clicks the `Create Task` button: `To Approve this activity, at least one investor should have "Create Task" ON`




## Save as Draft activity
### System Rule
- When some detail of an activity is pending to fill and the user wants to save it partially, then user can use `Save as Draft`.
- System will not validate any mandatory field during the `Save as Draft` action and no task will be created for any investor.
- Approved activity can't be saved as a draft. 

### UX Rule
- Shows `Save as Draft` action button in the add activity dialog or edit dialog. On click of the button, activity will be saved as draft.
- Draft activity can be again saved as draft.
- Shows `Draft` tag for the draft activity in browse page or view dialog. [See this](https://drive.google.com/file/d/1fTrCw8r8qyXB53Nk-KDjuENr4-cj022N/view?usp=share_link)



## Approve Activity
### System Rule
- Any new activity or any existing draft activity can be approved.
- To approve activity, all of its mandatory details should be filled.
- When activity is approved, system will create tasks for the investors whose Create task is ON.
- When an action is failed for any reason, the system won't be created any task for that activity.
   - For e.g. If one activity is approved with 5 tasks. The system creates 2 tasks. Now, if the API fails when the system is creating the 3rd task, the system will fail that entire activity. All 5 taks won't be created.

### UX Rule
- Shows loader in dialog until activity is approved. [See this]() //TODO
- When the draft activity is approved successfully, the system shows a success message in the dialog. [See this](https://drive.google.com/file/d/1vG47erSbL7S5-t6Q2_SjUsrxZFKo_z9r/view?usp=share_link)
- If any draft activity is approved and some of the mandatory fields are blank, the Edit Activity dialog will open so that the user can add the mandatory fields. In this case, UI shows proper warning message as to why edit dialog is opened instead of Approve. [See this](https://drive.google.com/file/d/1gvguXMAOZyIU7egWcBrIgPSkRnm9Ld8p/view?usp=share_link)
- When any action is failed, shows error message on toast.

### UI Rule
mockup
- Message: `Can't approve this activity. Please fill mandatory fields`



## Edit Activity
### System Rules
- Activity can be edited anytime. (Open or Completed or Draft)
- All details like name, date, amount can be edited
- If task was already created for any investor, user can not change the value of `Create task`.
- Shows the task status for created task.
- If task was not created, then user can set value of `Create task` to ON
- For `Net` or `Net with Separate call` type activity, 
    - `Call amount` or `Cash Distribution` or `Distribution amount` can't be changed in such a way that already created task is changed from `Capital call` to `Distribution` or vice versa.
    - `Distribution Fund` can't be changed.

### UX Rule
- If the task of the investor is already created, the `Create Task` checkbox of that investor will be disabled.
- For `Net` or `Net with Separate call` type activity, 
    - System shows error message when the net of the approved task is changed from `Capital call` to `Distribution` or vice versa. [See this](https://drive.google.com/file/d/1m8EPboHxF8InPU801K9PyUhij1ElmPJG/view?usp=share_link)
    - `Distribution Fund` field is shown disabled in the edit dialog.
- If task is not created, shows `-` in `Task Status` column otherwise shows the task status. 
    - `In Progress` status is shown in the green color.
    - `Blocked` status is shown in the red color.
    - `On Hold` status is shown in the golden color.

### UI Rule

- Error message for `Net` or `Net with Separate call`: `When Call/Distribution task is already created for any Investor then its amount can't be changed such that already created task doesn't remain valid`


## Delete Activity
### System Rule
- Draft activity can be deleted anytime. 
- Approved activity has a task, so it can't be deleted.

### UX Rule
- On deletion of draft activity, opens a delete confirmation dialog. On confirmation, activity will be deleted.
- When the user performs delete action for approved activity, opens the delete not possible dialog with proper message.

### UI Rule
- Mockup of [delete not possible](https://drive.google.com/file/d/1fekIp6bwRB_U69MpVJRq8CzivoMgGrYM/view?usp=share_link)
- Mockup of [delete possible](https://drive.google.com/file/d/1sVyzXawRFCVO96le7HrkWVKcUYq1npZv/view?usp=share_link)

## Browse Activity
### UX Rule
- Activity will be shown in 2 tabs. Open or Completed
    - Open activity shows those activities which has at least one open task. (Here, open tasks means task whose status other than Done & Deleted)
    - Completed activity shows those activities whose all tasks are either Done or Deleted. 
- Shows proper messages when no activity is available.
- Shows `+` button with open activity table header. On click, opens a dropdown of the Activity type. On select of any activity type, opens the add dialog of that activity.
- Shows `+` button disabled if no investor is available. On hover, it shows a tooltip with a proper message. [See this](https://drive.google.com/file/d/14KmUQlUnvOmLHDCskPoT-fHMM2F02LmI/view?usp=share_link)
- When there isn't any activity available under any of the tabs, that tab will be shown disabled and show proper message. Table is not shown. 
- Shows separate table for each type of activity
- Each table has one `+` button. On click, opens the add dialog of that particular type.
- Columns
    - Name:
        - If the name is too long, show the name in the next line.
        - If the activity is saved as draft, it shows `Draft` tag.
    - Distribution Fund
        - Applicable only for `Net with Separate Fund` type activity.
    - Issue Date
    - Due Date
    - Status
        - It shows completed task count in `Completed {Completed or deleted task count} of {Total task count}`. For e.g. `Completed 6 of 8`.
    - Notes
        - If notes are too long, show notes in the next line.
- Sorting order: Activities are sorted in descending order of Issue date. (Latest shown first)
- On hover, shows hover effect and vertmore action menu at right side.
- Vertmore action: `Approve Draft`, `Edit` & `Delete`
    - `Approve Draft` action is applicable only for active draft activity.
    - `Delete` action is applicable only for active activity. (Draft or Approved)
    - `Edit` action is applicable for all activity. (Draft, Approved, Completed)
- On click of activity records, opens the view activity dialog.

## UI Rule
[Mockup](https://drive.google.com/file/d/1jSay2bsgLnG3VB-kfL6nL-Ju2FknTsH2/view?usp=share_link)
- Placeholder text: `No Records Found` 
- Tooltip message when + button is disabled: `No Investors Exists. So new activity can't be added`



## View Activity
### System Rule
- Open and Completed activity can be opened in view.

### UX Rule
- Shows `Draft` tag for the Draft activity. [See this](https://drive.google.com/file/d/1aU0_OUadONiVa09SslrXIBaViCVLFUx3/view?usp=share_link)
- Shows `Activity name` in the header. If it too long, shows name in multiline. 
- Shows associated action with the header.
    - Draft activity action: `Approved Task`, `Edit`, `Delete`.
    - Normal active activity: `Edit`, `Delete`
    - Completed activity: `Edit`
- Shows all details of the activity in the view dialog.
    - If notes is too long, then it appaer in multi line.
    - If due date is passed, it is shown in red column.
    - For `Distribution`, `Stock company name` is link. On click, opens the company view dialog from same page.
    - For `Net with Separate Fund`, `Distribution Fund` is link. On click, opens that fund details page in the other tab.
- Investor table of all types
    - Columns are
        - Investor
            - If the investor 's name is too long, it shows an ellipsis.
            - Shows investor name as link. On click opens workspace page
        - Call Amount
            - Amount column.
            - Applicable only for `Capital Call` & `Net with Separate Fund` type.
        - Call Distribution
            - Decimal allowed amount column
            - Applicable only for `Distribution` type.
        - Stock Distribution
            - Number allowed column.
            - Applicable only for `Distribution` type.
        - Net
            - Amount column
            - Applicable only for `Net` & `Net with Separate Fund` type.
        - Task
            - If the investor has a task then shows `✔` otherwise shows `-`.
        - Task Status
            - Shows status of the task.
            - If the investor doesn't have a task, show `-`.
            - `In Progress` status is shown in the green color.
            - `Blocked` status is shown in the red color.
            - `On Hold` status is shown in the golden color.
    - On hover of the `Investor` records having a task, shows one task icon to the right side. (Doesn't show hover effect). On click of that icon, opens the task view dialog in the same tab.
    - For the `Net with Separate Fund` type, it shows `Capital Call` in brackets for the Original fund and shows `Distribution` in brackets for Distribution fund.
    - Sorting order: Alphabetical order of name.


### UI Rule

- [Mockup of Capital call](https://drive.google.com/file/d/1Nnsq6_82g9RxN8iy0ZQRyvHpYtM8g45w/view?usp=share_link)
- [Mockup of Distribution](https://drive.google.com/file/d/1ITRciPXka2B2bZpn3d3Aql3KGCjzAihy/view?usp=share_link)
- [mockup of Net](https://drive.google.com/file/d/1nlUra4t89xb9ZEzm6wQVrc5UgtN53ZJC/view?usp=share_link)
- [Mockup of net with separate fund](https://drive.google.com/file/d/1ob0iuniwD49yQg5qqMYZfdauy57PXayp/view?usp=share_link)