# Money Movement

## Entities

### Account Name
- It's mandatory and free form text input field.

### Account Number (Last 4)
- It's mandatory and number input field.
- Allows to enter 4 digits

### Check Writing
- It's a checkbox field. Default it is unchecked.

### Schwab One (BNY Mellon)
- Applicable only when `Check Writing` checkbox is true.
- It is a mandatory field. It's dropdown of Active Checking and Saving type bank account where bank is `Schwab One (BNY Mellon)`.

### MoneyLink
- It's a checkbox field. Default it is unchecked.

### SLOA
- It's a checkbox field. Default it is unchecked.

### Bank
- Applicable only when `MoneyLink` or `SLOA` checkbox is true.
- It is a mandatory field. It's an auto complete dropdown of Company.

### Nickname
- Applicable only when `MoneyLink` or `SLOA` checkbox is true.
- It is a mandatory field. It's a free form text input field.

### Checking/Saving Account
- Applicable only when `MoneyLink` or `SLOA` checkbox is true.
- It's dropdown of Active Checking and Saving type Banking account of the entity. 


### Disposed on
- It's mandatory and date input field.
- Applicable only when account is marked as dispose.


## Add Funding Account
### System Rule
- Account name should be unique across all accounts (Active or Disposed) of this legal entity (Not system wide unique)
- It is possible that Funding Account doesn't have `Check Writing`, `MoneyLink` or `SLOA` details. For e.g. Suppose the user doesn’t have clicked on any checkbox and add funding account.
- It is also possible that Funding Account have all 3 values of `Check Writing`, `MoneyLink` or `SLOA` details. For e.g. Suppose the user have clicked on any checkbox and add funding account.

### UX Rule
- New account can be added only for active tab.
- On uniqueness failure, it shows proper error message.

### UI Rule
[Mockup with no checkbox is selected](https://drive.google.com/file/d/1WCChlYlBmFZjwIPyNKvyhovVfcxwaGZi/view?usp=drive_link) & [Mockup when all checkbox are selected](https://drive.google.com/file/d/1Ek5ibumtIM1fogqP9xaELmlCRzDxyT-_/view?usp=drive_link)
- Error message for uniqness: `Account with same name already exists`. [See this](https://drive.google.com/file/d/1l4W5pzuKSVMNIaZHpqUxgZAcoks90o8v/view?usp=share_link)


## Edit Funding Accounts

### System Rule
- Only active accounts can be edited
- When Accounts name is changed, system will auto update the associated funding account.

### UX Rule
- Can be edited anytime


## Browse Funding Account

### UX Rule
- Active `Fudning Accounts` will be shown in the `Active` tab and Disposed `Funding Accounts` will be shown in the `Disposed` tab.
- Shows proper message when no records available for any tab. [See this](https://drive.google.com/file/d/1qzisHiOpoUdqYZzKbxeOvXojfuai4eG5/view?usp=drive_link)
- If any tab has no records available, shows that tab as disabled.
- New funding account will be added only for the Active tab. Shows `+` button in the active tab. On click of `+` button, opens the add Funding Accounts dialog.
- Columns Name 
    - Account Name: If account name is too long, shows name in multiline.
    - Account Number
    - Dispose Date: Applicable only for Disposed tab.
- Sorting order: Accounts are sorted on the alphabetical order of the Account Name.
- If fund has some more details (Check Writing, MoneyLink & SLOA), shows that details with the fund.
    - Columns:
        - Type 
            - It shows the type of the details. Like `Check Writing`, `MoneyLink` & `SLOA`
        - Bank / Fund
            - If Account has Bank, shows that Bank name.
            - If the funding account of the such entity is added in any Wire Instructions of the Fund and SLOA is true, shows that fund name.
        - Account Nickname
            - If funding account has Account nickname, shows that nickname otherwise shows `-`.
    - Sorting order: Checking type is show first, MoneyLink type is shows second, SLOA bank account is shown third and Pulled SLOA is shown fourth.
- On hover each funding account, shows hover effect and vertmore action menu at right side. [See this](https://drive.google.com/file/d/1dAIjaY3jmRLBlaJz9Vl_1JIiDuW2VHWT/view?usp=share_link)
    - Vertmore action: `Edit`, `Dispose`, `Restore` & `Delete`.
    - `Dispose` & `Edit` action is applicable only for Active tab.
    - `Restore` action is applicable only for Dispose tab.
    - On sucess of `Restore` action, shows toast message.
- Account won't be clickable.

### UI Rule

[Mockup of Active tab](https://drive.google.com/file/d/1W484nDK6Lr7pfTfpzFYCcBNd-hZmPhe3/view?usp=drive_link)

[Mockup of Disposed tab](https://drive.google.com/file/d/1K0heRf9V-ConmgSebIGkTHaPoPgFKi6V/view?usp=share_link)

- Placholder message: `No Accounts Available` 


## Dispose Funding Accounts

### System Rule
- Only active funding accounts can be disposed
- When any account is disposed, system ask for `Disposed on` date.

### UX Rule
- Once the account is disposed then it moves from the `Active` tab to `Disposed` tab.

### UI Rule
[Mockup](https://drive.google.com/file/d/1qW151hvlz8OHWULsZqS2SDYg1NxOuS8p/view?usp=drive_link)


## Restore Funding Accounts

### System Rule
- Only disposed accounts can be restored.

### UX Rule
- Show toast message of success on action of `Restore`.

### UI Rule

Toast message is: `Restored Successfully`. [See this](https://drive.google.com/file/d/11RHUE--5RLPnp9iM4jXunKQfytgK1LNh/view?usp=drive_link)


## Delete Funding Accounts

### System Rule
- Active or Disposed both accounts can be deleted.
- When an Account is linked to any LP wire instruction, account can't be deleted.

### UX Rule
- When account is linked to LP, shows delete not possible dialog with proper message.

### UI Rule
[Mockup delete not possible dialog](https://drive.google.com/file/d/1ZKO6xrhBucFAZ658zCGBaR1t-Y0Jd9Jq/view?usp=drive_link)
