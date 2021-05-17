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
- Once exercise is performed or Vested details are entered, Edit is restricted. Following fields can't be changed
  - TODO//

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

- On click of grant or expand icon, Grant will expand. 
- For each types, show separate table.
- Each table have some common and some different column.
- Common column for all types :
  - Vest Date
    - Date of Vesting.
  - Unvested
    - Unvested Share of vesting schedule.
  - Vested
    - Vested Share
- Column for `NQSO` and `ISO` type :
  - Exercised
    - Show total count of Exercised shares.
  - Exercise Price
    - Shows total of Exercise price.
  - Exercise Gain
    - Shows total exercised gain of that schedule.
  - Exercisable
    - Shows how many shares are left to exercise.
  - Exercise Cost
    - It shows the cost of exercising the share.
    - `Exercise Cost`  = `Exercisiable` * `Exercise Price of Grant`.
  - Vested Value
    - `Vested Value` = `Exercisiable`  * `Stock Price of that Incentive Stock`
  - Vested Gain
    - `Vested Gain` = `Vested Value` - `Exercise Cost`.
- Column for `RSA` & `RSU` type
  - Vested Value
    - Applicable only after Vested details is added.
    - It show the multiplication of `Price at Vest` and `Vested` shares. 
  - Unvested Value
    - Applicable only for `Unvested` Shares. Its show the multiplication of `Unested` shares and `Stock Price`.
    - It shows unvested value of that vesting schedule.
- Column for `Carried Interest` type
  - Cumulative Vested
    - It shows total percent of Vested.
  - Gift/Sale
    - It shows what percentage the user has Gifted or Sold.
  - Retained
    - It shows what percentage the user has retained.
- Records are sorted as per vesting schedule
- Show the total of each column at top except `Vest Date` and `Exercise Price`.
  - For `Exercise Price`, Total of `Exercise Price` = `((Total of Shares Held * Exercise Price) + (Total of Shares Sold * Exercise Price)) / (Total of Shares held + Total of Shares Sold)`
- Not all rows of vesting schedule will be clickable. Rows which is not vested won’t be clickable and also won't be shown hover effect.
- On hover of vested records, shows `Exercise` or `Vested Details`  action button at the right side on the row.
  - `Exercise` button is for `NQSO` and `ISO` types and `Vested Details` button is for `RSA`, `RSU` & `Carried Interest`.
  - Doesn't show `Exercise` or `Vested Details` action button in the row when all exercise completed.
  - On click of Row, opens view dialog.

### UI Rule

Mockup of NQSO/ISO type //TODO

Mockup of RSA/RSU type //TODO

Mockup of Carried Interest type //TODO