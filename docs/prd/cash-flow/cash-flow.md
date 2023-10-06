# Cash Flow tab

## Private Capital 

### Overview
- Shows private capital data (Activities data) of this legal entity

### System Rule
- Shows only selected legal entity's activity data
- Each activity is shown in a separate line
- Shows `Capital Call amount` or `Cash Distribution` or `Net` of each fund for an activity where the entity is Investor.
- Shows only open activities. Completed activities are not shown here.
- Shows Approved and Draft both activities.
- For `Both` type Distribution, the system shows single entries for Cash Distribution. (Not show Stock Distribution)
- For `Net` type activity, It has a total of 2 amounts - Cash Distribution & Capital Call but the system shows only a single entry for investors based on the Net amount.
- For `Net with Separate Fund`, there are 2 types of funds available for a single investor in an activity but the system shows only a single entry for Investor based on Net amount.
- If the same investor has the same fund, it will show two separate entries in view for it. 


### UX Rule
- Shows proper message when no records are available. 
- Columns
    - Fund
        - If a name is too long, show the name in multiline. (Never shows ellipsis)
        - It is a link. On click, opens the task view dialog.
        - Shows `Draft` tag for draft activity.
    - Activity Type
        - Shows type of activity.
    - Issue Date
    - Due Date
        - Shows the activity due date.
        - If task is not done, show Overdue due date in red color.
    - Overdue
        - It is applicable only when the Overdue amount is available.
        - It shows the `Capital Call` or `Cash Distribution` or `Net` amount of all approved or draft activity whose due date is passed.
        - Shows total of columns at last
    - This Week
        - It shows the `Capital Call` or `Cash Distribution` or `Net` amount of all approved or draft activity whose due date falls This Week and whose due date is greater than or equal to the current day.
        - Shows total of columns at last
    - Next Week
        - It shows the `Capital Call` or `Cash Distribution` or `Net` amount of all approved or draft activity whose due date falls Next Week.
        - Shows total of columns at last
    - Future
        - It shows the `Capital Call` or `Cash Distribution` or `Net` amount of all approved or draft activity whose due date is more than Next Week.
        - Shows total of columns at last
    - Total
        - Shows total of the each line and shows a total of each column.
- Shows `Call Amount` for Capital Call or `Cash Distribution` for Cash Distribution or `Net` for the Net & `Net with Separate` Fund type.
- Sorting: Records are sorted in ascending order of Issue Date.
- On hover, shows hover effects.
- On click, opens the activity view dialog. 


### UI Rule
[Mockup](https://drive.google.com/file/d/1MNfcdcNp4ZIGUeuC-efPAfrasS7Btfxp/view?usp=sharing)
- Message when no records available: `No Records Found`



## Annual Cash Budget / Actual tracking

### System Rule
- No fields are mandatory. 
- For each year, allows to enter Budget and Actual data
- For running year, allows to enter only Budget data. For completed year, allows to enter only Actual data.

### UX Rule
- If any year has `Budget`, shows budget in the view or If any year has `Actual` amount, shows Actual amount in the view.
- If any year has both `Budget` & `Actual` amount, shows `Actual` amount in view.
- If any year has no `Budget` & `Actual` amount, show `Budget` with `-`.
- `Budget` column (Column header and Data both) is shown in green color.
- By default, system will show the last 5 years' records. (Last 5 years = Current + last 4 year)
    - If user wants to see the last 10 years' records, he/she can see it. [See more details](#shows-last-10-year-records)
- UI will add the New Year column from the left side.
- On hover of table column header, shows pencil icon with each year. 
- On click, opens the edit dialog of Actual/Budget for the year.
- It has 2 sections: `Outside the Portfolio` & `Within the Portfolio`. It has 2 groups under each section: `Cash Sources` & `Cash Uses`
- `Outside the Portfolio`
    - `Cash Sources`
        - Earned Income (net of withholding)
        - Trust Distributions
        - Other Income 
    - `Cash Uses`
        - Living Expenses
        - Other Expenses
- `Within the Portfolio`
    - `Cash Sources`
        - Cash Contribution
        - Cash Gifts',
        - Dividends & Interest
        - Distributions & Realizations
        - Other
    - `Cash Uses`
        - Portfolio Distributions
        - Charitable Grants (Cash)
        - Trust Distributions
        - Management Fees
        - Capital Contributions
        - Direct Investments
        - Personal Gifting (Cash)
        - Tax Payments
- Shows total of each group and each section at last.
- For `Cash Uses`, system will always consider the amount (Actual or Budget) as Negative.  
- For `Within the Portfolio`,
    - If total of the `Outside the Portfolio` section is Positive, pull its amount to `Cash Contributions`.
    - If total of the `Outside the Portfolio` section is Negative, pull its amount to `Portfolio Distributions`.
- User can expand or collapse the Cash Sources & Cash Uses Section. [See more details](#expandcollapse-cash-sources--cash-uses-section)

### UI Rule
[Mockup](https://drive.google.com/file/d/1Zs4bB8k5WMVIOPWzXc4cCIuoKNtJJ39B/view?usp=sharing)


### Expand/Collapse Cash Sources & Cash Uses Section
#### UX Rule
- By default, `Cash Sources` & `Cash Uses` section is shown as collapsible for both `Outside the Portfolio` & `Within the Portfolio`. 
- Shows `+` icon to the left side of both sections. On click of `+` icon, section will be expanded.
- When section is collapsible, shows `-` icon. On click of `-` icon, section will be collapsed.
- At a time more than one section can be expanded and collapsed.

#### UI Rule
- [See + icon](https://drive.google.com/file/d/1KgJWSwmv2Cf2bCcUKV2XNHfyQHHHgXz5/view?usp=sharing)
- [See - icon](https://drive.google.com/file/d/17BsRZ5RuLpZO6pfymvpN2bP_QqJ3gu21/view?usp=sharing)



### Add/Edit budget/actual data of a Year
#### System Rule
- User can't change/enter the Budget for a completed year.
- User can't change/enter the Actual amount for the current year. 

#### UX Rule
- Logic of the `Differences` column, if any past year has a value of `Budget`, the system shows the `Difference` column. (This difference amount is not shown on the view page)
    - It is a calculated field. `Differences` = `Actual` - `Budget`
        - Negative amount is shown in the `()`.
        - For `Cash Uses` of both sections, 
            - System will caluclate the `Differences` amount based on a maths formula.
            - For e.g. 
                - If the Actual amount is `-2000` and Budget is `-2000`. So the Differences is `-1000 - (-2000) = -1000 + 2000 = 1000`.
                - If the Actual amount is `-5000` and Budget is `-2000`. So the Differences is `-5000 - (-2000) = -5000 + 2000 = -3000`.
- Shows `Budget` column disabled for a completed year. When it's disabled, system shows a proper message.
- Shows `Actual` column disabled for the current year. When it's disabled, system shows a proper message.

#### UI Rule
- [Mockup with difference column](https://drive.google.com/file/d/1lrvvEgsBIU4dTIxo6b1m9at6W1P477y7/view?usp=sharing)
- Message for `Budget` column: `You can't enter a budget for the completed year.` [See this](https://drive.google.com/file/d/1HlearnPRWl35iQqyzGXHzp-UI2_8uB6y/view?usp=sharing)
- Message for `Actual` column: `You can enter Actual amount after Jan 1, {Next Year}` [See this](https://drive.google.com/file/d/1Zs4bB8k5WMVIOPWzXc4cCIuoKNtJJ39B/view?usp=sharing)


### Shows last 10-year records
#### UX Rule
- Shows `Last 5 Years` dropdown on the right side of the header. On click of dropdown, opens the dropdown of `Last 5 Years` & `Last 10 Years`.
- On click `Last 10 Years`, system shows the last year's records. (Current year + Last 9 years)
- Shows horizontal scroll in the `Annual Cash Budget` table when available screen.
- When the last 10 years are selected in the view, a horizontal scroll appears if all the years are not fit in the available screen.
    - First column on the left side is sticky when scrolling horizontally.

#### UI Rule
[Mockup](https://drive.google.com/file/d/1MNfcdcNp4ZIGUeuC-efPAfrasS7Btfxp/view?usp=sharing)
 


### Cash Flow tab - Enable/Disable tab logic
- Cash Flow tab always appears enabled. Because the system has to handle many cases to enable/disable the tab. So instead of implementing complex logic in the system, we will always show the Cash Flow tab as enabled. See the following cases:
    - Any one section has data and other section doesn't have data
    - Default system shows last 5 years. If the user has data for the last 8th year, the tab should show enable. But the user will not see that year in the budget table on the view page.
    - User can only see the last 10 years' record. If the entity has records for last 11th year, Even then the tab will be shown as enabled


