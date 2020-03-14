# System Requirement

- There are total 3 types of Insurance and  for each type there some subtype.
- Insurance has some common fields and some type specific field.
- Supported actions: `Create`, `Renew`,`Update`, `Delete` and `Archive`.

## Types 

1. Life Insurance
2. Health Insurance
3. Property and Casualty

## Type wise subtype

### Life Insurance

1. Term Life
2. Whole Life
3. Long Term Life

### Health Insurance

1. Medicare
2. Medicare Supplement

### Property and Casualty

1. Homeowners
2. Automobile
3. Motorcycle
4. Watercraft
5. Valuable Articles
6. Excess Liability
7. Workers Compensation
8. Small Business Insurance
9. Catastrophic Event
10. Aircraft
11. Other



### Entity

#### Common fields

| Field Name        | Description                                                  |
| ----------------- | ------------------------------------------------------------ |
| Account Nickname* | Text Input fields                                            |
| Policy Number*    | Text input field                                             |
| Issue Date*       | Issue Date. Simple date input field.                         |
| Expiry Date*      |                                                              |
| Premium*          | Number input text field. Default value is `$0.00`. Decimal is allowed. |
| Notes             |                                                              |



#### Common fields in `Life Insurance`

| Field Name         | Description                                                  |
| ------------------ | ------------------------------------------------------------ |
| Insured*           | Dropdown.                                                    |
| Insurance Carrier* | Company auto complete.                                       |
| Insurance Agent*   | Contact auto complete.                                       |
| Beneficiary*       | Dropdown. Shows all those legal entity whose type is `Individuals`,`Partnership`,` Trust`. Values are alphabetically sorting. |

#### Type Specific fields in `Life Insurance`

| Type           | Field name                 | Description                                                  |
| -------------- | -------------------------- | ------------------------------------------------------------ |
| Term Life      |                            |                                                              |
|                | Death Benefit              | Number input text field. Default value is `$0.00`. Decimal is  allowed. |
| Whole Life     |                            |                                                              |
|                | Death Benefit              | Number input text field. Default value is `$0.00`. Decimal is  allowed. |
| Long Term Life |                            |                                                              |
|                | Daily Benefit              | Number input text field. Default value is `$0.00`. Decimal is  allowed. |
|                | Benefit Period             | Multiline Text input field                                   |
|                | Additional Benefit Options | Multiline Text input field                                   |
|                | Waiting Period             | Multiline Text input field                                   |
|                | Max Lifetime Benefit       | Number input text field. Default value is `$0.00`. Decimal is  allowed |



#### Common fields in `Health Insurance`

| Field Name | Description      |
| ---------- | ---------------- |
| Insured*   | Simple Dropdown. |

#### Type Specific fields in `Health Insurance`

| Type                | Field name         | Description                                                  |
| ------------------- | ------------------ | ------------------------------------------------------------ |
| Medicare            |                    |                                                              |
|                     | Policy Limits      | Possible Values are : `Medicare Part A`, `Medicare Part B`. Multiple can be selected. |
| Medicare Supplement |                    |                                                              |
|                     | Insurance Carrier* | Company auto complete.                                       |



#### Common fields in `Property and Casualty`

| Field Name         | Description                     |
| ------------------ | ------------------------------- |
| Insurance Carrier* | Company auto complete           |
| Insurance Agent*   | Contact auto complete dropdown. |

#### Type Specific fields in `Property and Casualty`

| Type       | Field name                                                   | Description                                                  |
| ---------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| Homeowners |                                                              |                                                              |
|            | Insured Asset*                                               | In this Dropdown, Show only those assets whose asset type is `Real Estate`. These assets must be in that family. Assets are alphabetical sorting. |
|            | Mortgagee                                                    | In this Dropdrown, Show only those Banking whose type is `Mortgage fixed rate`. These Banking must be in that family. Bankings are alphabetical sorting. |
|            | Dwelling                                                     | Dropdown. Values are `Yes- $` or `Yes- % ` or `No`. Default value is `No`. If the user selects `Yes- $`, an amount field is created. This amount field is number input field and decimal is not allowed. default value is `$ 0`. if the user selects `Yes- %`, a field is created. This field is Percentage input field. defalut value is `0.00 %`. |
|            | Other Structures                                             | Dropdown. Values are `Yes- $` or `Yes- % ` or `No`. Default value is `No`. If the user selects `Yes- $`, an amount field is created. This amount field is number input field and decimal is not allowed. default value is `$ 0`. if the user selects `Yes- %`, a field is created. This field is Percentage input field. defalut value is `0.00 %`. |
|            | Personal Property                                            | Dropdown. Values are `Yes- $` or `Yes- % ` or `No`. Default value is `No`. If the user selects `Yes- $`, an amount field is created. This amount field is number input field and decimal is not allowed. default value is `$ 0`. if the user selects `Yes- %`, a field is created. This field is Percentage input field. defalut value is `0.00 %`. |
|            | Dwelling, Other Structures And Personal Property Blanket Coverage | Dropdown. Values are `Yes- $` or `Yes- % ` or `No`. Default value is `No`. If the user selects `Yes- $`, an amount field is created. This amount field is number input field and decimal is not allowed. default value is `$ 0`. if the user selects `Yes- %`, a field is created. This field is Percentage input field. defalut value is `0.00 %`. |
|            | Equipment Breakdown                                          | Dropdown. Values are `Yes- $` or `Yes- % ` or `No`. Default value is `No`. If the user selects `Yes- $`, an amount field is created. This amount field is number input field and decimal is not allowed. default value is `$ 0`. if the user selects `Yes- %`, a field is created. This field is Percentage input field. defalut value is `0.00 %`. |
|            | Equipment Breakdown Deductible                               | This field will only appear if the value of `Equipment Breakdown` is set to `Yes- $`or `Yes- %`.<br />There is show one dropdown and one field. values are : `$` or `%`. defalut value is `$ 0`. If the user selects `%`, then filed is allowed percentage input field. defalut value is `0.00 %`. |
|            | Loss Of Use                                                  | Dropdown. Values are `Yes- $` or `Yes- % ` or `No`. Default value is `No`. If the user selects `Yes- $`, an amount field is created. This amount field is number input field and decimal is not allowed. default value is `$ 0`. if the user selects `Yes- %`, a field is created. This field is Percentage input field. defalut value is `0.00 %`. |
|            | Liability                                                    | Dropdown. Values are `Yes- $` or `Yes- % ` or `No`. Default value is `No`. If the user selects `Yes- $`, an amount field is created. This amount field is number input field and decimal is not allowed. default value is `$ 0`. if the user selects `Yes- %`, a field is created. This field is Percentage input field. defalut value is `0.00 %`. |
|            | Medical Payments To Others                                   | Dropdown. Values are `Yes- $` or `Yes- % ` or `No`. Default value is `No`. If the user selects `Yes- $`, an amount field is created. This amount field is number input field and decimal is not allowed. default value is `$ 0`. if the user selects `Yes- %`, a field is created. This field is Percentage input field. defalut value is `0.00 %`. |
|            | Additions And Alterations                                    | Dropdown. Values are `Yes- $` or `Yes- % ` or `No`. Default value is `No`. If the user selects `Yes- $`, an amount field is created. This amount field is number input field and decimal is not allowed. default value is `$ 0`. if the user selects `Yes- %`, a field is created. This field is Percentage input field. defalut value is `0.00 %`. |
|            | Loss Assessment                                              | Dropdown. Values are `Yes- $` or `Yes- % ` or `No`. Default value is `No`. If the user selects `Yes- $`, an amount field is created. This amount field is number input field and decimal is not allowed. default value is `$ 0`. if the user selects `Yes- %`, a field is created. This field is Percentage input field. defalut value is `0.00 %`. |
|            | Deductible                                                   | There is show one dropdown and one field. values are : `$` or `%`. defalut value is `$ 0`. If the user selects `%`, then filed is allowed percentage input field. defalut value is `0.00 %`. |
|            | Valuable Articles                                            | Dropdown. Values are `Yes- $` or `Yes- % ` or `No`. Default value is `No`. If the user selects `Yes- $`, an amount field is created. This amount field is number input field and decimal is not allowed. default value is `$ 0`. if the user selects `Yes- %`, a field is created. This field is Percentage input field. defalut value is `0.00 %`. |
|            | Earthquake                                                   | Dropdown. Values are `Yes` or `No`.                          |
|            | Earthquake Deductible                                        | This field will only appear if the value of `Earthquake` is set to `Yes`.<br />Persentage input field. Default value is `0.00 %`. |
|            | Flood                                                        | Dropdown. Values are `Yes` or `No`.                          |
|            | Flood Deductible                                             | This field will only appear if the value of `Flood`is set to `Yes`.<br />Persentage input field. Default value is `0.00 %`. |
|            | Short Term Rental Coverage                                   | Dropdown. Values are `Yes` or `No`.                          |
|            | Additional Endorsements                                      | Possible values are : `Cash-Out Option`, `Fraud And Identity Theft`, `Green Upgrade`, `Guaranteed Rebuilding Cost`, `Extended Replacement Cost`, `Large Loss Deductible Waiver`, `Water Damages`, `Wildfire Defense`. Multiple can be selected. |
|            | Discounts Provided                                           | Possible values are : `Central Reporting`, `Guard Gated Community`, `Water Leak` ,`Low Temperature Monitoring`, `Perimeter Security System`, `Permanently Installed Backup Generator`, `Gas Leak Detector`, `Sprinkler System With Waterflow Alarm`, `Lightning Protection System`, `External Perimeter Gate`, `Full Time Live-In Caretaker`.Multiple can be selected. |
|            | Liability and Medical Payments Extensions                    | Multiple value fields. In this Dropdown, Show only those assets whose asset type is `Real Estate`. These assets must be in that family. Assets are alphabetical sorting. |
|            | Additional Insured                                           | Dropdown. Shows all those legal entity whose type is `Individuals`,`Partnership`,` Trust`. Values are alphabetically sorting. |
|            |                                                              |                                                              |
|            |                                                              |                                                              |
|            |                                                              |                                                              |
|            |                                                              |                                                              |
|            |                                                              |                                                              |
|            |                                                              |                                                              |
|            |                                                              |                                                              |
|            |                                                              |                                                              |
|            |                                                              |                                                              |
|            |                                                              |                                                              |
|            |                                                              |                                                              |
|            |                                                              |                                                              |
|            |                                                              |                                                              |
|            |                                                              |                                                              |
|            |                                                              |                                                              |
|            |                                                              |                                                              |
|            |                                                              |                                                              |
|            |                                                              |                                                              |
|            |                                                              |                                                              |
|            |                                                              |                                                              |
|            |                                                              |                                                              |
|            |                                                              |                                                              |
|            |                                                              |                                                              |
|            |                                                              |                                                              |
|            |                                                              |                                                              |
|            |                                                              |                                                              |
|            |                                                              |                                                              |
|            |                                                              |                                                              |
|            |                                                              |                                                              |
|            |                                                              |                                                              |