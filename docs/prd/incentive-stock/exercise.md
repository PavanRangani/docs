# Exercise

For NQSO and ISO type of Grant, user needs to purchase shares at defined Exercise price. To track that purchase data, Exercise can be added with each vesting schedule record. `Exercise` is applicable only for `NQSO` & `ISO` types.

One Vesting schedule can have partial exercise also. One Vesting schedule can have multiple exercise.

## Entity Details

#### Exercise Date

Date when the exercise is performed. Its a mandatory field.

It can be greater than `Vest date` and less than `Expiration date`

#### Exercise Type

Types of exercise. Its possible value can be `Buy & Hold` , `Exercise & Sell `, `Sell to Cover`. 

Default value is  `Exercise & Sell`.

#### Shares Sold

Applicable only when `Exercise Type` is `Exercise & Sell ` & `Sell to Cover`. For `Buy & Hold` it will be set to  `-`.

Number input field. Decimal is not allowed. It shows how many shares are sold. Its should be lower than `No of Shares Vested`.  

#### Shares Held

Applicable only when `Exercise Type` is `Buy & Hold`. For other types its value is set to `-`.

Number input field. Decimal is not allowed.

It shows how many shares are hold. Its always lower than `No of Shares Vested`.

#### Qualified Disposition Date

Applicable only for `ISO` type.

Its mandatory and  read only field which is auto calculated from Exercise date.

Calaculation Formula = `Exercise Date + 1 year + 1 day`. It cannot be less than `Grant date + 2 years`

For e.g. Grant date is `12/20/2018`. Its first Vest date is `01/15/2019` and Exercise Date of this vest date is `12/25/2019`. So Qualified Dispostion Date will be auto calculated to  `12/26/2020`. Here QDD is > `12/20/2020`. So it is greater than Grant date + 2 years. So it is allowed. 

In above example if Exercise date is considered as  `12/16/2019`, then its QDD will be `12/17/2020` which is not greather than `12/20/2020`. So validation will failed.



#### QSBS Qualified

Its possible value can be `Yes`, `No` or `Unknown`. Default value is set to `Unknown`.

#### Exercise Price

Actual Price of the stock when exercise is performed.

Its amount input field. Its mandatory field. Decimal is allowed. Default value is set to `$0.00`.

#### Federal Tax Withholding

Applicable only when `NQSO`.

Its amount input field. Decimal is allowed. Its a mandatory field.

#### Notes

Free form text input field.



## Add Exercise

### System Rule

- Exercise can be added only for the vested schedule. 

### UX Rule


- At least one records is always shown in the `Exercise Details`.
- When `Exercise Date`  is lower than `Expiration Date` or higher than `Vest Date` then system shows error message.
- When total of `Shares Held` & `Shares Sold` is grater than `No of Share Vested` then system show error message.
- For `ISO` type, `Qualified Disposition Date` will be validated as per above logic. When validation fails it will show error.

### UI Rule

Mockup //TODO

- Error message when Exercise Date > Expiration date : `Should be <= {Date of Expiration} (Expiration Date)`.

- Error message when Exercise Date < Vest date : `Should be <= Vest Date`

- Error message for Shares Held & Shares Sold :  `Total of Shares Sold & Shares Held can not be >= {No of Shares Vested}`.

- Error message for `Qualified Disposition Date` : `Should be > {date} (Grant date + 2 years)`.




## Edit Exercise

### System Rule

- Can be editable anytime.


### UI Rule

Mockup //TODO




## View Exercise

### UX Rule

- Shows exercise data of any particular vesting schedule.

- When exercise is not performed for any vesting schedule, it will show proper message about no exercise is performed.

- `Exercised`  shows how many shares you have already exercised. 

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

- When nothing left for exercise, these four fields `Exercisable`, `Exercise Cost`, `Vested Value` & `Vested Gain`  will be set to `-`.

- When atleast some Exercisable shares available action name will be `Exercise`

- When there is nothing left to exercise, action name will be `Edit`

- Shows details of exercise in table format

- Columns 

  - Exercise Date
  - Exercise Type
  - Shares Sold
    - If shares is not available then show `-`.
    - Decimal doesn't appears.
  - Shares Held
    - If shares is not available then show `-`.
    - Decimal doesn't appears.
  - Qualified Disposition Date
    - Applicable only for `ISO` type.
  - QSBS Qualified
    - When it value is `Unkonwn` then shows `-` here otherwise shows `Yes` or `No`.
  - Exercise Price
    - Shows Decimal
    - Show average of `Exercise Price` at the bottom in the column.
  - Exercised Gain
    - Shows decimal.
    - `Exercised Gain` = `Shares Held or Shares Sold` * `[(Exercise Price of Grant)-(Exercise Price)]`.
    - Show total of `Exercised Gain` at the bottom in the column.
  - Federal Tax Withholding
    - Decimal appears.
    - Applicable only for `NQSO` type.
  - Stock Basis
    - Decimal appears.
    - `Stock Basis` = `Shares Held or Shares Sold` * `Exercise Price of particular Exercise`. Decimal is allowed.
  - Notes
    - If notes is not available then show `-`.
    - When Notes is too long it will be shown in multiple line (Never show ellipses).

- For `Exercise Details`, record are sorted in the descending order of date.

  

### UI Rule

Mockup //TODO

- Message when exercise is not available : `No Shares Exercised`.