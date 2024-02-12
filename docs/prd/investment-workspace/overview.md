# Overview
This page shows various data on selected entity's investment-related preferences and details. Some details are pulled from the Cashflow and IPS tabs. 

## Entity Details

### Overview & Preferences
- It has 5 details- `Portfolio Status`, `Investor Accreditation`, `Tax loss harvesting sensitivity`, `Capital gains sensitivity`, `ESG Preference`
- Each detail has Value and Notes.
- Values of various details are as following
    - Portfolio Status 
        - Possible values are: `Active`, `Implementation`, `Review`, and `Limited`. 
        - Default it is empty.
    - Accredited Investor
        - Possible values are: `Yes` and `No`.
        - Default it is empty.
    - Qualified Client
        - Possible values are: `Yes` and `No`.
        - Default it is empty.
    - Qualified Purchaser
        - Possible values are: `Yes` and `No`.
        - Default it is empty.
    - Tax loss harvesting sensitivity
        - Possible values are: `High`, `Medium`, and `Low`.
        - Default it is empty.
    - Capital gains sensitivity
        - Possible values are: `High`, `Medium`, and `Low`.
        - Default it is empty.
    - ESG Preference
        - Possible values are: `Yes`, `No`.
        - Default it is empty.
    - K1 Sensitivity
        - Possible values are: `No K1’s`, `K1’s OK, but not late` & `Late K1’s are OK`
        - Default it is empty.
- For each above fields, the Default Value is blank
- Notes: It is a free-form text input field. 

### Suitability
- It has 6 buckets - `Stability`, `Diversification`, `Growth`, `Growth Illiquid`, `Private Capital Target`, `Private Capital Annual Pacing`
- Each bucket has single or multiple strategy. 
    - Stability has `Strategic Income Funds` strategy.
    - Diversification has `Diversifying Return` strategy.
    - Growth has `Fundamental Strategies`, `Focused Strategies`, `Satellite Strategies` strategies.
    - Growth Illiquid has `Private Equity`, `Venture Capital`, `Real Estate`, `Co-Investments`strategies.
- Each strategy has `Interest` and `Notes`.
    - Notes is a free-form text input field.
    - Possible value of Interest is `Yes` or `No`. Default value is `No`
    - When the Interest of the `Growth Illiquid` strategies is Yes, it shows 2 new buckets - `Private Capital Target`, `Private Capital Annual Pacing`.
        - Value of `Private Capital Target` is pulled from IPS
        - `Private Capital Annual Pacing` is an amount input field.

### Discretion details
- It has 6 types - `Raising cash`, `Rebalance strategic allocation`, `Rebalance within buckets`, `Hiring / Terminating managers`, `Tax loss harvesting`, and `Gain realization`.
- Each type has `Status` and `Notes`
    - Possible value of Status is `Yes` or `No`. Deault value is `No`.
    - Notes is a free-form text input field.

### Cashflow
- For each funding account of this legal entity, allows to enter `Cash Target`, `Cash Minimum` & `Cash Maximum`. It is amount input field.

### Portfolio Construction
- It has total 4 details - `Stability Model`, `Core Growth Allocation`, `Core Passive Equity`, `Core Active Equity (Global)`
- `Stability Model`, `Core Growth Allocation` both have Value and Notes.
    - Stability Model has `Tax Sensitive - Default`,`Tax Sensitive - Small`, `Tax Sensitive - ESG`, `Tax Sensitive - Low Tax`, `100% Municipal Bonds`, `Taxable Bonds - ESG`,`Tax Sensitive - Conservative`, `N/A` values.
    - Notes is a free-form text input field.
- `Core Passive Equity`, `Core Active Equity (Global)` 
    - Both are percentage input fields. Decimal value is not allowed.

### Amendment details
- Date
    - When workspace has at least one historical version, Amendment date is always greater than latest historical version's amendment date.
    - When workspace has no any historical version, user can enter any date.
- Notes
    - If notes is too long, shows it in multiline.


## Tab Enable/Disable logic
- Workspace tab will be always shown enabled. Reason for this is to avoid complex cases of enable/disable logic. 
- See following cases:
    - If a user changes any value in any section, system will enable this tab
    - If any user adds/deletes a funding account in the banking section, system will enable/disable this tab.
    - If user adds/deletes/amends IPS details (Portfolio details), system will enable/disable this tab.