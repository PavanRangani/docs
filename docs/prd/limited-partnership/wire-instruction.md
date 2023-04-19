# Wire Instruction

When Clarius clients invest in Private Capital Funds (we identify those as Limited Partnerships) those investment funds call capital periodically.  Clarius teams process a lot of these calls each year (currently about 600 private capital investments).  Our goal with this new feature is to streamline this process for the teams.

When a fund raise capital call instruction, Clarius team can enter wire instructions under and add its [investors](./investor.md)

## Browse Current wire instruction

### System Rule
- Only admin user can add wire instruction

### UX Rule
- When non-admin user opens the current wire instruction tab and it has no instruction available, system shows proper message.
- When user opens the Wire instruction tab, it will directly open in the Edit mode.
- Shows sticky pencil icon with rich input text editor.
- Shows `Add New Instruction` action button when LP has wire instruction.
- Audit Information
    - Shows pencil icon. On click, opens the add dialog where user can adds the audit information.
    - Columnns
        - Action
            - Table shows 3 actions: `Verbal Confirmation`, `Entry` & `Second Check`
        - User
            - Shows clarius user name.
        - Time Stamp
            - When a user enters audit data, the system stores the time of creation or update along with the username that performed this action. 
            - For e.g. `{Created or Updated} {Date} by {User name whose performs this action}`. 
            - Timestamps will only appear for Action having User.
- Investor section
    - Columns
        - Investors
            - Shows all investors of the Investor tab in the alphabetical order of investor name.
        - SLOA
            - It is a checkbox. 
        - Funding Account 
            - Applicable only when SLOA is true.
            - On hover of records, shows pencil icon. On clicks, opens the  `Select Funding Account` dialog where users can add a funding account.
            - Shows `-` until funding account is not avaialble. once funding account is added, shows that funding account name.

### UI Rule 

[Mockup for admin user opens the Wire Instruction tab](https://drive.google.com/file/d/1eFwie7rSfltV1jy918RmwbiRwRp9EYdP/view?usp=share_link)

[Mockup when instruction is added](https://drive.google.com/file/d/1KRTTiz2QhXY0cqHA4h32YQx01xkDm7a4/view?usp=share_link)

[Mockup when user hover the investor having SLOA = True](https://drive.google.com/file/d/1WIY6JbTUSJogegAL4orAzgQhTpExYElq/view?usp=share_link)


## Browse Archived wire instruction

### UX Rule
- Columns
    - Archived Date
        - Shows the date when instruction is amended.
    - Notes
        - Shows Reason for Amend notes here.
        - If note is too long, show note in the multiline.
- Sorting order: Instruction will be shown in the descending order of the Archived date. (Latest amended notes will be shown first.)
- Shows proper message when no records available.
- On click of record, opens the view dialog of that instruction.
- Archived instruction won't be edited or deleted or restored.

### UI Rule
[Mockup](https://drive.google.com/file/d/1evhrgwCzWDVuhZEq5Cc37L8PjQHJKH-s/view?usp=share_link)
- Placeholder message: `No Records Available`.


## Add wire Instruction
### System Rule
- Any users can add instructions.

### UX Rule
- When user enters any note, it shows `CANCEL` and `SAVE` button.
- On click of SAVE, instructions will be saved and it appears for the normal user.
- On click of CANCEL, notes will be removed.

### UI Rule
[Mockup](https://drive.google.com/file/d/1gk58sxE8E2OaAA_vbH3D31bTgkmyEg5d/view?usp=share_link)



## Edit wire Instruction
### System Rule
- Any users can edited
- Only active instruction can be editable.


## Add New Instruction (Amend wire Instruction)
### System Rule
- Any user can amended.
- Only active instruction can be amended.
- When user amends the instruction, the system will also save the date when the instruction is amended.
- When user amend the wire instructions, system ask the reason for the amendment and it notes is saved with the last instruction.

### UX Rule
- Applicable only when wire instruction is added. 
- On click of amend action button, it opens the `Reason for Archiving Current Instruction` dialog. It's mandatory. 
- Shows proper warning message when user opens the dialog.
- On amend, current instruction will be moved to the archived tab and wire instruction tab will show empty instuction is edit mode.
    - All details will be reset.

### UI Rule
[Mockup of Reason for Amend](https://drive.google.com/file/d/1shMopbx9H9VEGQXO-IQ2i0ZSTcc1TwFA/view?usp=share_link)
[Mockup when current instruction is amemded and user opens the current tab](https://drive.google.com/file/d/1ij37WzhyrlQYLpG-Y5opvlORd0xIzC_X/view?usp=share_link)
- Warning text: `Current instruction will be archived and you have to enter a new instruction`.


## Add Audit Information
### System Rule
- Any user can able to add audit information. (Admin or Non-admin)
- User can enter total of 3 audit information: `Verbal Confirmation`, `Entry` & `Second Check`
- Only admin user can enter `Second Check` data.
- User can't be enter audit information until wire instruction available.
- System can stores the creation or updation date stamp with each autited information. 
- Normal user can't be edited once the all information is entered.

### UX Rule
- Shows pencil icon disabled when wire instruction is not available. on hover, shows tooltip message. 
- `Verbal Confirmation` & `Second Check`: It's alphabetical sorted dropdown of the active clarius user.
- `Entry`: Its dropdown of the Active admin user. 
- When normal user opens the dialog, `Second Check` fields shown disabled. On hover, shows tooltip message.
- When all information (`Verbal Confirmation`, `Entry` & `Second Check`) is entered, audit section will be locked for normal user. Show pencil icon disabled for normal user. On hover, shows tooltip message. (Only admin user cab be edited or deleted)

### UI Rule
[Mockup]()
- Tooltip message when no instruction available: `Please add wire instructions first`
- Tooltip message for `Second Check`: `Only Admin user can change this`.
- Tooltip message when section is locked: `Please contact admin to edit this`.


## Set SLOA = True / False
### System Rule
- User can't be set it value True until wire instruction available.
- Value can be set to True only for Investors having Funding Account.
- Any user can able to set its value True / False.


### UX Rule
- When Funding Account is not available, the checkbox of SLOA is shown disabled. On hover, it shows tooltip message. [See this](https://drive.google.com/file/d/1e_Kp3KUEUg85OdzQ1ABvkOtUCQyseh5h/view?usp=share_link)
- When Funding Account is removed, SLOA will be set to False for that Investors.

### UI Rule
- Tooltip message for SLOA: `Please select Funding account first`.


## View archived wire Instruction

### UX Rule
- On click of the archived instruction record, opens the view dialog.
- View dialog shows the `Reason for Archive` section.
- Shows the `Audit Information` for the archived instruction.
- On hover of Funding account column, shows that funding account name in tooltip.

### UI Rule
[Mockup](https://drive.google.com/file/d/1DcHxNToWovmciJ4y-Ms8MCNJvMkGxTVt/view?usp=share_link)


## Add Funding Account
### System Rule
- Admin or non-admin both users are able to add funding accounts.
- User can't be add funding account until wire instruction available.
- Funding account is not a mandatory field.
- Users can able to select Checking type banking accounts and Investment Accounts for the selected entity in the funding account.
- When user removes the Funding Account, system will reset the value of SLOA.

### UX Rule
- When current instruction is not available, the pencil icon of Funding Account is shown disabled. On hover, it shows tooltip message. 
- On hover of Investor, shows the pencil icon. 
- On click of icon, opens a dialog where users can select funding.
- Account type
    - It's a radio button. Values are: Banking & Investment
    - Default `Banking` option is selected.
- Account
    - For Banking, its alphabetically sorted dropdown of Checking type banking account of the selected investor. Dropdown shows account nickname, Bank name and last 4 digit of account number with pipe separated. Like `{Account Nickname} | {Bank / Company Name} | {Last 4 digits of Account number}`.
    - For Investment,  it is an alphabetically sorted dropdown of Accounts of the selected investor. Dropdown shows the last 4 digit of the investment account number with pipe separated. Like `{Account Name} | {Last 4 digit of account number}`.
- One investor will have only one fund.

### UI Rule

- Tooltip message: `Please add wire instructions first`.

[Mockup of add funding dialog](https://drive.google.com/file/d/1obEzCQ2tIVt5n-3fQyzWHVzUTBG6R1vZ/view?usp=share_link)

[Mockup of Banking dropdown](https://drive.google.com/file/d/1efaWVOJPyANKQB4a6utKnYV30c8tJzn-/view?usp=share_link)

[Mockup of Investment dropdown](https://drive.google.com/file/d/1HvjG8n2zgZvf7cVuPGBZ4gtK7b_clY1Q/view?usp=share_link)



## Edit Funding Account
### System Rule
- Only current wire instruction fund can be edited anytime.
- When user change the funding account, only current instruction will be changed (Archived instruction won’t be changed)

### UX Rule
- On hover of the Funding account, it shows pencil icon. On click, opens the dialog.

### UI Rule 
[Mockup](https://drive.google.com/file/d/1cTLyShg7G9vbi_3N0D7KAWoBh51jEIr5/view?usp=share_link)



