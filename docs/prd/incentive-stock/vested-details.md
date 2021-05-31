# Vested Details 

`Vested Details` is applicable only for `RSA`, `RSU` & `Carried Interest`. 

In NQSO and ISO, shares needed to be exercised after the vest date. In RSA, RSU and Carried interest, vesting is done automatically. So here exercise action is not required. Instead, here application allows to enter Vested Details.

## Entity Details

#### Price at Vest

Applicable only for `RSU` & `RSA`.

Price at which stock is vested. Decimal is not allowed. Its a mandatory field.

#### Vested Gain

Applicable only for `RSU` & `RSA`.

Its calculated field. Decimal is not allowed. 

`Vested Gain` = `Price of Vest` * `No of Shares Vested`.

#### Taxes Withheld

Applicable only for `RSU` & `RSA`.

Its amount input field. Decimal is not allowed. Its a mandatory field.

#### Type

Applicable only for `Carried Interest`. Its possible value can be `Gift` or `Sale`.

#### Gift Date or Sale Date

Applicable only for `Carried Interest`.

When type is `Gift` , It shows `Gift Date` otherwise it shows `Sale Date`.

Its a mandatory field. This date should be greater than or equal to `Vest Date`.

#### Gift Percent or Sale Percent

Applicable only for `Carried Interest`.

When Type is `Gift` then shows `Gift Percent` otherwise shows `Sale Percent`.

Percentage input field. Decimal is allowed. Its a mandatory field.  Its value should be less than or equal to `No of Percent Vested`.

#### Notes

Free form text input field.



## Add Vested Details

### System Rule

- `Vested Details` can be added only for the Vesting Schedule whose Vest date is passed.

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

- Can be edited anytime.

### UI Rule

Mockup //TODO



## View Vested Details

### UX Rule

- Shows Vested details of any particular vesting schedule.
- When `Vested details` or `Gift/Sale details` is not added for any vesting schedule, it will show proper message.
- When Vested details are not added, action name will be `Vested Details`, otherwise action name will be `Edit`


- When Notes is too long it will be shown in multiple line (Never show ellipses).

### UI Rule

Mockup //TODO

- Message for `RSU` & `RSA` when vested details is not available : `No Shares Vested`.
- Message for `Carried Interest` when Gift/sale details is not available : `No Percentage Vested`. 