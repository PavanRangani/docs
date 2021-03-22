# Incentive Stock

## Entity for Grant

### Common Field

| Field Name                        | **Description**                                              |
| --------------------------------- | ------------------------------------------------------------ |
| Stock Name or Company Name        | `Stock Name` is for `NQSO`, `ISO`, `RSA`, `RSU` type & `Company Name` is  for `Carried Interest` type. <br />Auto complete dropdown of Public and Private company. Its a mandatory field. |
| Custodian                         | Company auto complete dropdown. Not applicable for `Carried Interest` type. |
| Type                              | Select type dropdown of Grant type. Values are `NQSO`, `ISO`, `RSA`, `RSU` & `Carried Interest`. Default value is set to `NQSO`. |
| Grant ID                          | Free form text input field. Its a mandatory field.           |
| Grant Date                        | Date input field. Its a mandatory field.                     |
| Shares Granted or Percent Granted | `Shares Granted` is for `NQSO`, `ISO`, `RSA`, `RSU` type . Number input field. Decimal is not allowed. Default value is `0`. 0 value is not allowed<br />`Percent Granted` is  for `Carried Interest` type. Percentage input field. Decimal is allowed. Default value is set `0.00%`. |
| Notes                             | Multiline free form text input field.                        |
| Type                              | Types of Vesting. Select type dropdown. Values are `Simple` & `Custom`. Default value is set to `Simple`. |
| First Vest Date                   | Applicable only when vesting type is `Simple`.<br />Date input field. Its a mandatory field. |
| Shares in First Vesting           | Applicable only when vesting type is `Simple`.<br />Number input field. Decimal is not allowed. Default value is `0`. |
| Vesting Frequency                 | Applicable only when vesting type is `Simple`.<br />Select type dropdown. Values are `Annual`, `Quarterly` & `Monthly`. Default value is set `Annual`. |
| Vesting Periods                   | Applicable only when vesting type is `Simple`.<br />Number input field. Decimal is not allowed. Default value is `0`. |
| Shares per Period                 | Applicable only when vesting type is `Simple`.<br />Number input field. Decimal is not allowed. Default value is `0`. |
| Vest Date                         | Applicable only when vesting type is `Custom`. Its a multi value field.<br />Date input field. Its a mandatory field. |
| Shares Vesting                    | Applicable only when vesting type is `Custom`.<br />Its a multi value field. Number input field. Decimal is not allowed. Default value is `0`. |
| Percent per Period                | Applicable for `Carried Interest` type & `Custom`. <br />Its a multi value field. Percentage input field. Decimal is allowed. Default value is set `0.00%`. |

### Type specific field

| Type Name        | Field Name                | Description                                                  |
| ---------------- | ------------------------- | ------------------------------------------------------------ |
| NQSO or ISO      |                           |                                                              |
|                  | Exercise Price            | Amount enter field. Decimal is allowed. Default value is `$ 0.00`. |
|                  | Expiration Date           | Date input field.                                            |
|                  | Vest at Death             | Select type dropdown. Values are `Yes`, `No` & `Unknown`. Default value is set `Yes`. |
| RSA              |                           |                                                              |
|                  | Shares Purchased on Grant | Number input field. Decimal is not allowed. Default value is `0`. |
|                  | Price per Share           | Amount enter field. Decimal is allowed. Default value is `$ 0.00`. |
|                  | Total Purchase Price      | Disable field. Calculated field. <br />Amount enter field. Decimal is allowed. Default value is `$ 0.00`. |
|                  | 83b Election Filed        | Select type dropdown. Values are `Yes`, `No` & `Unknown`. Default value is set `Yes`. |
| RSU              |                           |                                                              |
|                  | Type                      | Select type dropdown. Values are `None`, `Restricted Stock` & `RSU`. Default value is set `None`. |
|                  | Liquidation Condition     | Select type dropdown. Values are `Yes`, `No` & `Unknown`. Default value is set `Yes`. |
|                  | Treatment on Termination  | Free form text input field.                                  |
|                  | Vest at Death             | Select type dropdown. Values are `Yes`, `No` & `Unknown`. Default value is set `Yes`. |
| Carried Interest |                           |                                                              |
|                  | 83b Election Filed        | Select type dropdown. Values are `Yes`, `No` & `Unknown`. Default value is set `Yes`. |





## Entity of Exercise

| Field Name              | Description                                                  |
| ----------------------- | ------------------------------------------------------------ |
| Exercise Date           | Date input field. Its a mandatory field. Its always higher than Vest date. |
| Exercise Type           | Type of Exercise. Select type dropdown. Values are `Buy & Hold`, `Exercise & Sell`, `Sell to Cover`. Default value is `Buy & Hold`. |
| Shares Sold             | Number input field. Decimal is not allowed. Default value is `0`. |
| Shares Held             | Calculated & Read only field. <br />Shares Held = {Total Vested Value} - {Shares Sold} |
| QSBS Qualified          | Select type dropdown. Values are `Yes`, `No` & `Unknown`. Default value is set `Yes`. |
| Exercise Price          | Amount enter field. Decimal is allowed. Default value is `$ 0.00`. |
| Exercise Gain           | Calculated & Read only field. <br />Exercise Gain = {Shares Held}* ({Exercise Price} - {Avg. Exercise Price}) |
| Federal Tax Withholding | Amount enter field. Decimal is allowed. Default value is `$ 0.00`. |
| Stock Basis             | Amount enter field. Decimal is allowed. Default value is `$ 0.00`. |
| Notes                   | Free form text input field.                                  |

