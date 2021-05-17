# Grant

There are Total 5 types of Grants 

NQSO, ISO, RSA, RSU & Carried Interest

Amoung the 5 types, Carried Interest is only applicable under only Limited Partnership type of Incentive Stock. NQSO, ISO, RSA, RSU are applicable under Private and Public type incentive stocks.



## Entity Details

#### Stock Name

Incentive stock of this grant

#### Custodian

Not applicable for the `Carried Interest` type Grant.

Shows all types of company here.

#### Grant ID

Free form Text Input field. Its mandatory field. 

#### Grant Date

Date on which this grant is awarded. Its a mandatory field.

#### Shares Granted or Percent Granted

`Shares Granted` is applicable for `NQSO`, `ISO`, `RSA`, `RSU` types.

`Percent Granted` is applicable only for `Carried Interest` type.

`Shares Granted` is number input field. Its mandatory field. Decimal is not allowed. Its default value is  `0`.

`Percent Granted` is Percentage input field. Decimal is allowed. Its default value is  `0.00%`.

#### Exercise Price

Applicable only for `NQSO`& `ISO` types. Its the fixed price at which stock will be issued when it will be exercised.

Its amount input field. Its mandatory field. Decimal is allowed. Default value is set to `$0.00`.

#### Expiration Date

Applicable only for `NQSO`& `ISO` types.

Date on which this grant will expire. It should be greater than `Grant Date` . 

#### Vest at Death

Applicable only for `NQSO`, `ISO` & `RSU` types.

Its possible value can be `Yes`, `No` or `Unknown`. Default value is set to `Unknown`.

#### Shares Purchased on Grant

Applicable only for `RSA` type.

Number of shares purchased when this Grant is awarded.

#### Price per Share

Applicable only for `RSA` type.

Price of the Share when shares are purchased at the time Grant is awarded.

Its amount input field. Its mandatory field. Decimal is allowed. Default value is set to `$0.00`.

#### Total Purchase Price

Applicable only for `RSA` type.

Its Calculated field.  `Total Purchase Price` = `Shares Purchased on Grant` * `Price per Share`.

#### Liquidation Condition

Applicable only for `RSU` type.

Its possible value can be `Yes`, `No` or `Unknown`. Default value is set to `Unknown`.

#### Treatment on Termination

Applicable only for `RSU` type.

User can add any text in this field.

#### 83b Election Filed

Its possible value can be `Yes`, `No` or `Unknown`. Default value is set to `Unknown`.

When user selects `Yes`, based on that it asks following details from user.

##### 83b Date

Date input field. Its a mandatory field.

##### 83b Price

Amount enter field. Its a mandatory field. Decimal is not allowed. Default value is set to `$0`.

##### 83b Income

Its calculated field.  `83b Income` = `Shares Granted` * `83b Price`.

#### Vesting Schedule Type

Type of vesting schedule. It can be either `Simple` or `Custom` .

When Vesting Schedule Type is Custom, user need to enter schedule manually.

When Vesting Schedule Type is `Simple`, it asks following details from user and based on the input of user Vesting Schedule will be auto populated. 

##### First Vest Date

Date input field. Its a mandatory field. 

It allows to enter the start date of the vesting schedule. Its always greater than `Grant Date`.

##### Shares in First Vesting

Its number input field. Decimal is not allowed. It allows to enter the first share of the vesting of the vesting schedule.

Its always lower than `Shares Granted`. Applicable only when Vesting type is `Simple`.

##### Vesting Frequency

Applicable only when Vesting type is `Simple`.

Vesting frequency of this Grant. Its values are `Annual`, `Quarterly` & `Monthly`. Default `Annual` is selected.

If the vesting frequency is `Annual`, the system will create a vesting schedule every year from first vest date to expiration date.

Same Vesting frequency is `Monthly`, system will create a vesting schedule for every month and Vesting Schedule is `Quarterly`, system will create a vesting schedule for quarterly from first vest date to expiration date.

##### Vesting Periods

Applicable only when Vesting type is `Simple`.

Its number input field. Decimal is not allowed. 

##### Shares per Periods

Applicable only when Vesting type is `Simple`.

Its number input field. Decimal is not allowed. It shows the number of shares per periods.

#### Vesting Schedule

Vest date and Number of shares which will be vested on that date.

When Vesting Schedule Type is `Custom`, allows user to enter Date and Number of Shares manually.  

When Vesting Schedule Type is `Simple`, date and Number of shares will be auto populated based on the other values entered by user



## Add Grant

### System Rule

- Amoung the 5 types, Carried Interest is only applicable under only Limited Partnership type of Incentive Stock. NQSO, ISO, RSA, RSU are applicable under Private and Public type incentive stocks.
- To create a grant, Vesting schedule is mandatory. Grant can not be created without vesting schedule.

### UX Rule

- Show proper message under vesting schedule until user adds data to vesting details. 
- Once user enters all details of vesting schedule then system will show a schedule under `Vesting Schedule` section.
- When `Expiration Date` is lower than `Grant Date`, system shows error.
- When `Grant Date` is grater than `Expiration Date`, system shows error.
- `Vest Date` is always grater than `Grant Date` and lower than `Expiration Date` otherwise system show error.
- System shows an error message when `Total of Shares` and `Shares Granted` is not matched.

### UI Rule

Mockup for Empty & Mockup when schedule is available //TODO

- Message for vesting schedule : `Schedule will be auto populated here once you specify the above details`. See this //TODO
- Error message for Expiration Date, when Expiration date is lower than Grant Date : `Should be >= Grant Date`. See this //TODO
- Error message for Grant date when Grant date is grater than Expiration Date : `Should be <= Expiration Date`. See this //TODO
- Error message for Vest Date : `Should be >= Grant Date` & `Should be <= Expiration Date`. See this //TODO
- Error message when`Total of Shares` and `Shares Granted` is not matched: `Total Shares doesn't match Shares Granted`. See this //TODO



## Edit Grant

### System rule

- Anything can be changed until exercise is not performed for NQSO and ISO and Vested details are not entered for RSA, RSU or Carried interest
- Once exercise is performed or Vested details are entered, Edit is restricted. Following fields can't be changed like `Grant Date` , `Share Granted`, `Expiration Date` & `whole Vesting section`.

### UX Rule

- When Edit is restricted, it shows proper message in Edit dialog
- Fields which are not editable are shown disable

### UI Rule

Mockup of restricted Edit //TODO

- Message for Edit dialog : `As exercise is performed of this Grant, Edit is restricted for some fields`.




## Delete Grant

### System Rule

- If exercise is performed for NQSO and ISO or Vested details are  entered for RSA, RSU or Carried interest, Grant can not be deleted

### UX Rule

- When grant can't be deleted, opens delete not possible dialog.
- If grant can be deleted, opens delete confirmation dialog.

### UI Rule

Mockup of Delete confirmation dialog & Delete not possible dialog //TODO



## Browse Grant

### UX Rule

- Show proper message when no Incentive Stock available.
- Grants are shown under Incentive stock. Each Incentive stock has own add button and vertmore action.
- Under each Incentive stock, grants are grouped by its type `NQSO`, `ISO` , `RSA` , `RSU ` & `Carried Interest`. 
- For each types, show separate table. Sequence of each type table is : `Non-Qualified Stock Option`, `Incentive Stock Option`, `Restricted Stock Award`, `Restricted Stock Unit`, & `Carried Interest`.
- Show proper message when Grant is not available under any Incentive Stock
- When Incentive Stock type is `Private` or `Public`
  - On click of Add button, opens dropdown with these 4 `NQSO`, `ISO` , `RSA` & `RSU ` types. 
  - Show stock price with date in the header of incentive Stock.
  - If stock price or Stock date is not retrieve then show proper message.
- When Incentive Stock type is `Limited Partnership`
  - On click of Add button, opens add dialog for `Carried Interest`


- For each type of Grant, there are some common columns and there are some type specific columns.
- Common column for all types
  - Grant ID 
  - Grant Date
  - Shares Granted or Percent Granted
    - Shares Granted is for `NQSO`, `ISO`, `RSA` & `RSU`.
    - Percent Granted is for `Carried Interest`.
  - 83b Election
    - When `83b Election` is Yes then shows `83b Election Date` .
    - If `83b Election` value is No then shows `No` .
    - If `83b Election` value is Unknown then show `-` .
  - Next Vest Date
    - It shows the next date when the shares or percentages are to be vested.
    - When there is no any next date available then show `-`.
- For `NQSO` & `ISO`  type
  - Exercise Price
  - Expiration Date
- Under each Grant type table, Records are sorted in the descending order of Grant Date.
- For each Grant shows one expand icon. On click of expand icon, shows details of that particular Grant. 
- When Grant is expanded, shows Shrink icon. On Click of Shrink icon, hides  table of that particular Grant.
- On mouse hover of any grant record, it shows hover effect and vertmore action menu at right side.

  - Vertmore action are : `Edit` & `Delete`.
    - On Edit, opens edit dialog of that Grant.
    - On Delete, peform delete action.

### UI Rule

Mockup //TODO

- Message when no Incentive stock available : `No Incentive Stock Found`.
- Message when no Grant available : `No Records Found`.




## Browse any single Grant

### UX Rule

- For each grant shows details of its Vesting schedule
- Based on different Grant type, their columns are different. Some columns are common and some columns are specific to only some types.
- Common column for all types :
  - Vest Date
  - Unvested
    - If Vest Date is not passed, means its Unvested. Those shares are shown in this column
  - Vested
    - If Vest Date is passed, means its vested. Those shares are shown in this column
- Column for `NQSO` and `ISO` type :
  - When shares are Unvested, following columns will be always blank
  - Exercised
    - Show total number of Exercised shares for particular vest schedule. If nothing is exercised it will be blank.
  - Exercise Price
    - Shows average Exercise price from exercise data
    - Suppose any Grant has one vesting schedule of 10000 shares. These 10000 shares are exercised in two lot. 
    - In first lot, 4000 shares are exercised at price of 11. In second lot, 6000 shares are exercised at price of 13
    - So average exericse price for these lot will be calculated in this way `(11* 4000) + (13*6000) / 10000 `
  - Exercise Gain
    - Shows total Exercised gain from exercise data
  - Exercisable
    - Shows how many shares are left to exercise.
    - When there isn't any shares left for exercise, it shows `-` 
  - Exercise Cost
    - It shows the cost of exercising the shares
    - `Exercise Cost`  = `Exercisable` * `Exercise Price of Grant`.
    - When Exercisable is zero, it shows `-` 
  - Vested Value
    - `Vested Value` = `Exercisable`  * `Current Stock Price of the Incentive Stock`
  - Vested Gain
    - `Vested Gain` = `Vested Value` - `Exercise Cost`.
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
- Unvested schedule rows won't be clickable and thats why its hover effect won't be available
- On hover of Vested schedule rows,
  -  It shows `Exercise` or `Vested Details`   button at the right side
  -  Doesn't show this action buttons when everything is exercised or vested details is entered
  -  `Exercise` button is shown for `NQSO` and `ISO` types
  -  `Vested Details` button is shown for `RSA`, `RSU` & `Carried Interest`.
  -  On click of Row, opens view dialog of Exercise or Vested details

### UI Rule

Mockup of NQSO/ISO type //TODO

Mockup of RSA/RSU type //TODO

Mockup of Carried Interest type //TODO