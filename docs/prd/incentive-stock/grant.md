# Grant

## Incentive Stock entity Details

#### Company Name

Incentive stock(Company) to which grant is linked. Company can be Public, Private & Limited Partnership.

#### Type

Show type of the selected company. Its a disable field.

#### Date

Date when `Stock Price` is added. Its a mandatory field. It should not be larger than current's date.

Applicable only for `Private` type company.

#### Stock Price

Amount field. Its a mandatory field.

Applicable only for `Private` type company.

#### Stock Symbol

Show stock symbol of that company. Its disable field.

Applicable only for `Public` type company.



## Add Incentive Stock

### UX Rule

- Does not allowed to add same name company otherwise system shows error message.

### UI Rule

Mockup //TODO

- Error message : `Incentive Stock already exists`.

## Edit Incentive Stock

### UX Rule

- Can be editable anytime.
- If incentive stock has grant then company name can't be changed.

### UI Rule

Mockup //TODO

## Delete Incentive Stock

### UX Rule

- If Incentive stock has grant then delete not possible otherwise delete possible.
- On clicks, open delete confirmation dialog.

### UI Rule

Mockup of delete not possible & Mockup of Delete possible



## Grant Entity Details

#### Stock Name

Shows the name of the stock company. Its disable field.

#### Custodian

Shows all types of company here.

Not applicable for the `Carried Interest` type stock.

#### Grant ID

Free form Text Input field. Its mandatory field. 

#### Grant Date

Date on which this grant is added. Its a mandatory field.

#### Shares Granted or Percent Granted

`Shares Granted` is applicable for `NQSO`, `ISO`, `RSA`, `RSU` types. Amount enter field. Its mandatory field. Decimal is not allowed. Default value is set to `$0`.

`Percent Granted` is applicable only for `Carried Interest` type. Percentage input field. Decimal is allowed. Default value is set `0.00%`.

#### Exercise Price

Amount enter field. Its mandatory field. Decimal allowed. Default value is set to `$0.00`.

Applicable only for `NQSO`& `ISO` types.

#### Expiration Date

Date on which this grant is expired.

Its always grater than `Grant Date` . Applicable only for `NQSO`& `ISO` types.

#### Vest at Death

`Vest at death` can be  `Yes`, `No` & `Unknown`. Default value is set to `Unknown`.

Applicable only for `NQSO`, `ISO` & `RSU` types.

#### Shares Purchased on Grant

Number of shares purchased when this Grant is added.

Applicable only for `RSA` type.

#### Price per Share

Amount of Price per Share. Decimal is not allowed.

Applicable only for `RSA` type.

#### Total Purchase Price

Calculated field. Its disable field. `Total Purchase Price` = `Shares Purchased on Grant` * `Price per Share`.

Applicable only for `RSA` type.

#### Liquidation Condition

`Liquidation Condition` can be  `Yes`, `No` & `Unknown`. Default value is set to `Unknown`.

#### Treatment on Termination

User can add any text in this field.

#### 83b Election Filed

`83b Election Filed` can be  `Yes`, `No` & `Unknown`. Default value is set to `Unknown`.

#### 83b Date

Date input field. Its a mandatory field.

Applicable only when `83b Election Filed` is set to `Yes`.

#### 83b Price

Amount enter field. Its a mandatory field. Decimal is not allowed. Default value is set to `$0`.

Applicable only when `83b Election Filed` is set to `Yes`.

#### 83b Income

Calculated field. Its a disable field.  `83b Income` = `Shares Granted`\*`83b Price`.

Applicable only when `83b Election Filed` is set to `Yes`.

#### Type

Type of vesting. Type can be either `Simple` or `Custom` .

#### First Vest Date

Date input field. Its a mandatory field. 

It allows to enter the start date of the vesting schedule. Its always greater than `Grant Date`.

Applicable only when Vesting type is `Simple`.

#### Shares in First Vesting

Number input field. Decimal is not allowed. It allows to enter the first share of the vesting of the vesting schedule.

Its always lower than `Shares Granted`. Applicable only when Vesting type is `Simple`.

#### Vesting Frequency

Vesting frequency of this Grant. Its values are `Annual`, `Quarterly` & `Monthly`. Default `Annual` is selected.

If the vesting frequency is `Annual`, the system will create a vesting schedule every year from first vest date to expiration date.

Same Vesting frequency is `Monthly`, system will create a vesting schedule for every month and Vesting Schedule is `Quarterly`, system will create a vesting schedule for quarterly from first vest date to expiration date.

Applicable only when Vesting type is `Simple`.

#### Vesting Periods

Number input field. Decimal is not allowed. 

Applicable only when Vesting type is `Simple`.

#### Shares per Periods

Number input field. Decimal is not allowed. It shows the number of shares per periods.

Applicable only when Vesting type is `Simple`.

#### Date

Its a multiple date input field. Its a mandatory field. At least field always shown.

Applicable only when Vesting type is `Custom`.

#### Shares

Its a multiple number input field. Its a mandatory field. At least field always shown.

Applicable only when Vesting type is `Custom`.



## Add Grant

### System Rule

- `NQSO`, `ISO`, `RSA`, `RSU` is applicable for `Public` & `Private` type incentive stock and `Carried Interest` is applicable only for `Limited Partnership` type incentive Stock.
- Does not allowed to add a grant while vesting details is not available.

### UX Rule

- Show proper message under vesting schedule until user adds data to vesting. 
- Once user enters all details then system will show a schedule of vesting in the `Vesting Schedule` section.
- Do not allowed to enter same Grant ID for the same type otherwise system shows error message.
- When `Expiration Date` is lower than `Grant Date`, system shows error.
- When `Grant Date` is grater than `Expiration Date`, system shows error.
- `Vest Date` is always grater than `Grant Date` and lower than `Expiration Date`.
- When `Shares in First Vesting` is grater than `Shares Granted`, system shows an error message.

### UI Rule

Mockup for Empty & Mockup when schedule is available //TODO

- Message for vesting schedule : `Schedule will be auto populated here once you specify the above details`
- Error message for Expiration Date, when Expiration date is lower than Grant Date : `Should be always >= Grant Date`
- Error message for Grant date when Grant date is grater than Expiration Date : `Date must be <= Expiration Date`
- Error message for Vest Date : `Should be >= Grant Date` & `Should be <= Expiration Date`.
- Error message of `Share in First Vesting` : //TODO




## Edit Grant

### System Rule

- Can be editable anytime.
- Some of the fields cannot be edited if the exercise is performed of that grant. 

### UX Rule

- If the user opens the Edit dialog after the exercise, a message will appear.
- When user open edit dialog after the exercise, some of the fields and whole vesting section are shows disable. Some of the fields like `Grant Date` , `Share Granted`, `Expiration Date` & `whole Vesting section`.

### UI Rule

Mockup when some of field is disable //TODO

- Message for Edit dialog : `As exercise is performed of this Grant, Edit is restricted for some fields`.



## Delete Grant

### System Rule

- If there is some exercise performed in the grant, that grant can't be deleted.

### UX Rule

- When grant can't be deleted, opens delete not possible dialog.
- If grant can be deleted, opens delete confirmation dialog.

### UI Rule

Mockup of Delete confirmation dialog & Delete not possible dialog //TODO



## Browse Grant

### UX Rule

- Show proper message when no `Incentive Stock` available.
- There is total three types of Incentive Stock available like `Public`, `Private` & `Limited Partnership`.
- Each Incentive stock has own add button and vertmore action.
- Vertmore actions : `Edit`, `Delete`.
  - Stock can be editable or deleted anytime.
  - If grants doesn't exists under incentive stock,
    - So user can update or delete that stock.
    - On click of `Delete`, opens delete confirmation dialog.
  - If grants exists under incentive stock,
    -  `Edit` action can not be applicable for `Public` & `Limited Partnership` type.
    - On click of `Delete`, opens delete not possible dialog.
- When Incentive Stock type is `Private` or `Public`
  - On click of Add button, opens dropdown with all types. 
  - Show stock price with date in the header of incentive Stock.
  - If stock price or Stock date is not retrieve then show proper message.
- When Incentive Stock type is `Limited Partnership`
  - On click of Add button, opens `Add: Carried Interest` type dialog.


- Show proper message when Grant is not available.


- For each types, show separate table.
- Position of each type table is : `Non-Qualified Stock Option`, `Incentive Stock Option`, `Restricted Stock Award`, `Restricted Stock Unit`, & `Carried Interest`.
- Each table have some common and some different column.
- Common column for all types
  - Grant ID 
    - It shows Grant ID
  - Grant Date 
    - It shows Grant Date
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
    - Shows `Exercise Price` when grant is made.
  - Expiration Date
    - Show date when Grant is expired.
- For `RSA` & `RSU`
  - Same as common column.
- For `Carried Interest`
  - Same as common column.
- Records are sorted in the descending order of Grand Date.
- Each records have one expand button. On click, expand that Grant.
- On click of row expand that grant. 
  - When Grant is expand then show `Reduce` icon. On click, reduce that grant.
- On hover shows hover effect. 
- On hover shows, vertmore action menu at right side on the row.
  - Vertmore action are : `Edit` & `Delete`.
  - On Edit, opens edit dialog of that Grant.
  - On Delete, if delete is possible then shows `Delete Confirmation` dialog otherwise shows `Delete Not Possible` dialog.

### UI Rule

Mockup //TODO

- Message when no Incentive stock available : `No Incentive Stock Found`.
- Message when no Grant available : `No Records Found`.
- Mockup of Delete Confirmation dialog of Incentive Stock //TODO
- Mockup of Delete Not Possible dialog of Incentive Stock //TODO
- Mockup of Delete Confirmation dialog of Grant //TODO
- Mockup of Delete Not possible dialog of Grant //TODO



## Browse any single Grant

### UX Rule

- On click of each grant or click expand icon, Expand that Grant.
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
    - Shows total shares exercise price.
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
    - It shows the vested value of that vesting schedule.
  - Unvested Value
    - It shows unvested value of that vesting schedule.
- Column for `Carried Interest` type
  - Cumulative Vested
  - Gift/Sale
  - Retained
- Records are sorted as per vesting schedule
- Show total of every column except `Vest Date` and `Exercise Price`.
  - For `Exercise Price`, Total of `Exercise Price`
- Not all rows of vesting schedule will be clickable. Rows which is not vested won’t be clickable and also won't be shown hover effect.
- On hover of vested records, shows `Exercise` or `Vested Details`  action button at the right side on the row.
  - Doesn't show `Exercise` or `Vested Details` action button when all exercise completed.
  - `Exercise` button is for `NQSO` and `ISO` types and `Vested Details` button is for `RSA`, `RSU` & `Carried Interest`.
  - On click of Row, opens view dialog.

### UI Rule

Mockup //TODO