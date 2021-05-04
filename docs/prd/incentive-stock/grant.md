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

- Error message : `Company with same name already exists`.

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

#### Vest at Death?

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
- When user open edit dialog after the exercise, some of the fields and whole vesting section are disable like `Grant Date` , `Share Granted`, `Expiration Date` & `whole Vesting section`

### UI Rule

Mockup when some of field is disable //TODO

- Message for Edit dialog : `As exercise is performed of this Grant, Edit is restricted for some fields`.



## Delete Grant

### System Rule

- If there is some exercise performed in the grant, that grant can't be deleted.

### UX Rule

- When grant can't be deleted then open delete not possible dialog.

### UI Rule

Mockup of Delete confirmation dialog & Delete not possible dialog //TODO



## Browse Grant