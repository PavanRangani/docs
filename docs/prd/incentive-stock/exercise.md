# Exercise

For NQSO and ISO type of Grant, user needs to purchase shares at defined Exercise price. To track that purchase data, Exercise can be added with each vesting schedule record. `Exercise` is applicable only for `NQSO` & `ISO` types.

One Vesting schedule can have partial exercise also. One Vesting schedule can have multiple exercise.

## Entity Details

#### Exercise Date

Date when the exercise is performed. Its a mandatory field.

It can be greater than or equal to `Vest date` and less than or equal to `Expiration date`

#### Exercise Type

Types of exercise. Its possible value can be `Buy & Hold` , `Exercise & Sell `, `Sell to Cover` & `Forfeit`. 

Default value is  `Exercise & Sell`.

#### Shares Sold

Applicable only when exercise type is `Exercise & Sell ` & `Sell to Cover`. For `Buy & Hold` & `Shares Forfeited ` it will be set to  `-`. 

Number input field. Decimal is not allowed. Default value is set to `$ 0`.

It shows how many shares are sold. Its should be lower than or equal  `No of Shares Vested`.  

#### Shares Held

Applicable only when exercise type is `Buy & Hold`. For other types its value is set to `-`.

Number input field. Decimal is not allowed. Default value is set to `$ 0`.

It shows how many shares are hold. Its always lower than or equal `No of Shares Vested`.

#### Shares Forfeited

Applicable only when exercise type is `Forfeit`. For other types its value is set to `-`.

Number input field. Decimal is not allowed. 

It shows how many shares are forfeit. Its always lower than or equal `No of Shares Vested`.

Remaining shares are prefilled in the `Shares Forfeited` when I select `Forfeit` in the exercise type.

##### 	Case 1: If there is no any exercise performed

​		Given: I have add exercise dialog open.

​		And: No of Shares Vested for that exercise is `150,000`.

​		When: I select `Forfeit` in the Exercise type dropdown.

​		Then: `Shares Forfeited` field will appear.

​		And: It will show a `150,000` prefilled.

##### 	Case 2:  When partially exercised already performed.

​		Given: I have add exercise dialog open.

​		And: No of Shares Vested for that exercise is `150,000`.

​		And: I have already performed partially exercise of `50,000`

​		When: I select `Forfeit` in the Exercise type dropdown.

​		Then: `Shares Forfeited` field will appear.

​		And: It will show a `100,000` prefilled.	 



#### Qualified Disposition Date

Applicable only for `ISO` type.

Not applicable when exercise type is `Forfeit`. 

Its mandatory and  read only field which is auto calculated from Exercise date.

Calculation Formula = `Exercise Date + 1 year + 1 day`. It cannot be less than `Grant date + 2 years`

For e.g. Grant date is `12/20/2018`. Its first Vest date is `01/15/2019` and Exercise Date of this vest date is `12/25/2019`. So Qualified Disposition Date will be auto calculated to  `12/26/2020`. Here QDD is > `12/20/2020`. So it is greater than Grant date + 2 years. So it is allowed. 

In above example if Exercise date is considered as  `12/16/2019`, then its QDD will be `12/17/2020` which is not greater than `12/20/2020`. So validation will failed.

#### QSBS Qualified

Its possible value can be `Yes`, `No` or `Unknown`. Default value is set to `Unknown`.

Not applicable when exercise type is `Forfeit`. 

#### Stock Price at Exercise

Actual Price of the stock when exercise is performed.

Not applicable when exercise type is `Forfeit`. 

Its amount input field. Its mandatory field. Decimal is allowed. Default value is set to `$0.00`.

#### Tax Withholding

Applicable only for `RSU` & `RSA`.

Its dropdown field. Its possible value can be `Yes`, `No` & `Unknown`. Default value is set to `Unknown`.

#### Tax Withholding Amount

Its amount input field. Decimal is allowed. Default value is set to `$0.00`.

Applicable only when `Tax Withholding` is `Yes`. For other, its value will be set to `-`.

#### Notes

Free form text input field.



## Add Exercise

### System Rule

- Exercise can be added only for the vested schedule. 

### UX Rule


- At least one records is always shown in the `Exercise Details`.
- When `Exercise Date`  is greater than `Expiration Date` or less than `Vest Date` then system shows error message.
- When total of `Shares Held`, `Shares Sold` & `Shares Forfeited` is grater than `No of Share Vested` then system show error message.
- For `ISO` type, `Qualified Disposition Date` will be validated as per above logic. When validation fails it will show error.
- For `Joint`, shows individual name in dialog title after the grant name with `|`.

### UI Rule

[Mockup](https://drive.google.com/file/d/1DfpJICt__XFlSJPzDCjRceKHs-k3wfTj/view?usp=sharing)

- Error message when Exercise Date > Expiration date : `Should be <= {Date of Expiration} (Expiration Date)`. [See this](https://drive.google.com/file/d/1bjU_8ClQVJGmQTxJhEzYDReDcmbmXkCs/view?usp=sharing)
- Error message when Exercise Date < Vest date : `Should be <= Vest Date`
- Error message for Shares Held, Shares Sold & Shares Forfeited : 
  - When user enters exercise for any one type : `Total of {Exercise type} can not be >= {No of Shares Vested}`
  - When user enters exercise for any two type :  `Total of {Exercise type} & {Exercise type} can not be >= {No of Shares Vested}`.
  - When user enters all types of exercise : `Total of Shares Sold, Shares Held & Shares Forfeited can not be >= {No of Shares Vested}`. [See this](https://drive.google.com/file/d/1-h9d8lKv59AoHuaKy7FNK922tTo3kM9t/view?usp=sharing)
- Error message for `Qualified Disposition Date` : `Should be > {date} (Grant date + 2 years)`.

### Scenario

#### Rule E1 : Exercise can be added only for the Vested Schedule.

#### Rule E2 : UX - At least one record is always shown in the ‘Exercise Details’ section.

##### Scenario E2.1

When : I have Add Exercise dialog open
Then : At least one record is always shown in the “Exercise Detail”.
And : `X` button does not appear.

##### Scenario E2.2 - Users can also add multiple vesting schedules..

Given: I have Add NQSO dialog open 
When : I click on the Add button
Then : Second records will be generated in the Exercise Details and ‘X’ button will appear for both records.

##### Scenario E2.3 - UX - On click of X button, remove that record.

Given: I have Add Exercise dialog open 
And : I have added 3 exercises.
And : Each exercise has one X button.
When : I click on the ‘X’ button in the first records
Then: That record will be removed from the Exercise Details.

#### Rule E3: `Exercise Date` is always greater than or equal to Vest Date.

##### Scenario E3.1

Given: I have Add Exercise dialog open
And : Vest date of that exercise is “12/10/2021”
When: I enter Exercise date “11/11/2011”
Then: Exercise date field shows error about it should be greater than Vest date

##### Scenario E3.2

Given: I have Add Exercise dialog open
And : I have entered Exercise date “12/10/2022” and Vest date of that Exercise “12/10/2021”
When: I change Exercise date to “12/10/2011”
Then: Exercise date field shows error about it should be greater than vest date

##### Scenario E3.3

Given : I have Add Exercise dialog open
And : Vest date of that exercise is “12/10/2022”
When : I enter exercise date “12/10/2022”
Then : Expiration date field doesn’t show error.

#### Rule E4 : Exercise Date is always less than or equal to Expiration Date

##### Scenario E4.1

Given: I have Add Exercise dialog open
And : Expiration date of that grant is “12/10/2021”
When: I enter Exercise date “11/11/2022”
Then: Exercise date field shows error about it should be lower than Expiration date

##### Scenario E4.2

Given: I have Add Exercise dialog open
And : I have entered Exercise date “12/10/2022” and Expiration date of that grant is “12/10/2024”
When: I change Exercise date to “12/10/2025”
Then: Exercise date field shows error about it should be greater than vest date

##### Scenario E4.3

Given : I have Add Exercise dialog open
And : Expiration date of that exercise is “12/10/2022”
When : I enter exercise date “12/10/2022”
Then : Expiration date field doesn’t show error.

#### Rule E5 : ‘Shares Held’ is always less than or equal to “No of Share Vested”.

##### Scenario E5.1

Given: I have Add Exercise dialog open
And : No of Share vested of that exercise is “100,000”.
When: I enter the value of “110,000” in the Share Held.
Then : Bottom of Exercise Details section shows error. See this

##### Scenario E5.2

Given: I have the Add Exercise dialog open.
And :No of Share vested of that exercise is “100,000”.
And : I have entered the value “50,000” in the Shares Held. 
When: I change the value of Shares Held to “150,000”
Then : Bottom of Exercise Details section shows error. See this

##### Scenario E5.3

Given: I have the Add Exercise dialog open.
And :No of Share vested of that exercise is “100,000”.
When: I Enter the value of shares held “50,000”.d
Then : It doesn’t show an error message.

#### Rule E6 : Shares Sold value is less than or equal to “No of share Vested”.

##### Scenario E6.1

Given: I have Add Exercise dialog open
And : No of Share vested of that exercise is “100,000”.
When: I enter the value of “110,000” in the Share Sold.
Then : Bottom of Exercise Details section shows error. See this

##### Scenario E6.2

Given: I have the Add Exercise dialog open.
And :No of Share vested of that exercise is “100,000”.
And : I have entered the value “50,000” in the Shares Sold. 
When: I change the value of Shares Sold to “150,000”
Then : Bottom of Exercise Details section shows error. See this

##### Scenario E6.3

Given: I have the Add Exercise dialog open.
And :No of Share vested of that exercise is “100,000”.
When: I enter the value of shares Sold “50,000”.
Then : It doesn’t show an error message.

##### Rule E7: QDD (Qualified Disposition Date)  is always “Exercise Date” + 1 year + 1 day.

##### Scenario E7.0 - QDD is applicable only for “ISO” type grant.

###### Scenario E7.0.1

Given : I have one grant of NQSO type
When : I open an exercise dialog for NQSO type
Then: QDD is not visible to me.

###### Scenario E7.0.2

Given : I have one grant of ISO type
When : I open an exercise dialog for ISO type
Then: QDD is visible to me.

##### Scenario E7.1

Given: I have the Add Exercise dialog open.
When : I enter the exercise date is “12/20/2020”.
Then: QDD (Qualified Disposition Date) is set to “12/21/2020”.

##### Scenario E7.2

Given: I have the Add Exercise dialog open.
Add: I have added an exercise date “12/20/2020”.
And: based on the exercise date, QDD is set to “12/21/2020”
When : I change the Exercise date to “01/01/2021”
Then: QDD (Qualified Disposition Date) is also changed to “01/02/2022”.



#### Rule E8: QDD is always greater than “Grant Date + 2 year”.

##### Scenario E8.1

Given: I have added one grant for NQSO.
And : Grant date of that grant is “12/20/2018”
And : First vest date is “01/15/2019”
And : I have the Add Exercise dialog open.
When: I enter an exercise date of this vet date “12/20/2020”.
And: based on the exercise date, QDD is set to “12/21/2021” (Exercise date + 1 year + 1)
Then: Now system doesn't show error here because QDD is greater than 12/20/2020 (Grant date + 2 year). 

##### Scenario E8.2

Given: I have added one grant for NQSO.
And : Grant date of that grant is “12/20/2018”
And : First vest date is “01/15/2019”
And : I have the Add Exercise dialog open.
When: I enter an exercise date of this vet date “01/17/2019”.
And: based on the exercise date, QDD is set to “01/18/2020” (Exercise date + 1 year + 1)
Then: Now the system shows error about QDD is greater than 12/20/2020 (Grant date + 2 year).

#### Rule E9: Shares Sold is applicable only when “Exercise Type” is “Exercise & Sell” & “Sell to Cover”.

##### Scenario E9.1

Given: I have the Add Exercise dialog open.
When : I select the Exercise type is “Exercise & Sell”
Then: Share Sold field will show the amount entered field and Share Held field will show `-`.

##### Scenario E9.2

Given: I have the Add Exercise dialog open.
When : I select the Exercise type is “See to Cover”
Then: Share Sold field will show the amount entered field and Share Held field will show `-`.

##### Scenario E9.3 - Decimal value is not allowed in the Shares Sold.

###### Scenario E9.3.1

Given : I have Add Exercise dialog open
When: I enter the “100,000.25” shares in the Shares Sold field.
Then : System not allowed to enter decimal value in this field.

###### Scenario E9.3.2

Given : I have Add Exercise dialog open
When: I paste the “100,000.25” shares in the Shares Sold field.
Then : On the blur system remove decimal values.

#### Rule E10: Shares Held is applicable only when “Buy & Hold” 

##### Scenario E10.1

Given: I have the Add Exercise dialog open.
When : I select the Exercise type is “Buy & Hold”
Then: Share Held field will show the amount entered field and Share Sold field will show `-`.

##### Scenario E10.2 - Decimal value is not allowed in the Shares Sold.

###### Scenario E10.2.1

Given : I have Add Exercise dialog open
When: I enter the “100,000.25” shares in the Shares Held field.
Then : System not allowed to enter decimal value in this field.

###### Scenario E10.2.2

Given : I have Add Exercise dialog open
When: I paste the “100,000.25” shares in the Shares Held field.
Then : On the blur system remove decimal values.

#### Rule E11: Federal Tax Withholding applicable only for NQSO type.

##### Scenario E11.1

Given : I have one grant of ISO type
When : I open an exercise dialog for ISO type
Then: Federal Tax Withholding is not visible to me.

##### Scenario E11.2

Given : I have one grant of NQSO type
When : I open an exercise dialog for NQSO type
Then: Federal Tax Withholding is visible to me.




## Edit Exercise

### System Rule

- Can be editable anytime.


### UI Rule

[Mockup](https://drive.google.com/file/d/12Fukfmzbj9dsTzTZpVqBayN_24ma1PZv/view?usp=sharing)

### Scenario 

#### Rule 1: Exercise can be editable anytime.

Given : I have Edit Exercise dialog open
When : I change any of the field
Then : It allows me to change.



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

- When at least some Exercisable shares available action name will be `Exercise`

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
  - Shares Forfeited
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
  - Notes
    - If notes is not available then show `-`.
    - When Notes is too long it will be shown in multiple line (Never show ellipses).

- For `Exercise Details`, record are sorted in the descending order of date.


### UI Rule

[Mockup](https://drive.google.com/file/d/1fK3E_8YI6USFbZKbi5OsIwV5HFTVrqlE/view?usp=sharing)

- Message when exercise is not available : `No Shares Exercised`. [See this](https://drive.google.com/file/d/1_6rf_saXdIPCX3kFBvpTne72viRpi55i/view?usp=sharing)

### Scenario

#### Rule VE1 : UX - Show proper message about no exercise is performed.

Given: I have View Exercise dialog open
When: Exercise is not performed for any vesting schedule
Then: it will show a proper message about no exercise being performed.

#### Rule VE2 : When at least some Exercisable shares are available, the action name will be “Exercise”.

##### Scenario VE2.1 

Given: I have added one NQSO type grant.
And : That grant has some vesting schedule.
And :Assume that No of Share vested for the first vesting schedule is “100,000”
And: I have performed partial exercises “50,000” on that vesting schedule.
When : I open the View dialog of that vesting Schedule
Then: it shows me “Exercise” action in the view dialog.

##### Scenario VE2.2 

Given: I have added one NQSO type grant.
And : That grant has some vesting schedule.
And :Assume that No of Share vested for the first vesting schedule is “100,000”
And: I have performed partial exercises “50,000” on that vesting schedule.
And : I have performed the second exercise of “40,000” on that vesting schedule.
When : I open the view dialog of that Vesting Schedule.
Then: It still shows me the "Exercise" action in the view dialog

#### Rule VE3 : When there is nothing left to exercise, the action name will be “Edit”.

Given: I have added one NQSO type grant.
And : That grant has some vesting schedule.
And :Assume that No of Share vested for the first vesting schedule is “100,000”
And: I have performed exercises of “100,000” on that vesting schedule.
When : I open the View dialog of that vesting Schedule
Then: it shows me “Edit” action in place of Exercise in the view dialog.

#### Rule VE4 : Exercise Date column will show the date of Exercise.

Given: I have added one NQSO type grant.
And : That grant has some vesting schedule.
And : on that schedule, I have performed 3 exercises for 3 different dates as follows below.

| Exercise Date |
| ------------- |
| 01/02/2018    |
| 01/02/2020    |
| 12/20/2019    |

When : I open the View dialog of that vesting Schedule
Then: Exercise Date column will show the date as follows below.

| Exercise Date |
| ------------- |
| 01/02/2020    |
| 01/02/2019    |
| 12/20/2018    |

#### Rule VE6 : Exercise type is `Exercise & Sell` or `Sell to Cover`, Shares Held field will show ‘-’.

##### Scenario VE6.1

Given: I have added one NQSO type grant.
And : That grant has some vesting schedule.
And : on that schedule, I have performed 2 exercises for different types as follows below.

| Exercise Date | Exercise Type   | Shares Sold | Shares Held |
| ------------- | --------------- | ----------- | ----------- |
| 01/02/2020    | Exercise & Sell | 50,000      | -           |
| 01/02/2019    | Sell to Cover   | 40,000      | -           |

When : I open view dialog of that vesting Schedule
Then : Shares Held field column will show -.

##### Scenario VE6.2 - Decimal value is shown.

When : I open view dialog of Exercise
Then : decimal value is not visible in the Shares Sold column.

#### Rule VE7 : Exercise type is “Buy & Hold”, Shares Sold field will show ‘-’.

##### Scenario VE7.1

Given: I have added one NQSO type grant.
And : That grant has some vesting schedule.
And : on that schedule, I have performed 2 exercises for different types as follows below.

| Exercise Date | Exercise Type | Shares Sold | Shares Held |
| ------------- | ------------- | ----------- | ----------- |
| 01/02/2020    | Buy & Hold    | -           | 50,000      |
| 01/02/2019    | Buy & Hold    | -           | 40,000      |

When : I open view dialog of that vesting Schedule
Then : Shares Sold field column will show -.

##### Scenario VE7.2 - Decimal value is shown.

When : I open view dialog of Exercise
Then : decimal value is not visible in the Shares Hold column.

#### Rule VE9 : QDD is applicable only for ISO type Grant.

##### Scenario VE9.1

When : I open view exercise dialog for ISO type grant
Then : QDD column is available.

##### Scenario VE9.2

When : I open view exercise dialog for NQSO type grant
Then : QDD column is not available. 

#### Rule VE10 : UX - Show average of `Exercise Price` at the bottom in the column.

##### Scenario VE10.1

Given : I have one grant of NQSO type.
And : That grant has one vesting schedule of 10000 shares.
And: These 10000 shares are exercised in 2 lots.
And: In the first lot, 4000 shares are exercised at price of 11. 
And: In the second lot, 6000 shares are exercised at price of 13.
When : I open the View dialog of Exercise.
Then: Average exercise price for these lot will be calculated in this way (11* 4000) + (13*6000) / 10000.
And: Show Average of Exercise Price is “12.20”.

##### Scenario VE10.2 - Show decimal value in this column.

When : I open view dialog of Exercise
Then : decimal value is visible in the Exercise Price column.

#### Rule VE11 : Exercise Gain = (Shares Held or Shares Sold) * (Exercise Price of Grant - Exercise Price).

##### Scenario VE11.1 - Decimal value is visible.

When : I open view dialog of Exercise
Then : decimal value is not visible in the Exercise Gain column.

##### Scenario VE11.2 - Show total of “Exercised Gain” at the bottom in the column.

Given : I have one grant of NQSO type.
And : Exercise Price of that grant is 15.00.
And : That grant has one vesting schedule.
And: These Schedules are exercised in 2 lots.
And: In the first lot, Share Held is 4000 and Exercise Price is 11.
And: In the second lot, Share Sold is 6000 and  exercise price is 13.

| Shares Held | Shares Sold | Exercise Price |
| ----------- | ----------- | -------------- |
| 4000        | -           | 11             |
| -           | 6000        | 13             |

When : I open the View dialog of Exercise.
Then : Exercised gain will show total of `28,000`at bottom of `Exercised Gain` column.

| Shares Held | Shares Sold | Exercise Price | Exercised Gain |
| ----------- | ----------- | -------------- | -------------- |
| 4000        | -           | 11             | 16,000         |
| -           | 6000        | 13             | 12,000         |
|             |             |                | **28,000**     |

#### Rule VE12 - Federal Tax Withholding applicable only for NQSO type.

##### Scenario VE12.1 - Decimal value is visible.

When : I open view dialog of Exercise
Then : decimal value is not visible in the Exercise Gain column.

##### Scenario VE12.2

When : I open view exercise dialog for ISO type grant
Then : Federal Tax Withholding column is available.

##### Scenario VE12.3

When : I open view exercise dialog for NQSO type grant
Then : Federal Tax Withholding column is available.

#### Rule VE13 - Stock Basis = Shares Held or Shares Sold * Exercise Price of particular exercise

##### Scenario VE13.1 - Decimal value is visible.

##### Scenario VE13.2

Given : I have one grant of NQSO type.
And : Exercise Price of that grant is 5.00.
And : That grant has one vesting schedule.
And: These Schedules are exercised in 2 lots.
And: In the first lot, Share Held is 4000 and Exercise Price is 11.
And: In the second lot, Share Sold is 6000 and  exercise price is 13.

| Shares Held | Shares Sold | Exercise Price |
| ----------- | ----------- | -------------- |
| 4000        | -           | 11             |
| -           | 6000        | 13             |

When : I open the View dialog of Exercise.
Then : Stock Basis column shows value of that exercise.

| Shares Held | Shares Sold | Exercise Price | Stock Basis |
| ----------- | ----------- | -------------- | ----------- |
| 4000        | -           | 11             | 44,000      |
| -           | 6000        | 13             | 12,000      |

#### Rule VE14 - If notes are too long it will be shown in multiple lines.

##### Scenario VE14. 1 - If notes are not available then show `-`.

When : Notes is not available in the exercise
Then : Show `-` in the notes column.

##### Scenario VE14.2 

When : Notes is too long
Then : Notes column will show in next line. (Never show ellipses)

#### Rule VE15 - UX - For Exercise Details, records are sorted in the descending order of date.

Given : I have one grant of NQSO type.
And : That grant has one vesting schedule.
And: These Schedules are exercised in 2 lots as per following date

| Exercise Date |
| ------------- |
| 01/18/2016    |
| 01/05/2019    |
| 01/01/2017    |

When: I open the view dialog of Exercise
And : Observe the records under Exercise Details
Then : records are sorted in the descending order of Grant Exercise Date as follows

| Exercise Date |
| ------------- |
| 01/01/2017    |
| 01/18/2016    |
| 01/05/2019    |

