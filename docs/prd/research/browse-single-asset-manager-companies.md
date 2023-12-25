# Browse single Asset Manager Company

## Companies Details
- Company details tab is the same as the [Company dialog.](../contact-company/company-requirements.md#view-normal-company-not-client-entity)
- Only difference is that the other company has a view dialog while the Asset Manager-type company has a page from which the company details are visible. [See Company tab](https://drive.google.com/file/d/1q5OxwsfM5Pde2v1aP-nIg7wtk8KMWHYG/view?usp=sharing)

## Browse Funds of Company

### UX Rule
- Shows all Funds of the Company.
- Funds has one `+` button. On click, opens the dropdown of Funds types - `ETF`, `Mutual Fund` & `Limited Partnerships`. [See this](https://drive.google.com/file/d/1ycvbiDrVAm35Xw4hC5s6JU3swH-qfN9Y/view?usp=sharing)
- `+` button is not shown for Archived Asset Manager type company.
- Shows proper message when no funds are available.
- When funds are not available, the tab shows disabled.
- Columns are
    - Goal
    - Purpose
    - Asset Class
    - Strategy
        - If strategies are too long, they appear in the next line.
        - If strategies are more than one, show each strategy separated by `,`.
        - If the fund has a strategy then show the strategy name otherwise show dash `-`.
    - Fund Name
        - When the fund name is too long, show it in multiline.
        - Shows `Archived` tag for the archived fund
        - For `MF` & `ETF`, show the Stock Symbol in the bracket of the Fund name.
        - For `LP`, It is a link. On click, open that fund in the same tab.
    - Short Name
        - If the short name is too long, then show an ellipsis.
        - Shows `-` when no data is available.
    - Fund Type
    - Drawdown
        - If the drawdown is Yes, shows `✔` otherwise shows `-`.
- Sorting order of Funds: Goal > Purpose > Asset Class > Strategy > Fund Name (All are alphabetically sorted)
- If any fund has no value, show that fund at last.
- For the `Goal`, `Purpose`, `Asset Class` & `Strategy` columns, it is not showing repeatedly for the same funds. [See this](https://drive.google.com/file/d/1opHWcx-GzmdoF2n4xFtiwSyYImqeA3lw/view?usp=sharing)
- On hover, shows hover effect and vertmore action on the right side.
    - Vertmore actions: `Edit` & `Delete`.
- On click of funds, opens the fund's details on the same page.

### UI Rule
- Placeholder text: `No Records Found`. [See this](https://drive.google.com/file/d/1EJJvqJb0iEoXP8YnKftgBFc8XHzVxKeD/view?usp=sharing)





