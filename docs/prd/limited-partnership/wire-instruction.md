# Wire Instruction

When Clarius clients invest in Private Capital Funds (we identify those as Limited Partnerships) those investment funds call capital periodically.  Clarius teams process a lot of these calls each year (currently about 600 private capital investments).  Our goal with this new feature is to streamline this process for the teams.

When a fund raise capital call instruction, Clarius team can enter wire instructions under and add its [investors](./investor.md)

## Browse Current wire instruction

### System Rule
- Any user can add wire instruction

### UX Rule
- Shows sticky pencil icon in all header.
- Wire Instructions details, when any new LP is added in fund and user opens the wire instruction tab, shows all wire instruction details field with `-`.
- Shows `Add New Instruction` action button when wire instruction details are added for the LP.
- Audit Information
    - On click of pencil icon, opens the add dialog where user can adds the audit information.
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
            - Shows `-` until funding account is not avaialble. Once funding account is added, shows that funding account name.
        - Template
            - [See more details](#select-template)

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
- Wire instruction can't be added for archived fund or archived asset manager.

#### Entity Details of Wire Instruction
- Incoming Wire Instruction
    - It is checkbox. Default it is unchecked. 

##### Applicable fields when `International Wire Instruction` is ON
- Currency 
    - Free form text input field.
- Receiving Bank Name
    - It is Company auto-completed dropdown. It is a mandatory field.
- ABA
    -  Number input field.
- Account Number
    - It is a mandatory and number input field.
- Receiving Bank Address
    - It is a mandatory and free form text input field.
- BIC
    - Free form text input field.
- SWIFT Code
    - Free form text input field.
- IBAN
    - Free form text input field. 
- Name on Receiving Bank Account
    - Free form text input field.
- Final Beneficiary 
    - It is a mandatory and free form text input field.
- Address of Final Beneficiary
    - It is a mandatory and free form text input field.
- Wire Reference
    - It is a mandatory and free form text input field.
- For Further Credit Account Number 
    - Free form text input field.

##### Applicable fields when `International Wire Instruction` is OFF
- Company
    - It is Company auto-completed dropdown. It is a mandatory field.
- ABA Routing Number
    - It's a mandatory field. Only 9 digits allowed. Format of representation is: `xxx-xxx-xxx`
- Account number
    - It's a mandatory and Number input fiels.
- Account Name
    - It's a mandatory and free form text input field.
- Beneficiary/Account Holder Address
    - It's a mandatory and free form text input field.
- Reference
    - It is not editable. It is shown only in the browse page.
    - It is shown hard coded line: `Always Reference Investor Name`
- Intermediary Information
    - It is a dropdown: `Yes` & `No`. Default `No` option is selected.
- Intermediary Name (Registration)
    - Applicable only when `Intermediary Information` is Yes.
    - It is a mandatory and text input field.
- Intermediary Account Number
    - Applicable only when `Intermediary Information` is Yes.
    - It is a mandatory and Number input field.
- Intermediary Address 
    - Applicable only when `Intermediary Information` is Yes.
    - It is a mandatory and text input field.
- Intermediary Phone
    - Applicable only when `Intermediary Information` is Yes.
    - It is a mandatory and phone number input field. Format of representation is: `xxx-xxx-xxxx`

### UX Rule
- When any new LP is added in fund and user opens the wire instruction tab, shows all wire instruction details field with `-`.
- For `Regular Wire Instuctions`, 
    - If user enters invalid number in `ABA Routing Number`, system shows error message.
    - If user enters invalid phone number in `Intermediary Phone`, system shows error message.

### UI Rule
[Mockup](https://drive.google.com/file/d/1gk58sxE8E2OaAA_vbH3D31bTgkmyEg5d/view?usp=share_link)
- Wire Instructions
    - Error message of `ABA Routing Number` or `Intermediary Phone`: `Invalid Format`


## Edit wire Instruction
### System Rule
- Any users can edited
- Only active instruction can be editable.
- When user edits the details of current wire instruction, system will update the wire instructions of all the activity where this instuction is pulled but it will not update the activity task.

### UX Rule
- When Wire Instruction has some data and user check the checkbox of `International Wire Intructions` and again uncheck the checkbox, then old data will not be removed. It will remain as it is.


## Add New Instruction (Amend wire Instruction)
### System Rule
- Any user can amended.
- Only active instruction can be amended.
- When user amends the instruction, the system will also save the date when the instruction is amended.
- When user amend the wire instructions, system ask the reason for the amendment and it notes is saved with the last instruction.
- When user amend the wire instruction, system will not update the existing approve activity wire instructions. 

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
- Audit information can't be added for archived fund or archived asset manager.
- Normal users can enter `Verbal Confirmation`, `Entry`. For `Second check`, Only those clarius user can enter the data whose `Allow wire instruction second check` is true.
- When all information (Verbal Confirmation, Entry & Second Check) is entered, audit section will be locked for normal user. When locked, Normal user can't edit Audit information.
- User can't enter audit information until all wire instruction available.
- System stores the creation or updation date stamp with each audit information. 

### UX Rule
- Shows pencil icon disabled when wire instruction is not available. On hover, shows tooltip message. 
- Pencil icon will not appear for archive fund or archived asset manager.
- `Verbal Confirmation` & `Entry`: It's alphabetical sorted dropdown of the active clarius user.
- `Second Check`: It's alphabetical sorted dropdown of those clarius user whose `Allow wire instruction second check` is true.
- When there is no user available for second check, shows `Second Check` field as disabled. On hover, shows tooltip message.
- Show pencil icon disabled for normal user. On hover, shows tooltip message. (Only admin user cab be edited or deleted)

### UI Rule
[Mockup](https://drive.google.com/file/d/1DGxoIT-KC1czk5NGoJ-05lpdVNeg2GwS/view?usp=share_link)
- Tooltip message when no instruction available: `Please add wire instructions first`
- Tooltip message for `Second Check`: `You don't have permission to change this`.
- Tooltip message when section is locked: `Second check is completed so this is locked. Please contact Admin to edit this`.


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
- Shows `Wire Instruction Details` for the archived instruction.
- Shows the `Audit Information` for the archived instruction.
- On hover of Funding account column, shows that funding account name in tooltip.

### UI Rule
[Mockup](https://drive.google.com/file/d/1DcHxNToWovmciJ4y-Ms8MCNJvMkGxTVt/view?usp=share_link)


## Add Funding Account
### System Rule
- Admin or non-admin both users are able to add funding accounts.
- User can't be add funding account until wire instruction available.
- Funding account is not a mandatory field.
- Users can able to select Checking type banking accounts and Cash flow Funding Accounts for the selected entity in the funding account.
- When user removes the Funding Account, system will reset the value of SLOA.

### UX Rule
- When current instruction is not available, the pencil icon of Funding Account is shown disabled. On hover, it shows tooltip message. 
- On hover of Investor, shows the pencil icon. 
- On click of icon, opens a dialog where users can select funding.
- Account type
    - It's a radio button. Values are: Banking & Cash Flow
    - Default `Banking` option is selected.
- Account
    - For Banking, its alphabetically sorted dropdown of Checking type banking account of the selected investor. Dropdown shows account nickname, Bank name and last 4 digit of account number with pipe separated. Like `{Account Nickname} | {Bank / Company Name} | {Last 4 digits of Account number}`.
    - For Cash Flow,  it is an alphabetically sorted dropdown of Funding Accounts of the selected investor. Dropdown shows the last 4 digit of the investment account number with pipe separated. Like `{Account Name} | {Last 4 digit of account number}`.
    - If the Investor is an individual, the dropdown shows all accounts (Bank & Cash Flow) of that Individual & Joint of that Individual.
    - If the Investor is Joint, the dropdown shows accounts (Bank & Cash Flow) of Joint & both individuals of the Joint.
    - Shows the first name of the Individual for Individual records and the Joint word for Joint records in the secondary information with each records.
- One investor will have only one fund.

### UI Rule

- Tooltip message: `Please add wire instructions first`.

[Mockup of add funding dialog](https://drive.google.com/file/d/1obEzCQ2tIVt5n-3fQyzWHVzUTBG6R1vZ/view?usp=share_link)

[Mockup of Banking dropdown](https://drive.google.com/file/d/1efaWVOJPyANKQB4a6utKnYV30c8tJzn-/view?usp=share_link)

[Mockup of Cash Flow dropdown](https://drive.google.com/file/d/1HvjG8n2zgZvf7cVuPGBZ4gtK7b_clY1Q/view?usp=share_link)



## Edit Funding Account
### System Rule
- Only current wire instruction fund can be edited anytime.
- When user change the funding account, only current instruction will be changed (Archived instruction won’t be changed)

### UX Rule
- On hover of the Funding account, it shows pencil icon. On click, opens the dialog.

### UI Rule 
[Mockup](https://drive.google.com/file/d/1cTLyShg7G9vbi_3N0D7KAWoBh51jEIr5/view?usp=share_link)



## Select Template
### System Rule
- Admin or non-admin users are able to select a template.
- User can't be updated the template until wire instructions available.
- By default, it shows the `Capital Call` system template. User can able to change it anytime.
- User can select only those templates whose `Configure Due days for subtasks` is true.
- If the selected template is deleted or user unchecked `Configure Due days for subtasks`, system will auto remove that template and add a default template. 

### UX Rule
- When current wire instruction is not available, pencil icon of the template is shown disabled. On hover, it shows a tooltip message.
- On click of Pencil icon, opens a dialog where users can select template. 
- Dialog shows one field `Template`. It alphabetically sorted dropdown of template whose `Configure Due days for subtasks` is true.
- One investor will have only one template.

### UI Rule
- Tooltip message: `Please add wire instructions first`.
- [Mockup](https://drive.google.com/file/d/1FgH-A25oLTdybR6GjcP2jFDomwI_6umx/view?usp=share_link)



