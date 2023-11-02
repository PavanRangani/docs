# Funding Account

## Entity Details

| Type                    |                         | Field Name                 | Description                                                                                                                                                                                                                                                                                                                                                                                  |
|-------------------------|-------------------------|----------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Funding Account Details | Account Details         |                            |                                                                                                                                                                                                                                                                                                                                                                                              |
|                         |                         | Bank / Company             | It is a mandatory field and company dropdown whose type is `Banking/Credit`. <br />Default shows `Citibank`. If the user deleted or rename or change the type or archive the `Citibank` company, this field shows blank.                                                                                                                                                                     |
|                         |                         | Account Nickname           | It is free form text input field. It's a mandatory field.                                                                                                                                                                                                                                                                                                                                    |
|                         |                         | Account Number             | It is a mandatory field. Allows only 8 number.                                                                                                                                                                                                                                                                                                                                               |
|                         |                         | Incoming Wire Instructions | It is a mandatory and multiline free form text input field.                                                                                                                                                                                                                                                                                                                                  |
|                         |                         | Entry                      | It's an alphabetically sorted dropdown of that clarius user whose `Allow wire instruction second check` is true.                                                                                                                                                                                                                                                                                 |
|                         |                         | Second Check               | It's an alphabetically sorted dropdown of those clarius users whose `Allow wire instruction second check` is true.                                                                                                                                                                                                                                                                                 |
|                         | SLOA Wire (General)     |                            |                                                                                                                                                                                                                                                                                                                                                                                              |
|                         |                         | Nickname                   | It is a mandatory and free-form text input field.                                                                                                                                                                                                                                                                                                                                            |
|                         |                         | Bank                       | It is a mandatory field. It is a dropdown of Banking/Credit type company.                                                                                                                                                                                                                                                                                                                    |
|                         |                         | Account Number             | It is a mandatory field. Allows only 8 numbers.                                                                                                                                                                                                                                                                                                                                               |
|                         | SLOA Wire (Investments) |                            |                                                                                                                                                                                                                                                                                                                                                                                              |
|                         |                         | Asset Manager              | It is a mandatory field. It's a dropdown of Asset Manager company having a Limited Partnership fund.                                                                                                                                                                                                                                                                                           |
|                         |                         | Fund                       | It is a mandatory field. It shows the LPs of the selected asset manager.                                                                                                                                                                                                                                                                                                                         |
|                         |                         | Bank                       | It is disabled. It pulls the `Bank` data from the wire instruction tab of the selected fund.                                                                                                                                                                                                                                                                                             |
|                         |                         | Account Number             | It is disabled. It pulled the `Account Number` data from the wire instruction tab of the selected fund.                                                                                                                                                                                                                                                                                   |
|                         | SLOA Journal            |                            |                                                                                                                                                                                                                                                                                                                                                                                              |
|                         |                         | Nickname                   | It is a mandatory and free form text input field.                                                                                                                                                                                                                                                                                                                                            |
|                         |                         | Company                    | It is a mandatory field. It is a dropdown of Banking/Credit type company.                                                                                                                                                                                                                                                                                                                    |
|                         |                         | Account Number             | It is a mandatory field. Allows only 8 numbers.                                                                                                                                                                                                                                                                                                                                               |
|                         | SLOA Check              |                            |                                                                                                                                                                                                                                                                                                                                                                                              |
|                         |                         | Payee                      | It is a mandatory and free-form text input field.                                                                                                                                                                                                                                                                                                                                            |
|                         |                         | Memo                       | It is a free form text input field.                                                                                                                                                                                                                                                                                                                                                          |
|                         |                         | Address                    | It is a mandatory and free form text input field.                                                                                                                                                                                                                                                                                                                                            |
|                         | SLOA MoneyLink          |                            |                                                                                                                                                                                                                                                                                                                                                                                              |
|                         |                         | Nickname                   | It is a mandatory and free form text input field.                                                                                                                                                                                                                                                                                                                                            |
|                         |                         | Bank                       | It is a mandatory field. It is a dropdown of Banking/Credit type company.                                                                                                                                                                                                                                                                                                                    |
|                         |                         | Account Number             | It is a mandatory field. Allows only 8 number.                                                                                                                                                                                                                                                                                                                                               |
|                         |                         | Autorization Type          | It is a mandatory field. It's a dropdown of `Incoming Only`, `Outgoing Only` and `Incoming & Outgoing`.                                                                                                                                                                                                                                                                                      |
| Check Writing           | Details                 |                            | This section is applicable only when the `Check Writing` section switch is ON.                                                                                                                                                                                                                                                                                                                   |
|                         |                         | DDA Bank                   | It is a mandatory field and company dropdown whose type is `Banking/Credit`. <br />Default shows `Bank of New York - Mellon`. If the user deleted or rename or change the type or archive the `Bank of New York - Mellon` company, this field shows blank.                                                                                                                                   |
|                         |                         | DDA Routing Number         | It's mandatory and a number input field. (No limitation to enter number). <br />Default shows this number `031100157`.                                                                                                                                                                                                                                                                       |
|                         |                         | DDA Account Number         | It's mandatory and Number input field. (No limitation to enter number)                                                                                                                                                                                                                                                                                                                       |
|                         | EFTPS                   |                            | This section is applicable only when `Check Writing` section switch is ON.                                                                                                                                                                                                                                                                                                                   |
|                         |                         | EFTPS Enrollment Number    | Applicable only when the `EFTPS` switch is ON. <br />It is a mandatory and number input field. Allows to enter 18 numbers                                                                                                                                                                                                                                                                    |
|                         |                         | EFTPS Pin                  | Applicable only when the `EFTPS` switch is ON. <br />It is a mandatory and number input field. Allows to enter 4 numbers                                                                                                                                                                                                                                                                     |
|                         |                         | Tax ID Entry               | Applicable only when the `EFTPS` switch is ON. It's a mandatory field. <br />It is a disabled field for all entities other than Joint. It is shown the entity name where this funding account is added. - For Joint, it is a dropdown of Individual of the Joint. Users can select any one individual.                                                                                        |
|                         |                         | Tax ID Number              | Applicable only when the `EFTPS` switch is ON. It's a mandatory field. <br />If an entity is an Individual, show the `Individual SSN` number. <br />If an entity is Partnership or Trust, it shows either EIN or SSN number. <br />If an entity is Foundation or Estate, it shows the EIN number. <br />For DAF type foundation, it shows the EIN number of the selected organization group. |
| Notes                   |                         |                            |                                                                                                                                                                                                                                                                                                                                                                                              |
|                         | Notes                   |                            | It is a free form text input field.                                                                                                                                                                                                                                                                                                                                                            |
| Archive Details         |                         |                            |                                                                                                                                                                                                                                                                                                                                                                                              |
|                         |                         | Archived Date              | Applicable only when any SLOA is marked as archived. It is a mandatory and date input field.                                                                                                                                                                                                                                                                                                   |
|                         |                         | Archive Note               | Applicable only when any SLOA is marked as archived. It is a free-form text input field.                                                                                                                                                                                                                                                                                                     |


## Add Funding Account
### System Rule
- Account name should be unique across all accounts (Active or Disposed) of this legal entity (Not system-wide unique)

### UX Rule
- New account can be added only for the active tab.
- On uniqueness failure, it shows a proper error message.
- User can enter only `Funding Account details` from the add dialog. 

### UI Rule
[Mockup of add funding dialog](https://drive.google.com/file/d/1JS1-rdNkODP-ogVxSUjCeA8l1zAacq3X/view?usp=sharing) 
- Error message for uniqueness: `Account with same name already exists`. [See this](https://drive.google.com/file/d/1l4W5pzuKSVMNIaZHpqUxgZAcoks90o8v/view?usp=share_link)


## Edit Funding Account
### System Rule
- Can be editable anytime.
- Only active funding accounts can be edited.
- When the account name is changed, system will auto-update the associated funding account in the wire instructions.

### UI Rule
[mockup](https://drive.google.com/file/d/1SIWkJQlTkvAmUAvzEMVR-4TFajZ2ckPB/view?usp=sharing)


## Delete Funding Account
[See more details](./banking.md#delete)

## Dispose Funding Account
[See more details](./banking.md#dispose)

## Restore Funding Account
[See more details](./banking.md#restore)


## View Funding Account

### UX Rule
- Shows the Funding account in 2 tabs: `SLOA` & `Checkwriting (ACH)`.

**SLOA tab**
- Shows `Funding Account Details`, `SLOA` & `Notes` in the `SLOA` tab.  
  - Shows pencil icon in both sections `Funding Account Details` & `Notes`. On click, opens the edit dialog.
  - Pulled the latest data of the `Incoming Wire Instruction` to the funding account.
  - If `Incoming Wire Instruction` is too long, shows it in multiline. When field is blank, shows `-`.
- Shows all SLOAs in order of - `SLOA Wire (General)`, `SLOA Wire (Investments)`, `SLOA Journal`, `SLOA Check` & `SLOA Moneylink`
- Each SLOA have `+` button. On click, opens the add SLOA dialog.
- `+` button isn't shown for disposed banking account.
- Shows proper message when any SLOA has no data available.
- Shows archived SLOA in the `Archived` SLOA tab.
- New SLOA can't be added from the Archived tab.
- Shows count of the Active SLOAs with the Active tab. (Count not visible for Archive tab)
- Columns of the `SLOA Wire (General)`, `SLOA Wire (Investments)`, `SLOA Journal`, `SLOA Check` & `SLOA Moneylink`
    - Nickname 
      - If name is too long, shows it in multiline.
      - Not applicable for the `SLOA Wire (Investments)`.
    - Asset Manager / Fund
      - Applicable only for the `SLOA Wire (Investments)`.
      - It shows the Asset Manager and Fund name with `|` separated. If it too long, shows it in multiline.
    - Bank
      - It is a link. On click, opens the view dialog of a bank.
    - Account Number
    - Authorization Type
      - Applicable only for the `SLOA Moneylink`.
    - Payee
      - Applicable only for the `SLOA Check`.
      - If it is too long, shows it in multiline.
    - Memo
      - Applicable only for the `SLOA Check`.
      - If it is too long, shows it in multiline.
    - Address
      - Applicable only for the `SLOA Check`.
      - If it is too long, shows it in multiline.
    - Last Transaction
      - Applicable for all types of SLOA.
      - When any Subtask where this SLOA is used is marked as done, the system sets the Subtask done date as a `Last Transaction` date of that SLOA. (Here, system sets the sub-tasks done date not a task done date)
      - It shows the latest done date. 
        - For e.g. If any task has 2 sub-tasks where the same SLOA is added. Now, if the user marks the first sub-task as done  on `April 2` and the second sub-task on `May 15`, the system will set `15 May` as the `Last Transaction` for that SLOA. 
          - In above case, suppose user reopens the second sub-tasks. System will update the `Last Transaction` date from `May 15` to `Apr 2`.
      - Shows `-` if no date available.
      - Suppose user has 2 tasks having same SLOA used. Now, user marked as done the first task in `Jan 31` and user marked as done the second task in `Feb 27`. So now system will shows the `Feb 27` as a `Last Transaction`. 
    - Archive Date
      - Applicable only for Archived records.
    - Shows `Archive Note` in the secondary information for archived SLOA.
- Sorting order under each SLOAs (Active or Archived): Records are sorted on alphabetical order of `Nickname` or `Asset Manager/Fund` or `Payee`.
  - `Nickname` for `SLOA Wire (General)`, `SLOA Journal` & `SLOA Moneylink`
  - `Asset Manager / Fund` for `SLOA Wire (Investments)`
  - `Payee` for `SLOA Check`
- On hover of any record (Active or Archive) under SLOA, shows vertmore action.
  - Vertmore action: `Edit` & `Delete`
  - On click of `Edit`, opens the edit SLOA dialog.
  - On click of `Delete`, opens the delete confirmation.
- Following fields are shown as Link in `Funding Account details`: `Bank / Company`
  - On click, opens the company view dialog on the same page.


**Checkwriting (ACH) tab** 
- Checkwriting details and EFTPS details are shown in the `Checkwriting (ACH)` tab.
- Shows `Checkwriting (ACH)` tab disabled until checkwriting switch is ON.
- Shows proper message when the Checkwriting switch is OFF. 
- Shows proper message when EFTPS is OFF.
- Following fields are shown as Link in `Checkwriting (ACH)`: `DDA Bank` & `Tax ID Entity`
  - On click, opens the company view dialog or Entity view page on the same page.
- When EFTPS is enabled, shows `Funding account name` and `Account number` with `|` separated. [See this](https://drive.google.com/file/d/1SVW1LT3VZjfVn9N1pjRcyR1kYSBokULM/view?usp=sharing) 


### UI Rule
- [view dialog](https://drive.google.com/file/d/1ZFbAp7V0dx2Y6mrKD4oE0JNXhCkvG3i0/view?usp=sharing)

- SLOA placeholder message: `No {SLOA type} Available`
- Message when Checkwriting switch is OFF: `Checkwriting is disabled`
- Message when EFTPS is OFF: `EFTPS is disabled`



## Add SLOA
### System Rule
- There is no uniqueness in any SLOA. User can enter same data for multi time in one SLOA.
- For `SLOA Wire (Investment)`, when user enters a new funding account, system will pull the latest value of `Bank name` & `Account Number`.
- Same SLOAs can't be added. 

### UX Rule
- Can be added from the View dialog.
- Each SLOA can be added separately.
- User can enter more than one record under each SLOA.
- For `SLOA Wire (Investment)`, if LP fund has no `Bank` or `Account Number` available, shows error message in the `Fund` field. [See this]
- System validation uniqueness for all details of the SLOA under each type. When the user enters a SLOA that is already added in Active/Archived SLOA, the system will show a duplication error message. 

### UI Rule
- [Add SLOA Wire (General)](https://drive.google.com/file/d/1wGHgAPwGCdU_mxVKelKnq3ik-Q9QGXnV/view?usp=sharing)
- [Add SLOA Wire (Investments)](https://drive.google.com/file/d/19j1nN5-MEHEdFGoJFGizRZt38CUqUDvj/view?usp=sharing)
- [Add SLOA Journal](https://drive.google.com/file/d/1viH1hfySjSCX5hSoGhuV3gH_koQ-JjVj/view?usp=sharing)
- [Add SLOA Check](https://drive.google.com/file/d/1IukANckZdalVhq8zu3aIWMxokUXc_4su/view?usp=sharing)
- [Add SLOA Moneylink](https://drive.google.com/file/d/1VcpnJC_JgY-bfrxcAS0LGc7vuFD3Xs65/view?usp=sharing)

- For `SLOA Wire (Investment)`, error message for Fund: `Bank/Account number not available for this Fund`
- Duplicate SLOA error message: `SLOAs with same details already exists` 


## Edit SLOA
### System Rule
- Can't be edited anytime.
- Active or Archived both SLOAs can be edited.
- User can archived any SLOA records from edit.
- For `SLOA Wire (Investment)`, when any records archived by system, user can manually unarchive them.
- **Known Case**
    - Even if EFTPS of a Funding Account has been added to a tax return, the user can turn OFF the EFTPS switch for that account. In this case, system won't remove the details of EFTPS from the existing tax return. It will remain as it is.

### UX Rule
- Shows an `Archived` checkbox with each record in the SLOA section. This checkbox also appears when new record is added from edit mode.
- For `SLOA Wire (Investment)`, if the system marked the record as archived, Archived checkbox appears as disabled. On hover, shows a tooltip message.

### UI Rule
- For `SLOA Wire (Investment)` tooltip message: `Wire Instruction of this Fund is amended. So user can not restore it`
- [Edit dialog](https://drive.google.com/file/d/1nINYrOktNrGeMYjnJ-EL3R9tuGk2xTxB/view?usp=sharing)


## Delete SLOA

### System Rule
- Can be deleted anytime.
- Active and Archived both SLOA can be deleted.
- If SLOA is used in any task/trigger/template, the system will show a warning to the user. 

### UX Rule
- On delete, shows Delete confirmation dialog.
- If any SLOA is added in Task, show the proper message in the delete confirmation dialog.

### UI Rule
- [Normal Delete confirmation dialog](https://drive.google.com/file/d/1YwT0N-M0LXu3eYIqaC_Vf0O-7LZ281S-/view?usp=sharing)
- [Delete confirmation dialog with message](https://drive.google.com/file/d/1lpqCNHiia7F9wClJJvf3gOPX86kxqGxR/view?usp=sharing)


## Archive SLOA
### System Rule
- For `SLOA Wire (Investment)`, if wire instruction is amended, the system will auto-archive the funding account SLOA wire record. 
  - System will set the current date as an archived date. 
- Only active SLOA can be archived

### UX Rule
- SLOA can only be archived from the Edit dialog. 


## Edit Check Writing or EFTPS
### System Rule
- Can be edited anytime.
- Only active funding account Check Writing details can be edited.
- If `Check Writing` & `EFTPS` has data and user switches OFF, System will remove the its data.

### UX Rule
- Edit icon is not shown for Dispose banking account.
- Shows proper message when `Checkwriting` switch is OFF. [See this](https://drive.google.com/file/d/1kdjRxmmzJWRSBi7IHKGZkf-Teu7AiiVN/view?usp=drive_link)
- Shows proper message when the `EFTPS` switch is OFF. [See this](https://drive.google.com/file/d/1WD9-YR2-3Wlq7QuZ9wBWEVAZy_0u2o1o/view?usp=drive_link)

### UI Rule
- Message when `Check Writing` is OFF: `Check Writing is currently disabled. You can enable it through the above switch`
- Message when `EFTPS` is OFF: `EFTPS is currently disabled. You can enable it through the above switch`
- [Edit Check writing](https://drive.google.com/file/d/1Yrro0ICuzmBeLTVCYXViTkfb9caVUhhx/view?usp=drive_link)




