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

#### Tax Withholding

Applicable only for `RSU` & `RSA`.

Its dropdown field. Its possible value can be `Yes`, `No` & `Unknown`. Default value is set to `Unknown`.

#### Tax Withholding Amount

Its amount input field. Decimal is allowed. Default value is set to `$0.00`.

Applicable only when `Tax Withholding` is `Yes`. For other, its value will be set to `-`.

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
- For `Joint` type legal entities, show the individual name along with the title of the dialog.

### UI Rule

[Mockup for Add Vested Details for RSU & RSA](https://drive.google.com/file/d/102hRp-ouLeajuvbNSpsxKbb_qh_UpteJ/view?usp=sharing)

[Mockup for Add Vested Details for Carried Interest](https://drive.google.com/file/d/1EbfkZF4bDSlsKCCn8ZtPePo9xy2SqhEC/view?usp=sharing)

- For `Carried Interest`
  - Error message when Gift/Sale date < Vest date : `Should be >= Vest Date`.
  - Error message when Gift/Sale percentage > No of Percent Vested : `Should be <= {No of Percent vested}`.

### Scenario

#### Add Vested Details dialog for RSU and RSA

##### Rule V1 : Vested Details can be added only for the Vested Shares.

##### Rule V2 : “Price at Vest” is a mandatory field and decimal value is not allowed.

##### Rule V3 : Vested Gain = Price at Vest * No of Shares Vested

###### Scenario V3.1 : Vested Gain is a disable field.

##### Rule V4 : Tax Withheld is a mandatory field and decimal value is not allowed.



## Edit Vested Details

### System Rule

- Can be edited anytime.

### UI Rule

[Mockup for Edit Vested Details for RSU & RSA](https://drive.google.com/file/d/1Y2-iJfBAG9tcuADf33cRUqfcIe1DL4Eh/view?usp=sharing)

[Mockup for Edit Vested Details for Carried Interest](https://drive.google.com/file/d/1qyHsayfy8F1CZ9qPgRk-etueVsPAdBoI/view?usp=sharing)



## View Vested Details

### UX Rule

- Shows Vested details of any particular vesting schedule.
- When `Vested details` or `Gift/Sale details` is not added for any vesting schedule, it will show proper message.
- When Vested details are not added, action name will be `Vested Details`, otherwise action name will be `Edit Vested Detail`


- When Notes is too long it will be shown in multiple line (Never show ellipses).
- For `Tax Withholding`
  - When `Tax Withholding` is Yes then shows `Tax Withholding Amount`. Decimal appears.
  - When `Tax Withholding` is No then shows `No` .
  - When`Tax Withholding` is Unknown then shows `-` .
- For `Joint` type legal entities, show the individual name along with the title of the dialog.

### UI Rule

[Mockup for RSA & RSU](https://drive.google.com/file/d/1Mhg2Y9DNBkuXdjbwPh8yK5T3r93-Niqi/view?usp=sharing)

[Mockup for Carried Interest](https://drive.google.com/file/d/1AYfxrNJzZ2BKXzndaiQsVAnJzcCOt7K2/view?usp=sharing)

- Message for `RSU` & `RSA` when vested details is not available : `No Shares Vested`. [See this](https://drive.google.com/file/d/1jkEG7ob6wqBiO88dRw8N3nSQF_TpXBrO/view?usp=sharing)
- Message for `Carried Interest` when Gift/sale details is not available : `No Percentage Vested`. [See this](https://drive.google.com/file/d/1_stbwW9E0m5GwHcLqZIcuriyA4AxbwgH/view?usp=sharing)

### Scenario

#### Rule V5 : When Vested details are not added, the action name will be “Vested Details”.

#### Rule V6 : When Vested details are added for all shares, then action name will be “Edit”.

