# Vested Details 

## Entity Details

#### Vest Date

Applicable for `RSU` , `RSA` & `Carried Interest`.

Shows the date of vesting. 

#### No of Shares Vested or No of Percentage Vested

`No of Shares Vested` is applicable for `RSU` & `RSA` and `No of Percentage Vested` is applicable for `Carried Interest`.

`No of Shares Vested` is show how many shares are vested.

`No of Percentage Vested` is shows how many percentage are vested.

#### Price at Vest

Applicable only for `RSU` & `RSA`.

Amount of Vesting time. Decimal is not allowed. Its a mandatory field.

#### Vesting Gain

Applicable only for `RSU` & `RSA`.

Its calculated field. Decimal is not allowed. 

`Vesting Gain` = `Price of Vest` * `No of Shares Vested`.

#### Taxes Withheld

Applicable only for `RSU` & `RSA`.

Its amount input field. Decimal is not allowed. Its a mandatory field.

#### Type

Applicable only for `Carried Interest`.

It shows whether you want to gift or sell the percentage vested.

Its possible value can be `Gift` or `Sell`.

#### Gift Date or Sell Date

Applicable only for `Carried Interest`.

When type is `Gift` then shows `Gift Date` otherwise shows `Sell Date`.

Date of Gift/Sale when percent is vested. Its a mandatory field. Its always grater than `Vest Date`.

#### Gift Percent or Sell Percent

Applicable only for `Carried Interest`.

When Type is `Gift` then shows `Gift Percent` otherwise shows `Sell Percent`.

Percentage input field. Decimal is allowed. Its a mandatory field.  It value is less than or equal to `No of Percent Vested`.

#### Notes

Free form text input field.



## Add Vested Details

### System Rule

- `Vested Details` can only be applicable for Vested Share.
- Once the shares/percent are vested and user want to add vested details on that shares/percent then `Add Vested Details` action can be used.

### UX Rule

- `Vested Details` is applicable for `RSA`, `RSU` & `Carried Interest` types.
- For `Carried Interest`
  - Gift/Sale date is always grater than Vest Date otherwise system shows error message.
  - Gift/Sale percentage is always lower than Percent Vested otherwise system shows error message.

### UI Rule

Mockup //TODO

- For `Carried Interest`
  - Error message when Gift/Sale date < Vest date : `Should be >= Vest Date`.
  - Error message when Gift/Sale percentage > No of Percent Vested : `Should be <= {No of Percent vested}`.




## Edit Vested Details

### System Rule

- Can be editable anytime.
- If the user has completed the vested details of all vested shares, the `Edit Vested Details` will be renamed `Edit`.

### UX Rule

- `Vested Details` is applicable for `RSA`, `RSU` & `Carried Interest` types.


- Vested Detail is already added and if the user wants to update, then `Edit Vested Details` action is used.


### UI Rule

Mockup //TODO



## View Vested Details

### System Rule

- On click of vested records that have been vested, open view dialog of vested details.

### UX Rule

- Shows proper message when `Vested details` or `Gift/Sale details` is not available.
- When Notes is too long it will be shown in multiple line (Never show ellipses).
- If the user has completed the vested details of all vested shares, the `Edit Vested Details` will be renamed `Edit`.

### UI Rule

Mockup //TODO

- Message for `RSU` & `RSA` when vested details is not available : `No Shares Vested`.
- Message for `Carried Interest` when Gift/sale details is not available : `No Percentage Vested`. 