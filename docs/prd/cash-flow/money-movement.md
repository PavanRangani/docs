# Money Movement

## Browse Funding Account

### System Rule
- Funding accounts is pulled from Banking module for same entity.

### UX Rule
- New funding account can't be added from `Cash Flow | Money Movement` tab. 
- Active `Fudning Accounts` will be shown in the `Active` tab and Disposed `Funding Accounts` will be shown in the `Disposed` tab.
- Shows proper message when no records available for any tab. [See this](https://drive.google.com/file/d/1qzisHiOpoUdqYZzKbxeOvXojfuai4eG5/view?usp=drive_link)
- If any tab has no records available, shows that tab as disabled.
- Columns Name 
    - Account Name: If account name is too long, shows name in multiline.
    - Account Number
    - Dispose Date: Applicable only for Disposed tab.
- Sorting order: Accounts are sorted on the alphabetical order of the Account Name.
- If fund has some more details (Check Writing, MoneyLink & SLOA), shows that details with the fund.
    - Columns:
        - Type 
            - It shows the type of account details. like `Check Writing`, `MoneyLink`, `SLOA-Wire`, `SLOA-MoneyLink`, `SLOA-Journal`.
            - Shows `SLOA` for pulled funding accounts.
        - Bank / Fund
            - If Account has Bank, shows that Bank name.
            - If the funding account of the such entity is added in any Wire Instructions of the Fund and SLOA is true, shows that fund name.
            - If Bank/Fund name is too long, shows it in multiline.
        - Account Nickname
            - If funding account has Account nickname, shows that nickname otherwise shows `-`.
            - If Account Nickname name is too long, shows it in multiline.
    - Sorting order: Checking type is show first, MoneyLink type is shows second, SLOA bank account is shown third. SLOAs are alphabetical sorted on bank/fund. 
- Account won't be clickable.

### UI Rule

[Mockup of Active tab](https://drive.google.com/file/d/1W484nDK6Lr7pfTfpzFYCcBNd-hZmPhe3/view?usp=drive_link)

[Mockup of Disposed tab](https://drive.google.com/file/d/1K0heRf9V-ConmgSebIGkTHaPoPgFKi6V/view?usp=share_link)

- Placholder message: `No Accounts Available` 
