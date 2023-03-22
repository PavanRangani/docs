# Accounts
This is Investment account. This is different from Bank account. This account is used in Wire instruction of Limited partnership. Capital calls of LP are fulfilled from this account. 

## Entities

### Account Name
- It's mandatory and free form text input field.

### Account Number (Last 4)
- It's mandatory and number input field.
- Allows to enter 4 digits

### Disposed on
- It's mandatory and date input field.
- Applicable only when account is marked as dispose


## Browse Accounts

### UX Rule
- Active Accounts will be shown in the `Active` tab and Disposed accounts will be shown in the `Disposed` tab. 
- Shows proper message when no accounts avaialble for any tab.
- New account will be added only for the Active tab. Shows + button in the active tab.
- On click of + button, opens the add accounts dialog.
- Column name
    - Account Name
        - If account name is too long, shows name in multiline.
    - Account Number
    - Dispose Date
        - Applicable only for the Disposed tab.
- Sorting order: Accounts are sorted on the alphabetical order of Name.
- On hover, shows hover effect and vertmore action menu at right side. [See this](https://drive.google.com/file/d/1dAIjaY3jmRLBlaJz9Vl_1JIiDuW2VHWT/view?usp=share_link)
    - Vertmore action: `Edit`, `Dispose`, `Restore` & `Delete`.
    - `Dispose` & `Edit` action is applicable only for Active tab.
    - `Restore` action is applicable only for Dispose tab.
    - On sucess of `Restore` action, shows toast message. 
- Accounts won't be clickable. 

### UI Rule
[Mockup of Active tab](https://drive.google.com/file/d/1fggPK08FSpFe3ZxdxIUb7-4ddHHLAAMf/view?usp=share_link)

[Mockup of Disposed tab](https://drive.google.com/file/d/1K0heRf9V-ConmgSebIGkTHaPoPgFKi6V/view?usp=share_link)

- Placholder message: `No Accounts Available` [See this](https://drive.google.com/file/d/1kCKifi_Kph3Byi3EDkjQljx6wD1RF2rH/view?usp=share_link)



## Add Accounts
### System rule
- Account name should be unique across all accounts (Active or Disposed) of this legal entity (Not system wide unique)

### UX Rule
- New account can be added only for active tab.
- On uniqueness failure, it shows proper error message.

### UI Rule
[Mockup](https://drive.google.com/file/d/17BNZbMy44fOj-c-yLsJTObbzUTao1ine/view?usp=share_link)
- Error message for uniqness: `Account with same name already exists`. [See this](https://drive.google.com/file/d/1l4W5pzuKSVMNIaZHpqUxgZAcoks90o8v/view?usp=share_link)


## Edit Accounts

### System Rule
- Only active accounts can be edited
- When Accounts name is changed, system will auto update the associated funding account.

### UX Rule
- Can be edited anytime

### UI Rule
[Mockup](https://drive.google.com/file/d/1KiAN983OsLYaVfrhrQBG20fc21Ajqk7E/view?usp=share_link)


## Dispose Accounts

### System Rule
- Only active accounts can be disposed
- When any account is disposed, system ask for `Disposed on` date.

### UX Rule
- Once the account is disposed then it moves from the `Active` tab to `Disposed` tab.

### UI Rule
[Mockup](https://drive.google.com/file/d/1jYNDCSsE0jp26JehFPbcNlrH8XARS2sQ/view?usp=share_link)


## Restore Accounts

### System Rule
- Only disposed accounts can be restored.

### UX Rule
- Show toast message of success on action of `Restore`.

### UI Rule

Toast message is: `Restored Successfully`. [See this](https://drive.google.com/file/d/1qHWjoMbc2vg6PfjqTb2rR4oSv9C7M0nr/view?usp=share_link)


## Delete Accounts

### System Rule
- Active or Disposed both accounts can be deleted.
- When an Account is linked to any LP wire instruction, account can't be deleted.

### UX Rule
- When account is linked to LP, shows delete not possible dialog with proper message.

### UI Rule
[Mockup delete confirmation dialog](https://drive.google.com/file/d/1MkGSNlzvjzqO7o5G-R1UjYrZMPFrU_DR/view?usp=share_link)
[Mockup delete not possible dialog](https://drive.google.com/file/d/1mjlAFvjDcvSlD407TsAi64kUDqZwBs_A/view?usp=share_link)




