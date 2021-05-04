# Exercise

## Entity

#### Exercise Date

Date input field when the exercise is performed. Its a mandatory field.

It must be in between `Grant Date` and `Expiration Date`.

#### Exercise Type

Types of exercise. Its values are `Buy & Hold` , `Exercise & Sell `, `Sell to Cover`. Default value is set to `Exercise & Sell`.

#### Shares Sold

Number input field. It shows how many shares you are going to sell. Its always lower than `No of Shares Vested`.  Decimal is not allowed.

Applicable only when `Exercise Type` is `Exercise & Sell`. For other types its value is set to `-`.

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

 `Exercised Gain` = `Shares Held or Shares Sold` * `[(Exercise Price of Grant)-(Above field of Exercise Price)]`. Decimal allowed field.

#### Federal Tax Withholding

Amount field. Decimal is allowed. Its a mandatory field.

#### Stock Basis

Calculated field. `Stock Basis` = `Shares Held or Shares Sold` * `Exercise Price`. Decimal allowed field

#### Notes





