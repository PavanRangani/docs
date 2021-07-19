# Accelerate

Applicable only for `Unvested` scheduled of `NQSO`, `ISO`, `RSA` & `RSU` type incentive stock.

## Entity Details

#### Event Date

- Date input field. Its a mandatory field.
- For `NQSO` & `ISO`, it should be greater than `Grant Date` and less than `Expiration Date`.
- For other types, it should be greater than `Grant Date`.

#### Exercise Date

- Applicable only for `NQSO` & `ISO`.

- Date when the exercise is performed. Its a mandatory field.

- It can be greater than or equal to `Vest date` and less than or equal to `Expiration date`

#### Exercise Type

+ Applicable only for `NQSO` & `ISO`.

- Types of exercise. Its possible value can be `Buy & Hold` , `Exercise & Sell `, `Sell to Cover`. 

- Default value is  `Exercise & Sell`.

#### Shares Sold

- Applicable only for `NQSO` & `ISO`.

- Applicable only when exercise type is `Exercise & Sell ` & `Sell to Cover`. For `Buy & Hold`, it will be set to  `-`. 

- Number field. Its a disable field. 
- Its value will be same as the `No of Shares Vested`. 

#### Shares Held

- Applicable only for `NQSO` & `ISO`.

- Applicable only when exercise type is `Buy & Hold`. For other types its value is set to `-`.

- Number field. Its a disable field.
- Its value will be same as the `No of Shares Vested`.

#### Qualified Disposition Date

- Applicable only for `ISO` type. 

- Its mandatory and  read only field which is auto calculated from Exercise date.

- Calculation Formula = `Exercise Date + 1 year + 1 day`. It cannot be less than `Grant date + 2 years`

- For e.g. Grant date is `12/20/2018`. Its first Vest date is `01/15/2019` and Exercise Date of this vest date is `12/25/2019`. So Qualified Disposition Date will be auto calculated to  `12/26/2020`. Here QDD is > `12/20/2020`. So it is greater than Grant date + 2 years. So it is allowed. 

- In above example if Exercise date is considered as  `12/16/2019`, then its QDD will be `12/17/2020` which is not greater than `12/20/2020`. So validation will failed.

#### QSBS Qualified

- Applicable only for `NQSO` & `ISO`.

- Its possible value can be `Yes`, `No` or `Unknown`. Default value is set to `Unknown`.

#### Stock Price at Exercise

- Applicable only for `NQSO` & `ISO`.

- Actual Price of the stock when exercise is performed.

- Its amount input field. Its mandatory field. Decimal is allowed. Default value is set to `$0.00`.

#### Price at Vest

- Applicable only for `RSA` & `RSU`.
- Amount input field. Decimal is allowed. Default value is set to `$ 0.00`.

#### Vested Gain

- Applicable only for `RSA` & `RSU`.
- Its a disable and calculated field. Default value is set to `$ 0.00`.
- `Vested Gain` = `Price of Vest` * `No of Shares Vested`.

#### Tax Withholding

- Applicable only for `NQSO` , `ISO`, `RSA` & `RSU`.

- Its dropdown field. Its possible value can be `Yes`, `No` & `Unknown`. Default value is set to `Unknown`.

#### Tax Withholding Amount

- Applicable only for `NQSO` , `ISO`, `RSA` & `RSU`.

- Its amount input field. Decimal is allowed. Default value is set to `$0.00`.

- Applicable only when `Tax Withholding` is `Yes`. For other, its value will be set to `-`.

#### Acceleration Notes

- Applicable only for `NQSO` , `ISO`, `RSA` & `RSU`.

- Free form text input field.



## Add Accelerate

### System Rule

- Accelerate can be added for the Unvested schedule.

### UX Rule


- At least one records is always shown with `X` icon in the `Exercise Details`. On click of `X` remove that first record, show proper message.
- When `Event Date` is greater than `Expiration Date` or less than `Grant Date` then system shows error message.
- When `Exercise Date`  is greater than `Expiration Date` or less than `Vest Date` then system shows error message.
- For `ISO` type, `Qualified Disposition Date` will be validated as per above logic. When validation fails it will show error.
- For `Joint` type legal entities, show the individual name along with the title of the dialog.

### UI Rule

[Mockup](https://drive.google.com/file/d/1DfpJICt__XFlSJPzDCjRceKHs-k3wfTj/view?usp=sharing)

- Message when exercise is not available : `No Shares Exercised`. 
- Error message when Event Date > Expiration date : `Should be <= Expiration Date`
- Error message when Event Date < Grant date : `Should be <= Grant Date`
- Error message when Exercise Date > Expiration date : `Should be <= {Date of Expiration} (Expiration Date)`. 
- Error message when Exercise Date < Vest date : `Should be <= Vest Date`
- Error message for `Qualified Disposition Date` : `Should be > {date} (Grant date + 2 years)`.



## Undo Accelerate

### System Rule

- Applicable only when a `Accelerate` action has been performed.

### UX Rule

- On click, open `Undo` confirmation dialog.
- On confirmation, data will be reset.

### UI Rule

Mockup //TODO



## View Accelerate

### UX Rule

- Shows Accelerate data of any particular vesting schedule.
- `Exercised`  shows how many shares you have already exercised. 
- Exercisable
  - Applicable only for `NQSO` & `ISO`
  - Shows how many shares are left to exercise.
  - When there isn't any shares left for exercise, it shows `-` 
- Exercise Cost
  - Applicable only for `NQSO` & `ISO`
  - It shows the cost of exercising the shares
  - `Exercise Cost`  = `Exercisable` * `Exercise Price of Grant`.
  - When Exercisable is zero, it shows `-` 
- Vested Value
  - Applicable only for `NQSO` & `ISO`
  - `Vested Value` = `Exercisable`  * `Current Stock Price of the Incentive Stock`
- Vested Gain
  - Applicable only for `NQSO` & `ISO`
  - `Vested Gain` = `Vested Value` - `Exercise Cost`.
- Shows details of acceleration in table format
- Columns for NQSO & ISO type incentive stock
  - Event Date
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
  - Stock Price at Exercise
    - Shows decimal values.
    - Show average of `Exercise Price` at the bottom in the column.
  - Exercise Price
    - It's pulled from a grant.
    - Shows decimal values.
  - Exercised Gain
    - Shows decimal.
    - `Exercised Gain` = `Shares Held or Shares Sold` * `[(Stock Price at Exercise)-(Exercise Price)]`.
    - Show total of `Exercised Gain` at the bottom in the column.
  - Tax Withholding
    - Applicable only for `NQSO` type.
    - When `Tax Withholding` is Yes then shows `Tax Withholding Amount`. Decimal appears.
    - When `Tax Withholding` is No then shows `No` .
    - When`Tax Withholding` is Unknown then shows `-` .
  - Stock Basis
    - Decimal appears.
    - `Stock Basis` = `Shares Held or Shares Sold` * `Stock Price at Exercise`. Decimal is allowed.
  - Acceleration Notes
    - If notes is not available then show `-`.
    - When Notes is too long it will be shown in multiple line (Never show ellipses).

#### UI Rule

Mockup //TODO

