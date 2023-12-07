# Browse single Asset Manager company

## Companies Details
- Company details tab is same as the [Company dialog.](../contact-company/company-requirements.md#view-normal-company-not-client-entity)
- Only difference is that the other company has a view dialog while the Asset Manager type company has a page from which the company details are visible. [See Company tab](https://drive.google.com/file/d/1q5OxwsfM5Pde2v1aP-nIg7wtk8KMWHYG/view?usp=sharing)

## Browse Funds of Company

### UX Rule
- Shows all Funds of the Company.
- Funds has one `+` button. On click, opens the dropdown of Funds types - `ETF`, `Mutual Fund` & `Limited Partnerships`. [See this](https://drive.google.com/file/d/1ycvbiDrVAm35Xw4hC5s6JU3swH-qfN9Y/view?usp=sharing)
- `+` button is not shown for Archived Asset Manager type company.
- Shows proper message when no funds available.
- When funds are not available, the tab shows in disabled.
- Columns are
    - Goal
    - Purpose
    - Asset Class
    - Strategy
        - If strategies are too long, it appears in the next line.
        - If strategies are more than one, shows each strategies separated by `,`.
        - If the fund has a strategy then shows the strategy name otherwise shows dash `-`.
    - Fund Name
        - When fund name is too long, shows it in multiline.
        - Shows `Archived` tag for the archived fund
        - For `MF` & `ETF`, shows Stock Symbol in the bracket of the Fund name.
        - For `LP`, It is link. On click, opens that fund in same tab.
    - Short Name
        - If short name is too long, then shows ellipsis.
        - Shows `-` when no data available.
    - Fund Type
    - Drawdown
        - If drawdown is Yes, shows `✔` otherwise shows `-`.
- Sorting order of Funds: Goal > Purpose > Asset Class > Strategy > Fund Name (All are alphabetically sorted)
- For `Goal`, `Purpose`, `Asset Class` & `Strategy` column, it is not showing in repeatedly for same funds. [See this](https://drive.google.com/file/d/1opHWcx-GzmdoF2n4xFtiwSyYImqeA3lw/view?usp=sharing)
- On hover, shows hover effect and vertmore action at right side.
    - Vertmore actions: `Edit` & `Delete`.
- On click of funds, opens that funds details in the same page.

### UI Rule
- Placeholder text: `No Records Found`. [See this](https://drive.google.com/file/d/1EJJvqJb0iEoXP8YnKftgBFc8XHzVxKeD/view?usp=sharing)





