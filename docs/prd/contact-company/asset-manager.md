# Asset Manager Company

## Overview
- Asset Manager can have 3 types of Fund: `ETF`, `Mutual Fund` & `Limited Partnership`.


## Entity Details

### Fund Name
- It is a manadatory field.
- It is a free form text input field. 

### Stock Symbol
- Applicable only for `ETF` & `Mutual Fund` type fund.
- It is a symbol of the fund. It is free form text input field.

### Stock Exchange
- Applicable only for `ETF` type fund.
- Its company auto-complete dropdown.

### Date of Formation
- Applicable only for `Limited Partnership` type fund.
- It is a date input field.

### Goal
- It is a dropdown field. Values are: `Appreciation` & `Preservation`.

### Purpose
- It is a dropdown field. Applicable only when Goal is selected. 

| Goal         | Purpose         | 
| ------------ | --------------- | 
| Preservation | Stability       | 
|              | Diversification | 
| Appreciation | Growth Illiquid |
|              | Growth          | 


### Asset Class
- It is a dropdown field. Applicable only when Purpose is selected

| Goal         | Purpose          | Asset Class       |  
| ------------ | ---------------- | ----------------- |
| Preservation | Stability        | Core Bonds        |
|              |                  | Short-Term Bonds  |
|              | Diversification  | Absolute Return   |
|              |                  | Hybrid Strategies |
| Appreciation | Growth           | Core Equities     |
|              |                  | Focus Strategies  |
|              |                  | Satellite Growth  |
|              | Growth  Illiquid | Private Debt      |
|              |                  | Private Equity    |


### Strategy
- It's a multi-select input field and alphabetical sorted dropdown. 
- Applicable only when `Asset Class` is selected.
- When multiple values are selected, shows proper name in this field. For e.g Suppose user selects 2 values `Balanced`, `Enhanced Cash`, Strategy field shows `2 Strategies`.

| Goal         | Purpose          | Asset Class       | Strategy                 |  
| ------------ | ---------------- | ----------------- | ------------------------ |
| Preservation | Stability        | Core Bonds        | Core Taxable Bonds       |
|              |                  |                   | Tax Sensitive Crossover  |
|              |                  | Short-Term Bonds  | Short-Term Taxable Bonds |
|              | Diversification  | Absolute Return   | Absolute Return          |
|              |                  |                   | Diversified              |
|              |                  |                   | Diversified Return Mix   |
|              |                  | Hybrid Strategies | Balanced                 |
|              |                  |                   | Credit Long-Short        |
| Appreciation | Growth           | Core Equities     | Domestic Equity          |
|              |                  |                   | International Equity     |
|              |                  |                   | Global Equity            |
|              |                  | Focus Strategies  | Focused Equity           |
|              |                  | Satellite Growth  | Sector Equity            |
|              | Growth  Illiquid | Private Debt      | Private Debt             |
|              |                  | Private Equity    | Buyout                   |
|              |                  |                   | Carry                    |
|              |                  |                   | Infrastructure           |
|              |                  |                   | Natural Resources        |
|              |                  |                   | Venture                  |


### Drawdown Fund
- Applicable only for `Limited Partnership` type fund.
- It is a checkbox. Default it is unchecked.

### Short Name
- It is short name of the fund. It is a free form text input field.



## Add Fund
### System Rule 
- Funds can be added only for active asset manager.
- No uniqueness check on fund name

### UX Rule
- Shows `+` button with each funds of active asset manager. On click, opens the add dialog of the fund. 
    - This `+` button won't be shown for Archived asset manager.
- By default all of this fields `Purpose`, `Asset Class` & `Strategy` are shown disabled.
    - `Purpose` fields will be enabled only when `Goal` is selected.
    - `Asset Class` will be enabled only when `Purpose` is selected
    - `Strategy` will be enabled only when `Asset Class` is selected.
- When user removes `Goal`, all other fields are reset and disabled.
- Shows proper message when user hovers on the disabled field.
- Shows `Drawdown` checkbox is selected and disabled when `Asset Class` is `Private Equity`. On hover, shows tooltip message.

### UI Rule
[Add dialog of each fund](https://drive.google.com/file/d/13aGWDOvLu8oD4Mjxb37d8PWzt-hPIogr/view?usp=share_link)
- Tooltip message
    - `Purpose`: `Please select Goal`
    - `Asset Class`: `Please select Purpose`
    - `Strategy`: `Please select Asset Class`
    - `Drawdown`: `When "Asset Class = Private Equity", value of "Drawdown Fund" can't be changed`. [See this](https://drive.google.com/file/d/1Gyl7N9Fm2qYMsUGj2kJ6_yVvnpTFV6xC/view?usp=share_link)



## Edit Fund
### System Rule
- Can be edited anytime.
- For LP, `Drawdown` value won't be changed if it has activity or that fund is added to other LP of the same asset manager.

### UX Rule
- For LP,   
    - Edit dialog shows one checkbox `Archived` at the bottom of the dialog.
    - By default, it is unchecked. 
    - If user wants archived the fund, change its value to selected.
    - Shows `Drawdown` fund checkbox disabled when it won't be changed. On hover, shows tooltip message.

### UI Rule
- [Mockup of ETF & MF](https://drive.google.com/file/d/1_kKRTONpZiIhgbQXMU1evWpC2PAeU_TX/view?usp=share_link)
- For LP, 
    - Tooltip message for Drawdown: `Fund has activity or it is added to other LP`. [This](https://drive.google.com/file/d/1qn2AksjD4jj6RsOfJOLEwUfB4EpUa56W/view?usp=share_link)


## Delete Fund
### System Rule 
- Active or Archived fund can be deleted anytime.
- ETF or MF fund can be deleted anytime.
- For LP, 
    - If fund has activity or it is added as a Distribution Fund for othe LP of same asset manager, it can't be deleted.
    - It can't be deleted when it is added to incentive stock or it has wire instruction data.

### UX Rule
- Shows delete confirmation when delete is possible.
- Shows delete not possible dialog when delete is not possible.

### UI Rule
- [Delete not possible](https://drive.google.com/file/d/1HoUSt-eTls9vVYaN0Tn6uMzhFqstqb04/view?usp=share_link)
- [Delete Confirmation](https://drive.google.com/file/d/1cbcOMN3YY_c85XP19ArBuTF5yrG19Esg/view?usp=share_link)


## Archive Fund
### System Rule
- Only active fund can be archived.
- Fund can be archived anytime. 

### UX Rule
- User can archived fund from the edit dialog.
- No separate UI for Archive action



## Browse Funds
### UX rule
- Funds are always added from the `Funds` tab from the view dialog.
- Funds are grouped by `ETF`, `Mutual Fund` & `Limited Partnership`. Each funds shows separate table.
- Shows `+` button with each header. On click, opens the add fund dialog.
- `+` won't be shown for archived asset manager.
- Shows proper message when no funds available.
- Columns
    - Fund Name
        - If fund name is too long, it appears in the next line.
        - Shows `Archived` tag for the archived fund.
        - For `MF` & `ETF`, shows Stock Symbol in the bracket of the Fund name.
        - For `LP`, It is link. On click, opens that fund in same tab.
    - Drawdown
        - Applicable only for Limited Partnership type fund.
        - If drawdown is Yes, shows `✔` otherwise shows `-`.
    - Short Name
        - If short name is too long, then shows ellipsis.
    - Strategy
        - If strategies are too long, it appears in the next line.
        - If strategies are more than one, shows each strategies separated by `,`.
        - If the fund has a strategy then shows the strategy name otherwise shows dash `-`.
- Sorting order under each group: Funds are sorting on alphabetical order of `Fund Name`.
- On hover of funds, shows vertmore action at right side.
    - Actions are: `Edit` & `Delete`

### UI Rule 

- Message when no funds available: `No Records Found`
- [Mockup](https://drive.google.com/file/d/1JBjFccW9s3sb2nh36nWY9iuAw5Av3rbx/view?usp=share_link)
