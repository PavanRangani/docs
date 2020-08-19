# Overview

To track the details of insurance of any individual person or any asset. Insurance module can be used. It allows to track the details of insured entity, policy details, policy limits and policy renewals.

There are total 3 types of Insurance: Life Insurance, Health Insurance, Property and Casualty 

Life insurance & Health insurance type is for individual. Property and Casualty type is for assets.

Under each type there are some subtypes.

### Types & Subtypes

1. Life Insurance
   1. Term Life
   2. Whole Life
   3. Long Term Life
2. Health Insurance
   1. Medicare
   2. Medicare Supplement
3. Property and Casualty
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

# Insurance entity

#### Account Nickname

Name of the Insurance

#### Insured or Insured Assets

Any Individual person or any asset for which this insurance is purchased

For  Life Insurance & Health Insurance type Insured is  any Individual of the family.

For Property and Casualty, Insured can be asset. For different different subtypes, different type of assets can be selected. 

#### Insurance Carrier

Service provider company. Allows to select any company from company dropdown

 `Insurance Carrier` is not applicable in `Medicare` of `Health Insurance`. 

#### Insurance Agent

Agent from whom insurance is purchased . Allows select any contact from contact dropdown

#### Policy Number

Policy number of the insurance

#### Issue Date

Date from which insurance is started. It should be lower than the Expiry date

#### Expiry Date

Date on which insurance will be completed. It should be higher than the Issue date.

#### Premium

Premium Amount of the Insurance. Its current input field. Decimal is allowed.

#### Payment Note

Free form Text Input field

#### Beneficiary

Applicable to only Life Insurance types. Allows to select legal entity whose type is `Individuals`,`Partnership`,` Trust`. it will also include deceased or terminated entities of given types. Its mandatory. In Percentage field decimal is allowed.

#### Notes

Any text notes 



## Type Specific fields in `Life Insurance`

| Type               | Field name                             | Description                              |
| ------------------ | -------------------------------------- | ---------------------------------------- |
| **Term Life**      |                                        |                                          |
| Policy Term        | Renewal Date                           | Date input field<br /><br />When user will perform Renew action, expiry date will remain as it is, issue date will become same as current renew date, and Renew date will be prefilled with ‘issue date + 1 year’<br /><br />For e.g. You have added one policy with issue date - 01/01/2019, renew date - 12/31/2020 and expiry date - 12/31/2029. Now when you click on Renew, the system will set the issue date to 01/01/2020 and renew date to 12/31/2021. Expiry date will remain as it is to - 12/31/2029 |
| Policy Limits      |                                        |                                          |
|                    | Term Policy Schedule                   | Multi value field<br /> With Each record allows to enter Policy Year, Policy Premium, Face Amount, Renewal Date.<br />User can add many records as required. |
| **Whole Life**     |                                        |                                          |
| Policy Limits      |                                        |                                          |
|                    | Death Benefit                          | Currency input field. Default value is `$0`. Decimal is not allowed. |
|                    | Cash Value                             | Dropdown. Values are `Yes` and `No`. Default value is `No`. If user selects `Yes`, then currency input field is created and decimal not allowed. default value is `$ 0`. |
| **Long Term Life** |                                        |                                          |
| Policy Limits      |                                        |                                          |
|                    | Lifetime Maximum Benefit               | Currency input field. Default value is `$0.00`. Decimal is allowed. |
|                    | Long Term Care Benefit                 | Multiline Text input field               |
|                    | Waiting Period                         | Multiline Text input field               |
|                    | Waiver of Premium Qualification Period | Multiline Text input field               |
|                    | Caregiver Training Benefit             | Multiline Text input field               |
|                    | Temporary Bed Holding                  | Multiline Text input field               |
|                    | Respite Care Benefit                   | Multiline Text input field               |
|                    | Additional Benefit Options             | Multiline Text input field               |



## Type Specific fields in `Health Insurance`

| Type                    | Field name         | Description                              |
| ----------------------- | ------------------ | ---------------------------------------- |
| **Medicare**            |                    |                                          |
| Policy Limits           |                    | Checkbox fields. Values are : `Medicare Part A`, `Medicare Part B`. Multiple can be selected. |
| **Medicare Supplement** |                    |                                          |
| Policy Details          |                    |                                          |
|                         | Insurance Carrier* | Company Autocomplete.                    |



## Type Specific fields in `Property and Casualty`

| Type                           | Field name                               | Description                              |
| ------------------------------ | ---------------------------------------- | ---------------------------------------- |
| **Homeowners**                 |                                          |                                          |
| Policy Details                 |                                          |                                          |
|                                | Insured Asset*                           | In this Dropdown, Shows Current family assets whose asset type is `Real Estate`. Alphabetical sorting. |
|                                | Mortgagee                                | In this Dropdown, Shows Current family bankings whose banking type is `Mortgage fixed rate`, `Home equity LOC`, `Mortgage adjustable rate`. Alphabetical sorting. |
| Policy Limits                  |                                          |                                          |
|                                | Dwelling                                 | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
|                                | Other Structures                         | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
|                                | Personal Property                        | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
|                                | Dwelling, Other Structures And Personal Property Blanket Coverage | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
|                                | Equipment Breakdown                      | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
|                                | Equipment Breakdown Deductible           | This field will only appear if the value of `Equipment Breakdown` is set to `Yes- $` and `Yes- %`.<br />There is show one dropdown and one field. values are : `$` or `%`. default value is `$ 0`<br />If the user selects `%`, then filed is  percentage input field. default value is `0.00 %`. |
|                                | Loss Of Use                              | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
|                                | Liability                                | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
|                                | Medical Payments To Others               | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
|                                | Additions And Alterations                | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
|                                | Loss Assessment                          | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
|                                | Deductible                               | There is show one dropdown and one field. values are : `$` and `%`. default value is `$ 0`. If the user selects `%`, then field is percentage input field. default value is `0.00 %`. |
|                                | Valuable Articles                        | Dropdown. Values are `Yes` and `No`. Default value is `No`. If user selects `Yes`, then currency input field is created and decimal not allowed. default value is `$ 0`. |
|                                | Earthquake                               | Multiline text input field.              |
|                                | Flood                                    | Multiline text input field.              |
|                                | Short Term Rental Coverage               | Dropdown. Values are `Yes` or `No`.      |
|                                | Additional Endorsements                  | Multiline text input field.              |
|                                | Discounts Provided                       | Multiline text input field.              |
|                                | Liability and Medical Payments Extensions | Multiple value fields. In this Dropdown, Shows current family asset whose asset type is `Real Estate`. Alphabetical sorting. <br />If there is no value added in `Liability and Medical Payments Extensions`, Shows message as `No Liability and Medical Payments Extensions Available`. |
|                                | Additional Insured                       | Multi Value fields. In this dropdown, Shows all legal entity of current family whose type is `Individuals`,`Partnership`,` Trust`. Alphabetically sorting. <br />If there is no value added in `Additional Insured`, Shows message as `No Additional Insured Available`. |
| **Automobile**                 |                                          |                                          |
| Policy Details                 |                                          |                                          |
|                                | Vehicles Covered*                        | Multi value fields. In this Dropdown, Shows only current family assets whose asset type is `Automobile`. Alphabetical sorting. |
| Driver(s)                      | Driver*                                  | Multi value fields. Shows current family individuals. Alphabetically sorting. |
| Policy Limits                  |                                          |                                          |
|                                | Liability -> Combined Single Limit       | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
|                                | Liability -> Bodily Injury Per Person    | This field is only applicable if `Combined Single Limit` value set to `No`. <br />Default Value is `$0`. Currency input field and decimal not allowed. |
|                                | Liability -> Bodily Injury Per Accident  | This field is only applicable if `Combined Single Limit` value set to `No`. <br />Default Value is `$0`. Currency input field and decimal not allowed. |
|                                | Liability -> Property Damage Liability Per Accident | This field is only applicable if `Combined Single Limit` value set to `No`. <br />Default Value is `$0`. Currency input field and decimal not allowed. |
|                                | Uninsured / Underinsured -> Combined Single Limit | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
|                                | Uninsured / Underinsured -> Bodily Injury Per Person | This field is only applicable if `Combined Single Limit` value set to `No`. <br />Default Value is `$0`. Currency input field and decimal not allowed. |
|                                | Uninsured / Underinsured -> Bodily Injury Per Accident | This field is only applicable if `Combined Single Limit` value set to `No`. <br />Default Value is `$0`. Currency input field and decimal not allowed. |
|                                | Uninsured / Underinsured -> Property Damage Liability Per Accident | This field is only applicable if `Combined Single Limit` value set to `No`. <br />Default Value is `$0`. Currency input field and decimal not allowed. |
|                                | Medical Payments                         | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
|                                | Personal Injury Protection               | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
|                                | Physical Damage                          | Shows only when `Vehicles Covered` have some assets.<br />There is one dropdown. values are `Actual Cash Value` or `Agreed Value`. If user selects `Agreed Value` then currency input field is created. default value is `$ 0`. |
|                                | Full Glass Deductible                    | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
|                                | Comprehensive Deductible                 | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
|                                | Collision Deductible                     | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
|                                | Roadside Service                         | Dropdown. Values are `Yes` and `No`.<br />If user selects `Yes` , then show one checkbox `Towing` . if the `Towing` value is set to `Yes`, then one currency input field is created. and default value is `S 0`. |
|                                | Rental Reimbursement                     | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
| Additional Interest Loss Payee |                                          | Multiline text input fields.             |
| Additional Endorsements        |                                          | Multiline text input field.              |
| Discounts Provided             |                                          | Multiline text input field.              |
| **Motorcycle**                 |                                          |                                          |
| Policy Details                 |                                          |                                          |
|                                | Vehicles Covered*                        | Multi value fields. In this Dropdown, Shows only current family assets whose asset type is `Automobile`. Alphabetical sorting. |
| Driver(s)                      | Driver*                                  | Multi value fields. Shows current family individuals. Alphabetically sorting. |
| Policy Limits                  |                                          |                                          |
|                                | Liability -> Combined Single Limit       | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
|                                | Liability -> Bodily Injury Per Person    | This field is only applicable if `Combined Single Limit` value set to `No`. <br />Default Value is `$0`. Currency input field and decimal not allowed. |
|                                | Liability -> Bodily Injury Per Accident  | This field is only applicable if `Combined Single Limit` value set to `No`. <br />Default Value is `$0`. Currency input field and decimal not allowed. |
|                                | Liability -> Property Damage Liability Per Accident | This field is only applicable if `Combined Single Limit` value set to `No`. <br />Default Value is `$0`. Currency input field and decimal not allowed. |
|                                | Uninsured / Underinsured -> Combined Single Limit | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
|                                | Uninsured / Underinsured -> Bodily Injury Per Person | This field is only applicable if `Combined Single Limit` value set to `No`. <br />Default Value is `$0`. Currency input field and decimal not allowed. |
|                                | Uninsured / Underinsured -> Bodily Injury Per Accident | This field is only applicable if `Combined Single Limit` value set to `No`. <br />Default Value is `$0`. Currency input field and decimal not allowed. |
|                                | Uninsured / Underinsured -> Property Damage Liability Per Accident | This field is only applicable if `Combined Single Limit` value set to `No`. <br />Default Value is `$0`. Currency input field and decimal not allowed. |
|                                | Medical Payments                         | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
|                                | Personal Injury Protection               | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
|                                | Physical Damage                          | Shows only when `Vehicles Covered` have some assets.<br />There is one dropdown. values are `Yes` or `No`. If user selects `Yes` then currency input field is created. default value is `$ 0`. |
|                                | Full Glass Deductible                    | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
|                                | Comprehensive Deductible                 | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
|                                | Collision Deductible                     | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
|                                | Roadside Service                         | Values are `Yes` or `No`.<br />If user selects `Yes` , then show one checkbox `Towing` . If the `Towing` value is set to `Yes`, then one currency input field is created. and default value is `$ 0`. |
|                                | Rental Reimbursement                     | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
| Additional Interest Loss Payee |                                          | Multiline text input fields.             |
| Additional Endorsements        |                                          | Multiline text input fields.             |
| Discounts Provided             |                                          | Multiline text input fields.             |
| **Watercraft**                 |                                          |                                          |
| Policy Details                 |                                          |                                          |
|                                | Watercraft Covered                       | Multi value fields. In this Dropdown, Shows only current family assets whose asset type is `Watercraft`. Alphabetical sorting. |
| Additional Insured             |                                          | Multi value field. Shows all those legal entity whose type is `Individuals`,`Partnership`,` Trust`. Alphabetically sorting. <br />If there is no value added in `Additional Insured`, Shows message as `No Additional Insured Available`. |
| Policy Limits                  |                                          |                                          |
| Physical Damage                | Hull Value                               | Dropdown and currency input field.. Dropdown values are `Actual` and `Agreed`. decimal value is not allowed. default value is `$ 0`. |
|                                | Hull Value Deductible                    | Values are `Yes` and `No`. Default value is `No`. If user select `Yes` then currency input field is created and default value is `$ 0`. |
|                                | Unattached Equipment                     | Values are `Yes` and `No`. Default value is `No`. If user select `Yes` then currency input field is created and default value is `$ 0`. |
|                                | Unattached Equipment Deductible          | Applicable only when `Unattached Equipment` is set to `Yes`.  Field has a dropdown, values are `Yes` and `No`. Default value is `No`. If user select `Yes` then currency input field is created and default value is `$ 0`. decimal is not allowed. |
|                                | Personal Property                        | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
|                                | Personal Property Deductible             | Applicable only when `Personal Property` is set to `Yes-$ ` or `Yes-%`.  Field has a dropdown, values are `Yes` and `No`. Default value is `No`. If user select `Yes` then currency input field is created and default value is `$ 0`. decimal is not allowed. |
|                                | Uninsured/Underinsured Boaters           | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
|                                | Deductible                               | It shows dropdown and  field. values are : `$` and `%`. default value is `$ 0`. If user select `%`, then field is percentage input field. default value is `0.00 %`. |
|                                | Emergency Towing Coverage                | Multiline text input fields.             |
|                                | Trailer Coverage                         | Multiline text input fields.             |
| Liability / Indemnity          | Bodily Injury and Property Damage        | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
|                                | Medical Payments                         | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
|                                | Liability                                | [Dropdown of  Yes- $ , Yes- %  and No](#dropdown-of-yes-yes-and-no) |
| Uninsured / Underinsured       |                                          | Multiline text input fields.             |
| Navigational Limits            |                                          | Multiline text input field.              |
| Exclusions                     |                                          | Multiline text input field.              |
| Additional Endorsements        |                                          | Multiline text input field.              |
| Discount Provided              |                                          | Multiline text input fields.             |
| **Valuable Articles**          |                                          |                                          |
| Policy Limits                  |                                          |                                          |
|                                | Art                                      | There is one dropdown of `Coverage Type`. Values are `Blanket` and `Itemized`.  if user selects `Blanket`, Two fields are created. one is `Insured Value` and `Per Item Limit`. Default value is `$0`.  if user selects `Itemized`, one field `Insured Value` is created. |
|                                | Jewelry                                  | There is one dropdown of `Coverage Type`. Values are `Blanket` and `Itemized`.  if user selects `Blanket`, Two fields are created. one is `Insured Value` and `Per Item Limit`. Default value is `$0`.  if user selects `Itemized`, one field `Insured Value` is created. |
|                                | Wine                                     | There is one dropdown of `Coverage Type`. Values are `Blanket` and `Itemized`.  if user selects `Blanket`, Two fields are created. one is `Insured Value` and `Per Item Limit`. Default value is `$0`.  if user selects `Itemized`, one field `Insured Value` is created. |
|                                | Musical Instruments                      | There is one dropdown of `Coverage Type`. Values are `Blanket` and `Itemized`.  if user selects `Blanket`, Two fields are created. one is `Insured Value` and `Per Item Limit`. Default value is `$0`.  if user selects `Itemized`, one field `Insured Value` is created. |
|                                | Other                                    | There is one dropdown of `Coverage Type`. Values are `Blanket` and `Itemized`.  if user selects `Blanket`, Two fields are created. one is `Insured Value` and `Per Item Limit`. Default value is `$0`.  if user selects `Itemized`, one field `Insured Value` is created. |

| Type                                     | Field name                               | Description                              |
| ---------------------------------------- | :--------------------------------------- | ---------------------------------------- |
| **Excess Liability**                     |                                          |                                          |
| Additional Insured                       |                                          | Multi value field. Shows all those legal entity whose type is `Individuals`,`Partnership`,` Trust`. Values are alphabetically sorting. <br />If there is no insured added in `Additional Insured`, Shows message as `No Additional Insured Available`. |
| Policy Limits                            |                                          |                                          |
|                                          | Personal Excess Liability                | Currency input text field. Decimal is not allowed. Default value is `$ 0`. |
|                                          | Excess Uninsured / Underinsured Motorist | Currency input text field. Decimal is not allowed. Default value is `$ 0`. |
|                                          | Deductible                               | There is show one dropdown and one field. values are : `$` and `%`. default value is `$ 0`. If the user selects `%`, then field is percentage input field. default value is `0.00 %`. |
| Not-For-Profit Directors & Officers Liability | Annual Aggregate                         | Dropdown. values are `Yes` and `No`. If the user selects `Yes`, currency input field is created. default value is `$0`. |
|                                          | Each Wrongful Act                        | Dropdown. values are `Yes` and `No`. If the user selects `Yes`, currency input field is created. default value is `$0`. |
|                                          | Organizations                            | Autocomplete dropdown of company.        |
| Underlying Exposures                     |                                          |                                          |
|                                          | Locations                                | Multi value field. Shows current family `Asset` whose type is `Real Estate` and alphabetically sorting. <br />If there is no value added in `Locations`, Shows message as `No Locations Available`. |
|                                          | Vehicles                                 | Multi value field. Shows current family `Asset` whose type is `Automobile` and alphabetically sorting. <br />If there is no value added in `Vehicles`, Shows message as `No Vehicles Available`. |
|                                          | Watercraft                               | Multi value field. Shows current family `Asset` whose type is `Watercraft` and alphabetically sorting. <br />If there is no value added in `Watercraft`, Shows message as `No Watercraft Available`. |
|                                          | Drivers                                  | Multi value field. Shows current family individuals list and alphabetically sorting. <br />If there is no value added in `Drivers`, Shows message as `No Drivers Available`. |
| Additional Endorsements                  |                                          | Multiline text input fields.             |
| **Workers Compensation**                 |                                          |                                          |
| Policy Limits                            |                                          |                                          |
|                                          | Bodily Injury By Accident                | Currency input field. Decimal is not allowed. Default value is `$ 0`. |
|                                          | Bodily Injury By Disease (Policy Limit)  | Currency input field. Decimal is not allowed. Default value is `$ 0`. |
|                                          | Bodily Injury By Disease (Employee Limit) | Currency input field. Decimal is not allowed. Default value is `$ 0`. |
| **Small Business Insurance**             |                                          |                                          |
| Policy Details                           |                                          |                                          |
|                                          | Insured Asset*                           | Shows all `Assets` for current family. Sorting as per assets type. |
| Policy Limits                            |                                          |                                          |
|                                          | Property Limit                           | Currency input field. Decimal is not allowed. Default value is `$ 0`. |
|                                          | General Liability Limit                  | Currency input field. Decimal is not allowed. Default value is `$ 0`. |
|                                          | Deductible                               | Currency input field. Decimal is not allowed. Default value is `$ 0`. |
| **Catastrophic Events**                  |                                          |                                          |
| Policy Details                           |                                          |                                          |
|                                          | Insured Asset*                           | Shows current family `Asset` whose type is `Real Estate` and alphabetically sorting. |
|                                          | Mortgagee                                | In this Dropdown, Shows Current family bankings whose banking type is `Mortgage fixed rate`, `Home equity LOC`, `Mortgage adjustable rate`. Alphabetical sorting. |
|                                          | Catastrophic Event                       | Values are : `Flood`, `Earthquake`, `Hurricane`, `Landslide`. Default `Flood` is selected. |
| Policy Limits                            |                                          |                                          |
|                                          | Dwelling Limit                           | Values are `Yes` and `No`. Default value is `No`. If user select  `Yes` then currency input field created and decimal is not allowed. Default value is `$ 0`. |
|                                          | Dwelling Deductible                      | Applicable only `Dwelling Limit` is set to `Yes`.  Shows dropdown, values are : `$` and `%`. default value is `$ 0`. If the user selects `%`, then field is percentage input field. default value is `0.00 %`. |
|                                          | Contents Limit                           | Values are `Yes` and `No`. Default value is `No`. If user select  `Yes` then currency input field created and decimal is not allowed. Default value is `$ 0`. |
|                                          | Contents Deductible                      | Applicable only `Contents Limit` is set to `Yes`.  Shows dropdown, values are : `$` and `%`. default value is `$ 0`. If the user selects `%`, then field is percentage input field. default value is `0.00 %`. |
|                                          | Other Structures Limit                   | This field is appear if the value of `Catastrophic Event` is `Earthquake`, `Hurricane`, `Landslide`. <br />Values are : `Yes` and `No`. default value is `No`. if user select `Yes` then currency input field is created. Default value is  `$ 0`. |
|                                          | Other Structures Deductible              | Applicable only when `Other Structures Limit` is set to `Yes`.<br />Values are : `$` and `%`. default value is `$ 0`. If the user selects `%`, then field is percentage input field. default value is `0.00 %`. |
| **Aircraft**                             |                                          |                                          |
| Insured                                  | Insured Name*                            | Dropdown. Shows all legal entity of current family whose type is Individuals,Partnership, Trust. Alphabetically sorting. |
| Aircraft Physical Damage Coverage        |                                          | Multi value field. fields are : `Registration Number*`, `Aircraft*`, `Agreed Value*` and `Total Seats*` |
|                                          | Registration Number*                     | Simple Text input field.                 |
|                                          | Aircraft*                                | Shows all `Assets` for current family. Sorting as per assets type. |
|                                          | Agreed Value*                            | Currency input field. Decimal is allowed. Default Value is $ 0.00. |
|                                          | Total Seats*                             | Number input field. Decimal is not allowed |
| Policy Limits                            |                                          |                                          |
|                                          | Hull Deductible                          | Shows 2  field. <br />One is Currency input field. decimal is not allowed. default value is `$ 0`.<br />Second field is `Notes*` -> Notes is Mandatory field. multiline text field. |
|                                          | Approved Use                             | Mandatory field. multiline text input field. |
|                                          | Territory                                | Mandatory field. multiline text input field. |
|                                          | Approved Pilots                          | Mandatory field. multiline text input field. |
|                                          | Lay-up credit for Scheduled Aircraft     | Mandatory field. multiline text input field. |
|                                          | Ware Risks Hull                          | Mandatory field. multiline text input field. |
|                                          | War Risks Liability                      | Mandatory field. multiline text input field. |
|                                          | Aircraft Liability                       | Mandatory field. multiline text input field. |
|                                          | Aircraft Medical Payments                | Mandatory field. multiline text input field. |
|                                          | Non-owned aircraft liability             | Mandatory field. multiline text input field. |
|                                          | Non-owned aircraft physical damage       | Mandatory field. multiline text input field. |
|                                          | Aircraft Spare Parts                     | Mandatory field. multiline text input field. |
|                                          | Search and Rescue/Runway Foaming         | Mandatory field. multiline text input field. |
|                                          | Damage to Non-Owned Hangars and Contents | Mandatory field. multiline text input field. |
|                                          | Additional Provisions                    | Mandatory field. multiline text input field. |
| **Other**                                |                                          |                                          |
| Policy Limits                            |                                          | Multiline text input field.              |

#### Dropdown of  `Yes- ####  , `Yes- % ` and `No`.

 Default value is `No`. If user selects `Yes- $`, then currency input field is created and decimal not allowed. default value is `$ 0`. <br />if the user selects `Yes- %`, Percentage input field is created. default value is `0.00 %`.
