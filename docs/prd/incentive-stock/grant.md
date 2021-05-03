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

- When user select same name company for the second time, system shows proper error.

### UI Rule

Mockup //TODO



## Edit Incentive Stock

### UX Rule

- Can be editable anytime.

### UI Rule

Mockup //TODO



## Delete Incentive Stock

### UX Rule

- Can be deleted anytime.
- On clicks open delete confirmation dialog.

### UI Rule

Mockup //TODO



## Grant Entity Details

#### Stock Name

Shows the name of the stock company. Its disable field.

#### Custodian

Shows all types of company here.

Not applicable for the `Carried Interest` type stock.

#### Grant ID

Grant ID of this Grant. Its mandatory field. 

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

Its always grater than `Grant Date` otherwise system shows proper message.

Applicable only for `NQSO`& `ISO` types.

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

Date input field. Its a mandatory field. Its always greater than `Grant Date`.

Applicable only when Vesting type is `Simple`.

#### Shares in First Vesting

Number input field. Decimal is not allowed. 

Applicable only when Vesting type is `Simple`.

#### Vesting Frequency

Vesting frequency of this Grant. Its values are `Annual`, `Quarterly` & `Monthly`. Default `Annual` is selected.

Applicable only when Vesting type is `Simple`.

#### Vesting Periods

Number input field. Decimal is not allowed. 

Applicable only when Vesting type is `Simple`.

#### Shares per Periods

Number input field. Decimal is not allowed. 

Applicable only when Vesting type is `Simple`.

#### Date

Its a multiple date input field. Its a mandatory field. At least field always shown.

Applicable only when Vesting type is `Custom`.

#### Shares

Its a multiple number input field. Its a mandatory field. At least field always shown.

Applicable only when Vesting type is `Custom`.



## Add Grant

### System Rule

- There is total 5 types of Grant : `NQSO`, `ISO`, `RSA`, `RSU` & `Carried Interest`.
- ​

### UX Rule

- Show proper message under vesting schedule until user adds data to vesting. 
- When user enter `Expiration date` is lower than `Grant Date`, then system show error.

### UI Rule

Mockup

- Message for vesting schedule : `Schedule will be auto populated here once you specify the above details`
- Error message for Grant Date : 
- Error message for Expiration Date : 