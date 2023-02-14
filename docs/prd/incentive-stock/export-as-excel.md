# Export as Excel

## System Rule
- Allows to export data of active and disposed incentive stock in excel.
- There are total 3 ways to export the Incentive stock data
    - Export all Incentive stock of this legal entity (Active or disposed)
    - Export all incentive stock of the any company
    - Export any single grant of the any company
- Downloaded excel file name
    - File name of the all incentive stock: `{entity name}-{active or disposed}-incentive-stock.xlsx`
    - File name of the any company: `{entity name}-{company name}-{active or disposed}-incentive-stock.xlsx`
    - File name of the single grant: `{entity name}-{company name}-{grant id}-{active or disposed}-incentive-stock.xlsx`
- Each grant is shown in a seperate table. Grant details are shown as a label value and vesting schedule is shown as a table.
- For disposed `Stock Grant` type incentive stock, shows disposed date.
- Vesting Schedule is not applicable for the `Stock Grant` type incentive stock. 
- Shows total using formula at bottom of the table (so that it works proper when user manually update any figures)
- Shows `$` with an amount.
- Shows incentive stock type with each company separated by `|`. For e.g. `Truveta | NQSO`
- Shows disposed words for the disposed incentive stock. For e.g. `Truveta | NQSO (Disposed)`.
- For Joint, when users export all incentive stock, the system will export incentive stock data of both of the individuals.
    - For this, shows entity name at last separated by `|`. for e.g. `Truveta | NQSO | Jane Brown`
    - Shows incentive stock of both individual in alphabetical order of the individual name.
- Sorting order:  
    - Primary sorting on the alphabetical order of the Company name.
    - Secondary sorting on the incentive stock type in order of - NQSO, ISO, RSA, RSU, Stock Grant & Carried Interest 
    - Territory sorting on the descending order of Grant Date.


## UX Rule

- Export button `Export as Excel` appears in the header from where user can export all incentive stocks.
    - When user clicks this button from the Active tab, excel file will be downaload with active incentive stock or When user clicks this button from the Dispose tab, excel file will be downaload with disposed incentive stock on same page.
- Shows an Excel icon with each company from where users can export the incentive stock of that company.
- Shows vertmore action with each grant where users can export the incentive data of the grant. [See this](https://drive.google.com/file/d/1pNnwgvsKl5KIFkQ2iuYMhmADv3Lo-mxk/view?usp=share_link)
- On hover of excel icon and button, shows tooltip message with proper message.
- Excel button will be applicable only when the company has a grant.


## UI Rule

[Mockup](https://drive.google.com/file/d/1ZIEVqOemUbYQHbv4LhsH1uGt5NZ4ZhkJ/view?usp=share_link)

- Tooltip message for Excel button: `Export all Incentive Stocks`. [See this](https://drive.google.com/file/d/13YGtg9qAuUKJqZ9runUHdFaBKxYNXZmK/view?usp=share_link)
- Tooltip message for Excel icon: `Export all Incentive Stocks of this Company`. [See this](https://drive.google.com/file/d/1kTGGBuX69xhobCzYUezFMAmNeSkL8ly1/view?usp=share_link)
- Excel file for the all incentive stock: [See this](https://docs.google.com/spreadsheets/d/10f213CbNAwtz1VBNs-Zg4fA5XnV_bgPr/edit#gid=696375887)
- Excel file for the incentive stock of company: [See this](https://docs.google.com/spreadsheets/d/1xjZ9aXUtTLdb-9tfjvi0sw0ExsNEo5-6/edit#gid=1832513615) 
- Excel file for the each grant: [See this](https://docs.google.com/spreadsheets/d/1mQuO0Cx9ch1mKj70940LGEH08TkTZnnm/edit#gid=964851470)


