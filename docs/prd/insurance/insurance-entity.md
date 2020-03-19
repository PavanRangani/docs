# Insurance Entity

## Common fields for all types

|                | Field Name        | Description                                                  |
| -------------- | ----------------- | ------------------------------------------------------------ |
| Policy Details |                   |                                                              |
|                | Account Nickname* | Text Input fields                                            |
|                | Policy Number*    | Text input field                                             |
| Policy Term    |                   |                                                              |
|                | Issue Date*       | Date input                                                   |
|                | Expiry Date*      | `Expiry date` can not be less than `Issue Date`              |
|                | Premium*          | Number input text field. Default value is `$0.00`. Decimal is allowed. |
| Notes          |                   |                                                              |



## Common fields in `Life Insurance`

|                | Field Name         | Description                                                  |
| -------------- | ------------------ | ------------------------------------------------------------ |
| Policy Details |                    |                                                              |
|                | Insured*           | Dropdown.                                                    |
|                | Insurance Carrier* | Company auto complete.                                       |
|                | Insurance Agent*   | Contact auto complete.                                       |
| Beneficiary*   |                    | Shows all those legal entity whose type is `Individuals`,`Partnership`,` Trust`. Values are alphabetically sorting. |

## Type Specific fields in `Life Insurance`

| Type           |               | Field name                 | Description                                                  |
| -------------- | ------------- | -------------------------- | ------------------------------------------------------------ |
| Term Life      |               |                            |                                                              |
|                | Policy Limits |                            |                                                              |
|                |               | Death Benefit              | Number input text field. Default value is `$0.00`. Decimal is  allowed. |
| Whole Life     |               |                            |                                                              |
|                | Policy Limits |                            |                                                              |
|                |               | Death Benefit              | Number input text field. Default value is `$0.00`. Decimal is  allowed. |
| Long Term Life |               |                            |                                                              |
|                | Policy Limits |                            |                                                              |
|                |               | Daily Benefit              | Number input text field. Default value is `$0.00`. Decimal is  allowed. |
|                |               | Benefit Period             | Multiline Text input field                                   |
|                |               | Additional Benefit Options | Multiline Text input field                                   |
|                |               | Waiting Period             | Multiline Text input field                                   |
|                |               | Max Lifetime Benefit       | Number input text field. Default value is `$0.00`. Decimal is  allowed |



## Common fields in `Health Insurance`

|                | Field Name | Description      |
| -------------- | ---------- | ---------------- |
| Policy Details |            |                  |
|                | Insured*   | Simple Dropdown. |

## Type Specific fields in `Health Insurance`

| Type                |                | Field name         | Description                                                  |
| ------------------- | -------------- | ------------------ | ------------------------------------------------------------ |
| Medicare            |                |                    |                                                              |
|                     | Policy Limits  |                    |                                                              |
|                     |                | Checkbox Field     | Possible Values are : `Medicare Part A`, `Medicare Part B`. Multiple can be selected. |
| Medicare Supplement |                |                    |                                                              |
|                     | Policy Details |                    |                                                              |
|                     |                | Insurance Carrier* | Company auto complete.                                       |



## Common fields in `Property and Casualty`

|                | Field Name         | Description                     |
| -------------- | ------------------ | ------------------------------- |
| Policy Details |                    |                                 |
|                | Insurance Carrier* | Company auto complete           |
|                | Insurance Agent*   | Contact auto complete dropdown. |

## Type Specific fields in `Property and Casualty`

| Type              |                                | Field name                                                   | Description                                                  |
| ----------------- | ------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| Homeowners        |                                |                                                              |                                                              |
|                   | Policy Details                 |                                                              |                                                              |
|                   |                                | Insured Asset*                                               | In this Dropdown, Show only those assets whose asset type is `Real Estate`. Shows assets for current family and alphabetical sorting. |
|                   |                                | Mortgagee                                                    | In this Dropdown, Show only those Banking whose type is `Mortgage fixed rate`. Shows Banking for current family and alphabetical sorting. |
|                   | Policy Limits                  |                                                              |                                                              |
|                   |                                | Dwelling                                                     | Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   |                                | Other Structures                                             | Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   |                                | Personal Property                                            | Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   |                                | Dwelling, Other Structures And Personal Property Blanket Coverage | Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   |                                | Equipment Breakdown                                          | Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   |                                | Equipment Breakdown Deductible                               | This field will only appear if the value of `Equipment Breakdown` is set to `Yes- $` and `Yes- %`.<br />There is show one dropdown and one field. values are : `$` or `%`. default value is `$ 0`<br />If the user selects `%`, then filed is  percentage input field. default value is `0.00 %`. |
|                   |                                | Loss Of Use                                                  | Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   |                                | Liability                                                    | Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   |                                | Medical Payments To Others                                   | Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   |                                | Additions And Alterations                                    | Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   |                                | Loss Assessment                                              | Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   |                                | Deductible                                                   | There is show one dropdown and one field. values are : `$` and `%`. default value is `$ 0`. If the user selects `%`, then field is percentage input field. default value is `0.00 %`. |
|                   |                                | Valuable Articles                                            | Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   |                                | Earthquake                                                   | Values are `Yes` and `No`.                                   |
|                   |                                | Earthquake Deductible                                        | This field will only appear if the value of `Earthquake` is set to `Yes`.<br />Percentage input field. Default value is `0.00 %`. |
|                   |                                | Flood                                                        | Values are `Yes` or `No`.                                    |
|                   |                                | Flood Deductible                                             | This field will only appear if the value of `Flood`is set to `Yes`.<br />Percentage input field. Default value is `0.00 %`. |
|                   |                                | Short Term Rental Coverage                                   | Values are `Yes` or `No`.                                    |
|                   |                                | Additional Endorsements                                      | Possible values are : `Cash-Out Option`, `Fraud And Identity Theft`, `Green Upgrade`, `Guaranteed Rebuilding Cost`, `Extended Replacement Cost`, `Large Loss Deductible Waiver`, `Water Damages`, `Wildfire Defense`. Multiple can be selected. |
|                   |                                | Discounts Provided                                           | Possible values are : `Central Reporting`, `Guard Gated Community`, `Water Leak` ,`Low Temperature Monitoring`, `Perimeter Security System`, `Permanently Installed Backup Generator`, `Gas Leak Detector`, `Sprinkler System With Waterflow Alarm`, `Lightning Protection System`, `External Perimeter Gate`, `Full Time Live-In Caretaker`.Multiple can be selected. |
|                   |                                | Liability and Medical Payments Extensions                    | Multiple value fields. In this Dropdown, Show only those assets whose asset type is `Real Estate`. Shows assets for current family and alphabetical sorting. |
|                   |                                | Additional Insured                                           | Dropdown. Shows all those legal entity whose type is `Individuals`,`Partnership`,` Trust`. Values are alphabetically sorting. |
| Automobile        |                                |                                                              |                                                              |
|                   | Policy Details                 |                                                              |                                                              |
|                   |                                | Vehicles Covered*                                            | Multi value fields. In this Dropdown, Show only those assets whose asset type is `Automobile`. Shows assets for current family and alphabetical sorting. |
|                   | Drivers                        | Driver*                                                      | Multi value fields. Shows only list of individuals of current family and alphabetically sorting. |
|                   | Policy Limits                  |                                                              |                                                              |
|                   |                                | Liability -> Combined Single Limit                           | Values are `Yes` and ``No`.<br />if the Value is  set to `Yes`, there is show one dropdown and one field. values are : `$` and `%`. default value is `$ 0`. If the user selects `%`, then field is Percentage input field. default value is `0.00 %`. |
|                   |                                | Liability -> Bodily Injury Per Person                        | This field is only applicable if `Combined Single Limit` value set to `No`. <br />Currency input field and decimal not allowed. |
|                   |                                | Liability -> Bodily Injury Per Accident                      | This field is only applicable if `Combined Single Limit` value set to `No`. <br />Currency input field and decimal not allowed. |
|                   |                                | Liability -> Property Damage Liability Per Accident          | This field is only applicable if `Combined Single Limit` value set to `No`. <br />Currency input field and decimal not allowed. |
|                   |                                | Uninsured / Underinsured -> Combined Single Limit            | Values are `Yes` and ``No`.<br />if the Value is  set to `Yes`, there is show one dropdown and one field. values are : `$` and `%`. default value is `$ 0`. If the user selects `%`, then field is Percentage input field. default value is `0.00 %`. |
|                   |                                | Uninsured / Underinsured -> Bodily Injury Per Person         | This field is only applicable if `Combined Single Limit` value set to `No`. <br />Currency input field and decimal not allowed. |
|                   |                                | Uninsured / Underinsured -> Bodily Injury Per Accident       | This field is only applicable if `Combined Single Limit` value set to `No`. <br />Currency input field and decimal not allowed. |
|                   |                                | Uninsured / Underinsured -> Property Damage Liability Per Accident | This field is only applicable if `Combined Single Limit` value set to `No`. <br />Currency input field and decimal not allowed. |
|                   |                                | Medical Payments                                             | Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   |                                | Personal Injury Protection                                   | Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   |                                | Agreed Value                                                 | Shows only when `Vehicles Covered` have some assets.<br />There is one dropdown. values are `Yes` or `No`. User selects `Yes` then currency input field is created. default value is `$ 0`. |
|                   |                                | Full Glass Deductible                                        | Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   |                                | Comprehensive Deductible                                     | Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   |                                | Collision Deductible                                         | Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   |                                | Roadside Service                                             | Values are `Yes` and `No`.<br />If user selects `Yes` , then show one checkbox `Towing` . if the `Towing` value is `Yes`, then one currency input field is created. and default value is `S 0`. |
|                   |                                | Rental Reimbursement                                         | Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   | Additional Interest Loss Payee |                                                              | Simple Text input fields.                                    |
|                   | Additional Endorsements        |                                                              | Checkbox. Values are `Original Manufacturer's Parts` and `Auto Rental Coverage`.  Multiple can be selected. |
| Motorcycle        |                                |                                                              |                                                              |
|                   | Policy Details                 |                                                              |                                                              |
|                   |                                | Vehicles Covered*                                            | Multi value fields. In this Dropdown, Show only those assets whose asset type is `Automobile`. Shows assets for current family and alphabetical sorting |
|                   | Drivers                        | Driver*                                                      | Multi value fields. Shows only list of individuals of current family and alphabetically sorting. |
|                   | Policy Limits                  |                                                              |                                                              |
|                   |                                | Liability -> Combined Single Limit                           | Values are `Yes` and ``No`.<br />if the Value is  set to `Yes`, there is show one dropdown and one field. values are : `$` or `%`. default value is `$ 0`. If the user selects `%`, then field is Percentage input field. default value is `0.00 %`. |
|                   |                                | Liability -> Bodily Injury Per Person                        | This field is only applicable if `Combined Single Limit` value set to `No`. <br />Currency input field and decimal not allowed. |
|                   |                                | Liability -> Bodily Injury Per Accident                      | This field is only applicable if `Combined Single Limit` value set to `No`. <br />Currency input field and decimal not allowed. |
|                   |                                | Liability -> Property Damage Liability Per Accident          | This field is only applicable if `Combined Single Limit` value set to `No`. <br />Currency input field and decimal not allowed |
|                   |                                | Uninsured / Underinsured -> Combined Single Limit            | Dropdown. Values are `Yes` and ``No`.<br />if the Value is  set to `Yes`, there is show one dropdown and one field. values are : `$` and `%`. default value is `$ 0`. If the user selects `%`, then field is Percentage input field. default value is `0.00 %`. |
|                   |                                | Uninsured / Underinsured -> Bodily Injury Per Person         | This field is only applicable if `Combined Single Limit` value set to `No`. <br />Currency input field and decimal not allowed. |
|                   |                                | Uninsured / Underinsured -> Bodily Injury Per Accident       | This field is only applicable if `Combined Single Limit` value set to `No`. <br />Currency input field and decimal not allowed. |
|                   |                                | Uninsured / Underinsured -> Property Damage Liability Per Accident | This field is only applicable if `Combined Single Limit` value set to `No`. <br />Currency input field and decimal not allowed. |
|                   |                                | Medical Payments                                             | Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   |                                | Personal Injury Protection                                   | Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   |                                | Agreed Value                                                 | Shows only when `Vehicles Covered` have some assets.<br />There is one dropdown. values are `Yes` or `No`. User selects `Yes` then currency input field is created. default value is `$ 0`. |
|                   |                                | Full Glass Deductible                                        | Dropdown. Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   |                                | Comprehensive Deductible                                     | Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   |                                | Collision Deductible                                         | Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   |                                | Roadside Service                                             | Values are `Yes` or `No`.<br />If user selects `Yes` , then show one checkbox `Towing` . if the `Towing` value is `Yes`, then one currency input field is created. and default value is `S 0`. |
|                   |                                | Rental Reimbursement                                         | Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   | Additional Interest Loss Payee |                                                              | Simple Text input fields.                                    |
|                   | Additional Endorsements        |                                                              | Checkbox. Values are `Original Manufacturer's Parts` and `Auto Rental Coverage`.  Multiple can be selected. |
| Watercraft        |                                |                                                              |                                                              |
|                   | Policy Details                 |                                                              |                                                              |
|                   |                                | Watercraft Covered                                           | Multi value fields. In this Dropdown, Show only those assets whose asset type is `Watercraft`. Shows assets for current family and alphabetical sorting |
|                   | Additional Insured             |                                                              | Multi value field.                                           |
|                   | Policy Limits                  |                                                              | Shows all those legal entity whose type is `Individuals`,`Partnership`,` Trust`. Values are alphabetically sorting. |
|                   |                                | Hull Value                                                   | Values are `Actual` and `Agreed`. and show currency input field. decimal value is not allowed. default value is `$ 0`. |
|                   |                                | Hull Value Deductible                                        | Values are `Yes` and `No`. Default value is `No`. If user select `Yes` then currency input field is created and default value is `$ 0`. |
|                   |                                | Unattached Equipment                                         | Values are `Yes` and `No`. Default value is `No`. If user select `Yes` then currency input field is created and default value is `$ 0`. |
|                   |                                | Unattached Equipment Deductible                              | Applicable only when `Unattached Equipment` is set to `Yes`.  Field has a dropdown, values are `Yes` and `No`. Default value is `No`. If user select `Yes` then currency input field is created and default value is `$ 0`. decimal is not allowed. |
|                   |                                | Liability                                                    | Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   |                                | Uninsured/Underinsured Boaters                               | Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   |                                | Medical Payments                                             | Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   |                                | Trailer Coverage                                             | Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   |                                | Personal Effects                                             | Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   |                                | Personal Effects Deductible                                  | Applicable only when `Personal Effects` is set to `Yes`.  Field has a dropdown, values are `Yes` and `No`. Default value is `No`. If user select `Yes` then currency input field is created and default value is `$ 0`. Decimal is not allowed. |
|                   |                                | Emergency Towing Coverage                                    | Values are `Yes- $` , `Yes- % ` and `No`. Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`. |
|                   |                                | Deductible                                                   | It shows dropdown and  field. values are : `$` and `%`. default value is `$ 0`. If user select `%`, then field is percentage input field. default value is `0.00 %`. |
|                   | Navigational Limits            |                                                              | Multiline text input field.                                  |
|                   | Exclusions                     |                                                              | Multiline text input field.                                  |
|                   | Additional Endorsements        |                                                              | Multiline text input field.                                  |
| Valuable Articles |                                |                                                              |                                                              |
|                   | Policy Limits                  |                                                              | `ADD ARTICLE TYPE` button. Multiple value field. Click on this button open dropdown. values are `Jewelry`, `Fine Arts`, `Musical Instruments`, `Silverware`, `Wine`, `Furs`, `Guns`, `Antiques`, `Other Collectibles` |
|                   |                                | Coverage Type                                                | Radio button. Values are `Blanket` and `Itemized`. Default `Blanket`is selected. |
|                   |                                | Blanket Value                                                | Applicable only `Blanket` is selected.<br />Currency input field. decimal is not allowed. Default value  is `$ 0` |
|                   |                                | Per Item Limit                                               | Applicable only `Blanket` is selected.<br />Currency input field. decimal is not allowed. Default value  is `$ 0` |
|                   |                                | Scheduled Articles                                           | Applicable only `Itemized` is selected. Multiple value field. <br />Shows two field :<br />- One is `Assets` dropdown. Multi value field. Shows current family asset whose type is `Valuable Article` and alphabetically sorting.<br />- Second is Currency input field. decimal is not allowed. default value is `$ 0`. |

| Type                     |                                   | Field name                                | Description                                                  |
| ------------------------ | --------------------------------- | :---------------------------------------- | ------------------------------------------------------------ |
| Excess Liability         |                                   |                                           |                                                              |
|                          | Additional Insured                |                                           | Multi value field. Shows all those legal entity whose type is `Individuals`,`Partnership`,` Trust`. Values are alphabetically sorting. |
|                          | Policy Limits                     |                                           |                                                              |
|                          |                                   | Liability Limit                           | Currency input text field. Decimal is not allowed. Default value is `$ 0`. |
|                          |                                   | Excess Uninsured                          | Currency input text field. Decimal is not allowed. Default value is `$ 0`. |
|                          |                                   | Deductible                                | There is show one dropdown and one field. values are : `$` and `%`. default value is `$ 0`. If the user selects `%`, then field is percentage input field. default value is `0.00 %`. |
|                          | Underlying Exposures              |                                           |                                                              |
|                          |                                   | Locations                                 | Multi value field. Shows current family `Asset` whose type is `Real Estate` and alphabetically sorting. |
|                          |                                   | Vehicles                                  | Multi value field. Shows current family `Asset` whose type is `Automobile` and alphabetically sorting. |
|                          |                                   | Watercraft                                | Multi value field. Shows current family `Asset` whose type is `Watercraft` and alphabetically sorting. |
|                          |                                   | Drivers                                   | Multi value field. Shows current family individuals list and alphabetically sorting. |
|                          | Additional Endorsements           |                                           | Checkbox field. Multiple can selected. Values are : <br />- Attorney Choice<br />- Director's & Officers Liability<br />- Defense Costs<br />- Employment Practices Liability |
| Workers Compensation     |                                   |                                           |                                                              |
|                          | Policy Limits                     |                                           |                                                              |
|                          |                                   | Bodily Injury By Accident                 | Number input field. Decimal is not allowed. Default value is `$ 0`. |
|                          |                                   | Bodily Injury By Disease (Policy Limit)   | Number input field. Decimal is not allowed. Default value is `$ 0`. |
|                          |                                   | Bodily Injury By Disease (Employee Limit) | Number input field. Decimal is not allowed. Default value is `$ 0`. |
| Small Business Insurance |                                   |                                           |                                                              |
|                          | Policy Details                    |                                           |                                                              |
|                          |                                   | Insured Asset*                            | Shows all `Assets` for current family. Sorting as per assets type sorting. |
|                          | Policy Limits                     |                                           |                                                              |
|                          |                                   | Property Limit                            | Number input field. Decimal is not allowed. Default value is `$ 0`. |
|                          |                                   | General Liability Limit                   | Number input field. Decimal is not allowed. Default value is `$ 0`. |
|                          |                                   | Deductible                                | Number input field. Decimal is not allowed. Default value is `$ 0`. |
| Catastrophic Events      |                                   |                                           |                                                              |
|                          | Policy Details                    |                                           |                                                              |
|                          |                                   | Insured Asset*                            | Shows current family `Asset` whose type is `Real Estate` and alphabetically sorting. |
|                          |                                   | Mortgagee                                 | Shows current family `Banking` whose type is `Mortgage fixed rate` and alphabetically sorting. |
|                          |                                   | Catastrophic Event                        | Values are : `Flood`, `Earthquake`, `Hurricane`, `Landslide`. Default `Flood` is selected. |
|                          | Policy Limits                     |                                           |                                                              |
|                          |                                   | Dwelling Limit                            | Values are `Yes` and `No`. Default value is `No`. If user select  `Yes` then currency input field created and decimal is not allowed. Default value is `$ 0`. |
|                          |                                   | Dwelling Deductible                       | Applicable only `Dwelling Limit` is set to `Yes`.  Shows dropdown, values are : `$` and `%`. default value is `$ 0`. If the user selects `%`, then field is percentage input field. default value is `0.00 %`. |
|                          |                                   | Contents Limit                            | Values are `Yes` and `No`. Default value is `No`. If user select  `Yes` then currency input field created and decimal is not allowed. Default value is `$ 0`. |
|                          |                                   | Contents Deductible                       | Applicable only `Contents Limit` is set to `Yes`.  Shows dropdown, values are : `$` and `%`. default value is `$ 0`. If the user selects `%`, then field is percentage input field. default value is `0.00 %`. |
|                          |                                   | Other Structures Limit                    | This field is appear if the value of `Catastrophic Event` is `Earthquake`, `Hurricane`, `Landslide`. <br />Values are : `Yes` and `No`. default value is `No`. if user select `Yes` then currency input field is created. Default value is  `$ 0`. |
|                          |                                   | Other Structures Deductible               | Applicable only when `Other Structures Limit` is set to `Yes`.<br />Values are : `$` and `%`. default value is `$ 0`. If the user selects `%`, then field is percentage input field. default value is `0.00 %`. |
| Aircraft                 |                                   |                                           |                                                              |
|                          | Insured                           | Insured Asset*                            | Multi value field. Shows all legal entity in current family. Alphabetically sorting. |
|                          | Aircraft Physical Damage Coverage |                                           | Multi value field. fields are : `Registration Number*`, `Aircraft*`, `Agreed Value*` and `Total Seats*` |
|                          |                                   | Registration Number*                      | Simple Text input field.                                     |
|                          |                                   | Aircraft*                                 | Shows all `Assets` for current family. Sorting as per assets type sorting. |
|                          |                                   | Agreed Value*                             | Currency input field. Decimal should be allowed. Default Value is $ 0.00. |
|                          |                                   | Total Seats*                              | Currency input field. Decimal is not allowed                 |
|                          | Policy Limits                     |                                           |                                                              |
|                          |                                   | Hull Deductible                           | Shows 2  field. <br />One is Currency input field. decimal is not allowed. default value is `$ 0`.<br />Second field is `Notes*` -> Notes is Mandatory field. multiline text field. |
|                          |                                   | Approved Use                              | Shows 2  field. <br />One is Currency input field. decimal is not allowed. default value is `$ 0`.<br />Second field is `Notes*` -> Notes is Mandatory field. multiline text field. |
|                          |                                   | Territory                                 | Shows 2  field. <br />One is Currency input field. decimal is not allowed. default value is `$ 0`.<br />Second field is `Notes*` -> Notes is Mandatory field. multiline text field. |
|                          |                                   | Approved Pilots                           | Shows 2  field. <br />One is Currency input field. decimal is not allowed. default value is `$ 0`.<br />Second field is `Notes*` -> Notes is Mandatory field. multiline text field. |
|                          |                                   | Lay-up credit for Scheduled Aircraft      | Shows 2  field. <br />One is Currency input field. decimal is not allowed. default value is `$ 0`.<br />Second field is `Notes*` -> Notes is Mandatory field. multiline text field. |
|                          |                                   | Ware Risks Hull                           | `Notes*` is mandatory field. multiline text input field.     |
|                          |                                   | War Risks Liability                       | `Notes*` is mandatory field. multiline text input field.     |
|                          |                                   | Aircraft Liability                        | `Notes*` is mandatory field. multiline text input field.     |
|                          |                                   | Aircraft Medical Payments                 | `Notes*` is mandatory field. multiline text input field.     |
|                          |                                   | Non-owned aircraft liability              | `Notes*` is mandatory field. multiline text input field.     |
|                          |                                   | Non-owned aircraft physical damage        | `Notes*` is mandatory field. multiline text input field.     |
|                          |                                   | Aircraft Spare Parts                      | `Notes*` is mandatory field. multiline text input field.     |
|                          |                                   | Search and Rescue/Runway Foaming          | `Notes*` is mandatory field. multiline text input field.     |
|                          |                                   | Damage to Non-Owned Hangars and Contents  | `Notes*` is mandatory field. multiline text input field.     |
|                          |                                   | Additional Provisions                     | `Notes*` is mandatory field. multiline text input field.     |
| Other                    |                                   |                                           |                                                              |
|                          | Policy Limits                     |                                           | Multiline text input field.                                  |

