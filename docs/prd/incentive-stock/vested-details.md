# Vested Details 

## Entity

#### Vest Date

Shows the date of vesting. 

Applicable for `RSU` , `RSA` & `Carried Interest`.

#### No of Shares Vested or No of Percentage Vested

`No of Shares Vested` is applicable for `RSU` & `RSA` and `No of Percentage Vested` is applicable for `Carried Interest`.

No of Shares Vested is show how many shares are vested.

No of Percentage Vested is shows how many percentage are vested.

#### Price at Vest

Amount of Vesting time. Decimal is not allowed. Its a mandatory field.

Applicable only for `RSU` & `RSA`.

#### Vesting Gain

Calculated and disable field. Decimal is not allowed. 

`Vesting Gain` = `Price of Vest` * `No of Shares Vested`.

Applicable only for `RSU` & `RSA`.

#### Taxes Withheld

Amount of tax withheld. Decimal is not allowed. Its a mandatory field.

Applicable only for `RSU` & `RSA`.

#### Type

Types dropdown field. It shows whether you want to gift or sell the percentage vested.

Type can be either `Gift` or `Sell`.

#### Gift Date or Sell Date

Date of Gift/Sale. Its a mandatory field. Its always grater than `Vest Date`.

When Type is `Gift` then shows `Gift Date` otherwise shows `Sell Date`.

#### Gift Percentage or Sell Percentage

Percentage input field. Decimal is allowed. Its a mandatory field.  Its value is less than or equal to `No of Percentage Vested`.

When Type is `Gift` then shows `Gift Percentage` otherwise shows `Sell Percentage`.

#### Notes

Free form text input field.



## View Vested Details

### System Rule

### UX Rule

- Show proper message when no Gift/Sale details available.

### UI Rule

Mockup

- When any Gift/Sale details is not available : `No Percentage Vested`. 