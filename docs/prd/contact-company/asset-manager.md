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

### UX Rule
- Allows to add same name funds.
- Shows `+` button with each funds of active asset manager. On click, opens the add dialog of the fund. 
    - This `+` button won't be shown for Archived asset manager.
- By default all of this fields `Purpose`, `Asset Class` & `Strategy` are shown disabled.
    - `Purpose` fields will be enabled only when `Goal` is selected.
    - `Asset Class` will be enabled only when `Purpose` is selected
    - `Strategy` will be enabled only when `Asset Class` is selected.
- When user removes `Goal`, all other fields are reset and disabled.
- Shows proper message when user hovers on the disabled field.
- Shows `Drawdown` checkbox is selected and disabled when `Asset Class` is `Private Equity`.

### UI Rule
[Add dialog of each fund](https://drive.google.com/file/d/13aGWDOvLu8oD4Mjxb37d8PWzt-hPIogr/view?usp=share_link)
- Tooltip message
    - `Purpose`: `Please select Goal`
    - `Asset Class`: `Please select Purpose`
    - `Strategy`: `Please select Asset Class`


## Edit Fund

### System Rule
- Can be edited anytime.

## UX Rule
- 


## Delete Fund


## Archived Fund


## Browse Funds







## UX Rule

- User can add Investment fund from 