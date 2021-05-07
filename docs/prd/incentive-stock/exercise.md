# Exercise

## Entity

#### Exercise Date

Date input field when the exercise is performed. Its a mandatory field.

It must be in between `Vest Date` and `Expiration Date`.

#### Exercise Type

Types of exercise. Its values are `Buy & Hold` , `Exercise & Sell `, `Sell to Cover`. Default value is set to `Exercise & Sell`.

#### Shares Sold

Number input field. It shows how many shares you are going to sell. Its always lower than `No of Shares Vested`.  Decimal is not allowed.

Applicable only when `Exercise Type` is `Exercise & Sell ` & `Sell to Cover`. For other types its value is set to `-`.

#### Shares Held

Number input field. It shows how many shares you are going to hold. Its always lower than `No of Shares Vested`.  Decimal is not allowed.

Applicable only when `Exercise Type` is `Buy & Hold`. For other types its value is set to `-`.

#### Qualified

Date input field. Its a mandatory field. 

Its always either grater than `Exercise Date + 1 year + 1 day` or `Gran Date + 2 Years`. 

For e.g. If Exercise Date is `12/25/2019` then qualified date must be grater than `12/26/2020` Or If Grant Date is `01/12/2017` then qualified date must be grater than `01/12/2019`.

Applicable only for `ISO` type.

#### QSBS Qualified

`QSBS Qualified` can be  `Yes`, `No` & `Unknown`. Default value is set to `Unknown`.

#### Exercise Price

Exercise Price per share when the exercise is performed. Its a amount and mandatory field.

Decimal allowed field.

#### Exercised Gain

Calculated field.

 `Exercised Gain` = `Shares Held or Shares Sold` * `[(Exercise Price of Grant)-(Exercise Price)]`. Decimal allowed field.

#### Federal Tax Withholding

User enter amount of Federal Tax Withholding. Decimal is allowed. Its a mandatory field.

#### Stock Basis

Calculated and disable field. `Stock Basis` = `Shares Held or Shares Sold` * `Exercise Price`. Decimal is allowed.

#### Notes

Free form text input field.



## Add Exercise

### System Rule

- Exercise can only be applicable for Vested Share.
- Once the shares are vested and user want to perform exercise on that shares then `Add Exercise` action can be used.

### UX Rule

- `Exercise` is applicable only for `NQSO` & `ISO` types.


- At least one records is always shown in the `Exercise Details`.
- When `Exercise Date`  is lower than `Expiration Date` or higher than `Vest Date` then system shows error message.
- When total of Shares Held & Shares Sold is grater than `No of Share Vested` then system show error message.
- For `ISO` type, If `Qualified` date is grater than `Exercise Date + 1 year + 1 day` or `Gran Date + 2 Years` then system show error message. 

### UI Rule

Mockup //TODO

- Error message when Exercise Date > Expiration date : `Should be <= {Date of Expiration} (Expiration Date)`.

- Error message when Exercise Date > Expiration date : `Should be <= Vest Date`.

- Error message for Shares Held & Shares Sold :  `Total of Shares Sold & Shares Held can not be >= 1,00,000`.

- Error message for `Qualified` : `Should be >= {Exercise Date + 1 year + 1 day}`.




## Edit Exercise

### System Rule

- Can be editable anytime.
- If the user has completed the exercise of all vested shares, the `Edit Exercise` will be renamed `Edit`.

### UX Rule

- `Exercise` is applicable only for `NQSO` & `ISO` types.


- Exercise is already performed and if the user wants to update or delete that exercise, the `Edit Exercise` action is used.


### UI Rule

Mockup //TODO




## View Exercise

### System Rule

- On click of vested records that have been vested, open view dialog of exercise.

### UX Rule

- Shows proper message when exercise is not available.

- `Exercised` field shows how many shares you have exercised. 

  - If all the share exercises are performed, the value of these 4 `Exercisable`, `Exercise Cost`, `Vested Value` & `Vested Gain` field will be set to `-`.

- If the user has completed the exercise of all vested shares, the `Edit Exercise` will be renamed `Edit`.

- Column for the `Exercise Details`.

  - Exercise Date
  - Exercise Type
  - Shares Sold
    - If shares is not available then show `-`.
    - Decimal doesn't appears.
  - Shares Held
    - If shares is not available then show `-`.
    - Decimal doesn't appears.
  - Qualified
    - Applicable only for `ISO` type.
  - QSBS Qualified
    - When it value is `Unkonwn` then shows `-` here otherwise shows `Yes` or `No`.
  - Exercise Price
    - Decimal appears. 
    - Show total of `Exercise Price` in the column.
  - Exercised Gain
    - Decimal appears.
    - Show total of `Exercised Gain` in the column.
  - Federal Tax Witholding
    - Decimal appears.
    - Applicable only for `NQSO` type.
  - Stock Basis
    - Decimal appears.
  - Notes
    - If notes is not available then show `-`.
    - When Notes is too long it will be shown in multiple line (Never show ellipses).

- For `Exercise Details`, record are sorted in the descending order of date.

  ​

### UI Rule

Mockup //TODO

- Message when exercise is not available : `No Shares Exercised`.