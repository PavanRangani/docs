# Vested Details 

`Vested Details` is applicable only for `RSA`, `RSU` & `Carried Interest`. 

## Entity Details

#### Price at Vest

Applicable only for `RSU` & `RSA`.

Price at user adding a vesting details. Decimal is not allowed. Its a mandatory field.

#### Vested Gain

Applicable only for `RSU` & `RSA`.

Its calculated field. Decimal is not allowed. 

`Vested Gain` = `Price of Vest` * `No of Shares Vested`.

#### Taxes Withheld

Applicable only for `RSU` & `RSA`.

Its amount input field. Decimal is not allowed. Its a mandatory field.

#### Type

Applicable only for `Carried Interest`.

It shows whether you want to gift or sell the percent. Its possible value can be `Gift` or `Sell`.

#### Gift Date or Sell Date

Applicable only for `Carried Interest`.

When type is `Gift` then shows `Gift Date` otherwise shows `Sell Date`.

Its a mandatory field. Its always grater than `Vest Date`.

#### Gift Percent or Sell Percent

Applicable only for `Carried Interest`.

When Type is `Gift` then shows `Gift Percent` otherwise shows `Sell Percent`.

Percentage input field. Decimal is allowed. Its a mandatory field.  It value is less than or equal to `No of Percent Vested`.

#### Notes

Free form text input field.



## Add Vested Details

### System Rule

- `Vested Details` can be added only for the Vesting Schedule.

### UX Rule

- For `Carried Interest`
  - Gift/Sale date is always grater than `Vest Date` otherwise system shows error message.
  - Gift/Sale percentage is always lower than `Percent Vested` otherwise system shows error message.

### UI Rule

Mockup //TODO

- For `Carried Interest`
  - Error message when Gift/Sale date < Vest date : `Should be >= Vest Date`.
  - Error message when Gift/Sale percentage > No of Percent Vested : `Should be <= {No of Percent vested}`.




## Edit Vested Details

### System Rule

- Can be editable anytime.

### UI Rule

Mockup //TODO



## View Vested Details

### UX Rule

- Shows vesting details of any particular vesting schedule.
- When `Vesting details` or `Gift/Sale details` is not added for any vesting schedule, it will show proper message.
- When vesting details of some shares are left to be added then the action name will be `Vested Details`.
- When there is nothing left, action name will be `Edit`


- When Notes is too long it will be shown in multiple line (Never show ellipses).
- If the user has completed the vested details of all vested shares, the `Edit Vested Details` will be renamed `Edit`.

### UI Rule

Mockup //TODO

- Message for `RSU` & `RSA` when vested details is not available : `No Shares Vested`.
- Message for `Carried Interest` when Gift/sale details is not available : `No Percentage Vested`. 