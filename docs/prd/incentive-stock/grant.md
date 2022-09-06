# Grant

There are Total 5 types of Grants 

NQSO, ISO, RSA, RSU, Stock Grant & Carried Interest

Among the 6 types, Carried Interest is only applicable under only Limited Partnership type of Incentive Stock. NQSO, ISO, RSA, RSU, Stock Grant are applicable under Private and Public type incentive stocks.

## Entity Details

#### Company Name

Company can be Public, Private & Limited Partnership. Its a mandatory field.

Shows company type as a Secondary Information.

#### Stock Price

Applicable only for `Private` type company.

Its amount field. Default value is set to `$0.00`.

#### Price as of Date

Applicable only for `Private` type company.

Its a Date for the Stock price.

This date can not be future date.

#### Custodian

Not applicable for the `Carried Interest` and `Stock Grant` type Grant.

Shows all types of company here.

#### Grant ID

Free form Text Input field. Its mandatory field. 

#### Grant Date

Date on which this grant is awarded. Its a mandatory field.

#### Shares Granted or Percent Granted

`Shares Granted` is applicable for `NQSO`, `ISO`, `RSA`, `RSU` types. It is number input field. Its mandatory field. Decimal is not allowed. Its default value is `0`.

`Percent Granted` is applicable only for `Carried Interest` type. It is Percentage input field. Decimal is allowed. Its default value is `0.00%`.

#### Exercise Price

Applicable only for `NQSO`& `ISO` types. Its the fixed price at which stock will be issued when it will be exercised.

Its amount input field. Its mandatory field. Decimal is allowed. Default value is set to `$0.00`.

#### Expiration Date

Applicable only for `NQSO`& `ISO` types.

Date on which this grant will expire. It should be greater than or equal to `Grant Date` . 

#### Vest at Death

Applicable only for `NQSO`, `ISO` & `RSU` types.

Its possible value can be `Yes`, `No` or `Unknown`. Default value is set to `Unknown`.

#### Shares Purchased on Grant

Applicable only for `RSA` type.

Number of shares purchased when this Grant is awarded. Default value is set to

#### Price per Share

Applicable only for `RSA` type.

Price of the Share when shares are purchased at the time Grant is awarded.

Its amount input field. Decimal is allowed. Default value is set to `$0.00`.

#### Total Purchase Price

Applicable only for `RSA` type.

Its Calculated field.  `Total Purchase Price` = `Shares Purchased on Grant` * `Price per Share`.

Default value is set to `$0.00`.

#### Liquidation Condition

Applicable only for `RSU` type.

Its possible value can be `Yes`, `No` or `Unknown`. Default value is set to `Unknown`.

#### Treatment on Termination

Applicable only for `RSU` type.

User can add any text in this field.

#### Price

Applicable only for `Stock Grant`.

Decimal is allowed. Default value is set to `$0.00`.

#### Value

Applicable only for `Stock Grant`. 

Its calculated field.  `Value` = `Shares Granted` * `Price`.

Decimal is allowed. Default value is set to `$0.00`.

#### 83b Election Filed

Its possible value can be `Yes`, `No` or `Unknown`. Default value is set to `Unknown`.

When user selects `Yes`, based on that it asks following details from user.

Its not applicable for the `Stock Grant`.

##### 83b Date

Date input field. Its a mandatory field.

##### 83b Price

Amount enter field. Decimal is allowed. Default value is set to `$0.00`.

##### 83b Income

Its calculated field.  `83b Income` = `Shares Granted` * `83b Price`.

Default value is set to `$0.00`.



#### Vesting Schedule Type

Vesting Schedule is not applicable for the `Stock Grant` .

Type of vesting schedule. It can be either `Simple` or `Custom` .

When Vesting Schedule Type is Custom, user need to enter schedule manually.

When Vesting Schedule Type is `Simple`, it asks following details from user and based on the input of user Vesting Schedule will be auto populated. 

##### First Vest Date

Applicable only for `Simple` typr.

Date input field. Its a mandatory field. 

It allows to enter the start date of the vesting schedule. Its always greater than or equal to `Grant Date` and lower than or equal to `Expiration Date`.

##### Shares in First Vesting or Percent in First Vesting

Applicable only when Vesting type is `Simple`. Its a mandatory field.

`Shares Granted` is applicable for `NQSO`, `ISO`, `RSA`, `RSU` types. Its number input field. Decimal is not allowed. It allows to enter the first share of the vesting of the vesting schedule. Its always lower than or equal to `Shares Granted`.

`Percent in First Vesting` is applicable only for `Carried Interest` type. Its percent input field. It allows to enter the percentage of the first vesting of the vesting schedule. Its always lower than or equal to `Shares Granted`.


##### Vesting Frequency

Applicable only when Vesting type is `Simple`.

Vesting frequency of this Grant. Its values are `Annual`, `Quarterly` & `Monthly`. Default `Annual` is selected.

If the vesting frequency is `Annual`, the system will create a vesting schedule every year from first vest date to expiration date.

Same Vesting frequency is `Monthly`, system will create a vesting schedule for every month and Vesting Schedule is `Quarterly`, system will create a vesting schedule for quarterly from first vest date to expiration date.

##### Vesting Periods

Applicable only when Vesting type is `Simple`.

Its number input field. Decimal is not allowed. 

System allows only 3 digits. (If we allow more digits than that, then in rendering the table, there was an issue in the performance from the UI side, that is why we have done this.)

##### Shares per Period or Percent per Period

Applicable only when Vesting type is `Simple`. Its a mandatory field.

`Shares Granted` is applicable for `NQSO`, `ISO`, `RSA`, `RSU` types. Its number input field. Decimal is not allowed. It shows the number of shares per periods.

`Percent per Period` is applicable for `Carried Interest` type. Its a percent input field. It shows the percentage of the each periods.

#### Vesting Schedule

Vest date and Number of shares which will be vested on that date.

When Vesting Schedule Type is `Custom`, allows user to enter Date and Number of Shares manually.  

When Vesting Schedule Type is `Simple`, date and Number of shares will be auto populated based on the other values entered by user


## Add Grant

### System Rule

- Among the 6 types, Carried Interest is only applicable under only Limited Partnership type of Incentive Stock. NQSO, ISO, RSA, RSU & Stock Grant are applicable under Private and Public type incentive stocks.
- For NQSO, ISO, RSA & RSU, to create a grant, Vesting schedule is mandatory. Grant can not be created without vesting schedule.

### UX Rule

- There is a 2 way to add a grant. 
  - First one is for when incentive stock is not available and user wants to add a grant.
  - Second one is for when incentive stock is available and user wants to add a grant.
- When user clicks first ADD button
  - Opens dropdown of all incentive stock types. On click, open add grant dialog with that types.
  - In this dialog, the system will ask for the company name and other details like Stock Price and Price as of Date.
  - Company name dropdown will show only applicable companies based on the grant type.
  - For Public type incentive stock, when stock symbol is not available for the selected public companies then shows error message in the Stock symbol field. (Because we won't be able to pull stock price without stock symbol).
  - For Private type incentive stock,
    - When user enters a future date then system show proper message.
    - When data is available in any of the field (Stock Price or Price as of Date), other field will be mandatory.
    - Doesn't show `*` in labels even if fields are mandatory. 08308
- When user click in the second ADD button 
  - Opens dropdown of all incentive stock types. On click, open add grant dialog with that types and stock name is prefilled.
- Show proper message under vesting schedule until user adds data to vesting details. 
- Once user enters all details of vesting schedule then system will show a schedule under `Vesting Schedule` section.
- When `Expiration Date` is lower than or equal to `Grant Date`, system shows error.
- When `Grant Date` is grater than or equal to  `Expiration Date`, system shows error.
- When `Shares in First Vesting` is grater than `Share Granted`, system shows error. 
- `Vest Date` is always grater than or equal to  `Grant Date` and lower than or equal to  `Expiration Date` otherwise system show error.
- System shows an error message when `Total of Shares` and `Shares Granted` is not matched.
- For `Joint`, shows individual name in dialog title after the grant name with `|`.

### UI Rule

[Mockup for Empty with Simple type](https://drive.google.com/file/d/1fgurKxl8BBl9fGiTwQr8wlHrNtPIysWo/view?usp=sharing) & [Mockup when schedule is available with Simple type](https://drive.google.com/file/d/1oyAwPRvPhwAPiYi0baYDnCnMALsi1PKY/view?usp=sharing) 

[Mockup for Custom Type](https://drive.google.com/file/d/1UypXfPpaOu2dc10fqWTReqmycmcH_rez/view?usp=sharing)

- Error message when future date is added for Private type incentive stock : `Should be <= {Current Date}`.
- Error message for Stock Symbol is not available for Public type stock: `Stock symbol is mandatory for public type companies`.

- Message for vesting schedule : `Schedule will be auto populated here once you specify the above details`. 
- Error message for Expiration Date, when Expiration date is lower than Grant Date : `Should be >= Grant Date`. 
- Error message for Grant date when Grant date is grater than Expiration Date : `Should be <= Expiration Date`.
- Error message for Vest Date for Custom type & First Vest Date for Simple type
  - `Should be >= Grant Date` & `Should be <= Expiration Date`. [See this](https://drive.google.com/file/d/1J3ygqQydIlaoWE1bMANzQ77LsI2Ngvoe/view?usp=sharing)
- Error message for Vest Date when date of vesting Schedule is grater than Expiration date and lower than Grant Date: 
  - For Custom, `Should be >= Grant Date` & `Should be <= Expiration Date`.
  - For Simple, `Vest Date should be grater than Grant Date`  &  `Vest Date should be lower than Expiration Date` . [See this](https://drive.google.com/file/d/1uTT3GdCNDmgvqZpyr422rK5-97Yga2wg/view?usp=sharing)
- Error message when`Total of Shares` and `Shares Granted` is not matched: `Total Shares doesn't match Shares Granted`. [See this for Simple type](https://drive.google.com/file/d/1zWJaqarONOwxjZDKW-qe4-iWZdpuKq50/view?usp=sharing) & [Custom type](https://drive.google.com/file/d/15bDYxrbV1kzkBMD1mKFcrH50LC8hfHQ9/view?usp=sharing)
- Error message for Shares in first vesting : `Should be <= Shares Granted`.


## Edit Grant

### System rule

- Anything can be changed until Exercise, Accelerate, Forfeit, Exchange & Vested Details is not performed for NQSO, ISO, RSA, RSU & Carried Interest. 
- Once exercise, exchange, accelerate or forfeit actions are performed or Vested details are entered, Edit is restricted. Following fields can't be changed like `Grant Date` , `Share Granted`, `Expiration Date` & `whole Vesting section`.
- Can be editable anytime for `Stock Grant`.

### UX Rule

- When Edit is restricted, it shows proper message in Edit dialog.
- For the `Custom` type vesting schedule, the remaining vesting schedule can be edited. X button appears disabled for vesting schedules that have exercise or vesting details added.
- Fields which are not editable are shown disable
- For `Joint`, shows individual name in dialog title after the grant name with `|`.

### UI Rule

[Mockup of restricted Edit](https://drive.google.com/file/d/1tTL1MrBio-C4UM-QfqniNUUFcKhKOQhP/view?usp=sharing)

- Message for Edit dialog of NQSO & ISO : `Exercise, Forfeit, Accelerate or Exchange is performed for this Grant. So Edit is restricted for some of the fields`
- Message for Edit dialog of RSU & RSA : `Vested Details, Forfeit, Accelerate or Exchange is performed for this Grant. So Edit is restricted for some of the fields`
- Message for Edit dialog of Carried Interest: `Vested Details or Forfeit is performed for this Grant. So Edit is restricted for some of the fields`


## Delete Grant

### System Rule

- Active or Disposed Grant can be deleted anytime.

### UX Rule

- Shows delete confirmation dialog on deletion.

### UI Rule

[Mockup of Delete confirmation dialog](https://drive.google.com/file/d/1sdzk8HX-bRSPoPcdQDUd5CvsFZPIC90f/view?usp=sharing) 


## Dispose

### System Rule
- Only active grant can be disposed.
- For other types of incentive stock except `Stock Grant`, When all vesting schedules in the grants are completed, consider the grant is disposed.
- Users can dispose of `Stock Grant` manually.
- Once grant is disposed then it auto-moved from active tab to disposed tab.
- Disposed grant can't be editable.

### UX Rule

- Show all `Disposed` grant in `Disposed` tab.
- New `Incentive Stock` and `Grant` can't be added in disposed tab.
- For `Stock Grant` type incentive stock,
  - show `Dispose` action in vertmore.
  - On click, open dispose dialog where system ask `Disposed On` date. It's a mandatory field. 

### UI Rule

[Mockup for Dispose dialog](https://drive.google.com/file/d/1JMoOiHMHmA4XjClxiZZ9lrEBoHr6RiSL/view?usp=sharing)

## Scenario

Scenario 1: 

Given: I have one NQSO type grant

And: That grant has 10 vesting schedule.

And: I have added exercise in 9 vesting schedule.

When: I perform exercise of last record

Then: that grant is disposed

And: Move that grant from `Active` to `Disposed` tab



## Restore

### System Rule
- Only Disposed grant can be restored.
- For other types of incentive stock except `Stock Grant`, When a user performs `Undo` or `Edit Exerciese` or `Edit Vested Details` action in any of the vesting schedules, the grant is considered as an `Active ` grant and its moved from `Dispose` tab to `Active` tab.
- Users can manually restore `Stock Grant`. 

### UX Rule
 
- For `Stock Grant` type of incentive stock,
  - Show `Restore` action in vertmore.
  - On click, restored that grant.
  - Show toast message of success on action of `Restore`.

### UI Rule

- Toast message is: `Restored Successfully`.


## Browse Grant

### UX Rule

- Show proper message when no Incentive Stock available.
- Shows `ACTIVE` and `DISPOSED` grant in separate tabs.
- Show count of incentive stock with each tab title.
  - Notes : `As per Keith, He told that we should show the total incentive stock instead of Grants in both tabs.`
- Grants are shown under Incentive stock. Each Incentive stock has own add button and vertmore action.
  - For `DISPOSED` tab, 
    - Add buttons of `Incentive stock` and `Grant` are not applicable for the `Disposed` tab.
    - `Incentive Stock` can be editable in the `Disposed` tab.
- Under each Incentive stock, grants are grouped by its type `NQSO`, `ISO` , `RSA` , `RSU `, `Stock Grant` & `Carried Interest`. 
- For each types, show separate table. Sequence of each type table is : `Non-Qualified Stock Option`, `Incentive Stock Option`, `Restricted Stock Award`, `Restricted Stock Unit`, `Stock Grant` & `Carried Interest`.
- Show proper message when Grant is not available under any Incentive Stock
- When Incentive Stock type is `Private` or `Public`
  - On click of Add button, opens dropdown with these 5 options `NQSO`, `ISO` , `RSA` , `RSU ` & `Stock Grant`.
  - Show stock price with date in the header of incentive Stock.
    - For Private type, show price and date available with incentive stock.
    - For Public type, show price and date pulled from any third party provider. (Currently we are using Tiingo)
      - Such a price data are pulled using stock symbol. So when incentive stock company does not have valid stock symbol, we won't be able to pull stock price. In such case it will show proper error message in header.
      - Same way when we are not able to pull stock price due to network failure or any other reason it show proper error message in header.
- When Incentive Stock type is `Limited Partnership`
  - On click of Add button, opens add dialog for `Carried Interest`
- For each type of Grant, there are some common columns and there are some type specific columns.
- Common column for all types
  - Grant ID 
  - Grant Date
  - Shares Granted or Percent Granted
    - Shares Granted is for `NQSO`, `ISO`, `RSA`, `RSU` & `Stock Grant`.
    - Percent Granted is for `Carried Interest`.
  - 83b Election
    - When `83b Election` is Yes then shows `83b Election Date` .
    - If `83b Election` value is No then shows `No` .
    - If `83b Election` value is Unknown then show `-` .
    - Not applicable for the `Stock Grant` type incentive stock.
  - Next Vest Date
    - It shows the next date when the shares or percentages are to be vested.
    - When there is no any next date available then show `-`.
    - Not applicable for the `Stock Grant` type incentive stock.
- For `NQSO` & `ISO`  type
  - Exercise Price
  - Expiration Date
- For `Stock Grant` type
  - Price
  - Value
- Under each Grant type table, Records are sorted in the descending order of Grant Date.
- For `Joint`, shows two tables - One for each individuals.
  - User can allow to Add, Edit or Delete incentive stock or grant in joint page.
  - Shows proper message when no incentive stock available.
  - Show one `Entity` column at first, to shows that grant is pulled from which entities.
- For each Grant except `Stock Grant`shows one expand icon . On click of expand icon, shows details of that particular Grant. 
- When Grant is expanded, shows Shrink icon. On Click of Shrink icon, hides  table of that particular Grant.
- On mouse hover of any grant record, it shows hover effect and vertmore action menu at right side.
  -  `Stock Grant` can't be clickable.
  -  Vertmore action are : `Edit`, `Dispose` , `Restore `& `Delete`.
    -  `Dispose` & `Restore` action are applicable only for `Stock Grant`.
       -  `Restore` action is available only for `Dispsed` tab. On click, restore that grant.
       -  `Dispose` action is available only for `Active` tab. On click, dispose that grant.
    -  `Edit` action is avaialble only for `Active` tab. On click, opens edit dialog of that Grant.
    -  On Delete, perform delete action.

### UI Rule

[Mockup](https://drive.google.com/file/d/1UOY1WzEquQdClSnNvDjbCRjFWmgBitLN/view?usp=sharing)

- Message when no Incentive stock available : `No Incentive Stock Found`. [See this](https://drive.google.com/file/d/12LdiuoPFyLLvbEmOO1cGBzEIducrWIZT/view?usp=sharing)
- Message when no Grant available : `No Records Found`. [See this](https://drive.google.com/file/d/1uTtOHNflVDIIPjHL2nbVKzU2cFWthVV7/view?usp=sharing)
- Mockup of Active tab See this //TODO
- Mockup of Disposed tab See this //TODO
- Mockup for Browse page of Joint See this //TODO
- Message for Joint when no incentive stock available : `No Incentive Stock Found`.

## Browse any single Grant

### UX Rule

- For each grant shows details of its Vesting schedule.
- On click of Grant, expand that grant and show details of that grant. If the grant is already extended, shrink the grant at its click.
- Multiple grants can be expanded simultaneously.
- Based on different Grant type, their columns are different. Some columns are common and some columns are specific to only some types.
- Common column for all types :
  - Vest Date
  - Unvested
    - If Vest Date is not passed, means its Unvested. Those shares are shown in this column
  - Vested
    - If Vest Date is passed, means its vested. Those shares are shown in this column
  - Event Type
    - It's applicable only when any of the actions from these `Forfeit`, `Exchange` & `Accelerated` is applied to the grant.
    - It shows what kind of action is applied in a specific vesting schedule.
    - Its values are `Exercised`, `Vested`, `Accelerated`, `Exchanged` & `Forfeited`.
- Column for `NQSO` and `ISO` type :
  - When shares are Unvested and `Accelerate` action is not performed, following columns will be always blank
  - Exercised
    - Show total number of Exercised shares for particular vest schedule. If nothing is exercised it will be blank.
  - Stock Price at Exercise
    - Shows average `Stock Price at Exercise` from exercise data
    - Suppose any Grant has one vesting schedule of 10000 shares. These 10000 shares are exercised in two lot. 
    - In first lot, 4000 shares are exercised at price of 11. In second lot, 6000 shares are exercised at price of 13
    - So average `Stock Price at Exercise` for these lot will be calculated in this way `(11* 4000) + (13*6000) / 10000 `.
    - Shows this message `Shares are Forfeited` when I have added `Forfeit` type exercise.
  - Exercise Gain
    - Shows total Exercised gain from exercise data
    - Not applicable when all shares are `Forfeited`.
  - Exercisable
    - Shows how many shares are left to exercise.
    - When there isn't any shares left for exercise, it shows `-` .
    - Not applicable when all shares are `Forfeited`.
  - Exercise Cost
    - It shows the cost of exercising the shares
    - `Exercise Cost`  = `Exercisable` * `Exercise Price of Grant`.
    - When Exercisable is zero, it shows `-` 
    - Not applicable when all shares are `Forfeited`.
  - Vested Value
    - `Vested Value` = `Exercisable`  * `Current Stock Price of the Incentive Stock`
    - When `Stock Price` is not available then its value is set to `-`.
    - Not applicable when all shares are `Forfeited`.
  - Vested Gain
    - `Vested Gain` = `Vested Value` - `Exercise Cost`.
    - When `Stock Price` is not available then its value is set to `-`.
    - Not applicable when all shares are `Forfeited`.
- Column for `RSA` & `RSU` type
  - Vested Value
    - Applicable only after Vested details is added. When vested details is not available shows `-`
    - Formula =  `Price at Vest from vested details * Vested shares`  
  - Unvested Value
    - Applicable only for `Unvested`  schedule records. Shows the unvested value of that particular vesting schedule.
    - Formula = `Unvested shares` * `Current Stock Price`
- Column for `Carried Interest` type
  - Cumulative Vested
    - It shows the total percentage vested
  - Gift/Sale
    - It shows how many percentage the user has Gifted or Sold.
  - Retained
    - It shows how many percentage the user has retained (It means not Gifted or Sold)
- Records are sorted in ascending order of Vest Date
- Shows the total of each column as first row at top. 
  - For column `Vest Date` total is not applicable.
  - For  `Exercise Price`  total is calculated using average method of each Exercise data
    - `Exercise Price` = `((Total of Shares Held * Exercise Price) + (Total of Shares Sold * Exercise Price)) / (Total of Shares held + Total of Shares Sold)`
- On hover of Unvested rows, shows hover effect and vertmore action at the right side.
  - Vertmore action for `NQSO`, `ISO`, `RSA` & `RSU` : `Accelerate`, `Forfeit` & `Exchange`
  - Vertmore action for `Carried Interest` :  `Forfeit`
  - Once the action is performed, rows are clickable. On click, open view dialog.
  - `Exercise` & `Vested Detail` can't be applicable for unvested records.
- On hover of Vested schedule rows, shows hover effect.
  -  On hover, It shows `Exercise` or `Vested Details` button at the right side
  -  For `NQSO` & `ISO`, shows vertmore action at the right side.
     -  Vertmore action are : `Forfeit` & `Exchange`
     -  In case of partial exercise, On click of `Forfeit` & `Exchange`, open action not possible dialog.
  -  Doesn't show this action buttons when everything is exercised or vested details is entered.
  -  `Exercise` button is shown for `NQSO` and `ISO` types
  -  `Vested Details` button is shown for `RSA`, `RSU` & `Carried Interest`.
  -  On click of Row, opens view dialog of Exercise or Vested details
- There is a way to `Undo` all action after the its performed. On hover of these type records, show one vertmor action.
  - For `Accelerate`: `Undo Accelerate`
  - For `Forfeit`: `Undo Forfeit` 
  - For `Exchange`: `Undo Exchange`
  - For `Vesting details`: `Edit Vested Details`
  - For `Exercise` : `Edit Exercise`
- Once the `Forfeit` or `Exchange` action is performed, then show proper message in other column except `Vested` & `Unvested` column. 

### UI Rule

[Mockup of NQSO/ISO type](https://drive.google.com/file/d/1iMv2adXGc3OPXuDG0ghXddOMW6ulWBqX/view?usp=sharing) 

[Mockup of RSA/RSU type](https://drive.google.com/file/d/1x0_DPIm28EV2rdsUnTA2kAC-TPD3Zzl6/view?usp=sharing)

[Mockup of Carried Interest type](https://drive.google.com/file/d/1gS5jSAFzHoPfnbj0s2ceEKOT-d1Z19ej/view?usp=sharing)

- Message when `Forfeit` action is performed : `Shares are Forfeited`
- Message when`Exchange` action is performed : `Shares are Exchanged`

