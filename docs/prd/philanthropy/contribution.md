# Contribution

## Add Contribution

Contribution can't be given to terminated foundation.

### UI Requirement

[Mockup](https://drive.google.com/file/d/1FDZwYsVzthc40SXkd2GS7ZV7At8F4PjB/view?usp=sharing)

- Contribution will always be `One-Time`. 

- When Contribution is created in context of Organization, `Organization` can not be changed.
- When there isn't any foundation available for the family, While adding contribution it shows error in organization field and doesn't allow to create contribution. [See this](https://drive.google.com/file/d/1STLNDm9C2-ImI-yyCSutoGrL_RLfcXs6/view?usp=sharing)
- While adding contribution from organization page, if organization is Terminated, it shows error `This Organization is Terminated`.



## Edit Contribution

- Can be edited any time.
- Notes, Payment mode can be changed any time

### UI Requirement

[Mockup](https://drive.google.com/file/d/1-ngcqgb8mdkv5g9NkYDaFYZbniZtQ-mT/view?usp=sharing)



## View Contribution

- On click of any contribution opens Contribution view in the dialog.

### UI requirements

[Mockup](https://drive.google.com/file/d/15RmrKNA6BPrjGTXUTc8pmNTmmfHoMtVB/view?usp=sharing) 

## Delete Contribution 

- Can be deleted any time.

### UI Requirement

[Mockup](https://drive.google.com/file/d/13SEH7rtHZ4jmvoB6Dt8gN8nK5-zfU85l/view?usp=sharing)



## Browse Contribution of Organization

- Shows all Contributions of this Organization

### UI Requirement

[Mockup](https://drive.google.com/file/d/1tmlLTAIJYKtZ6KRM0YTcNxITYs-AShd6/view?usp=sharing)

- Shows all Contributions in table.
- When there is records, Shows `No Contributions Found` message.
- Contribution records will be grouped by Year and Date.
- Sorting 
  - Primary sorting on Descending order of Year and Secondary sorting on Descending order of Date.
- Shows total of Tax deductible amount for each group of date and year.
- Table columns
  - Organization
    - Show name of organization.
    - It should be a link. On clicks, opens Contribution payment page of that organization.
  - Contribution Amount
    - Contribution Payment amount
  - Contribution Mode
    - Mode of the contribution payment
  - Stock Name
    - Show Stock name or investment fund name for that payment.
  - Tax Deduct
    - Show Tax deductible amount 
  - Donation Multiple
    - Show donation multiple value for that record
    - Show total of `Donation Multiple` in column.
    - There is a formula to show total `Multiple Donation` for a period. [See this](https://drive.google.com/file/d/1jxLGOqhSnwmOWP1f2CmKcohBa6Sy_aVJ/view)
    - Total of  `Donation Multiple = (Tax Deductible Amount / Total Tax Deductible) x Donation Multiple`.
    - For grant given by foundation, `Total of Donation Multiple` is not applicable.
  - LOA : Show status of LOA. Its value either `Yes` or `-`.
  - Contribution Notes
    - Notes of the Contribution.
    - If Notes is not available then show `-`.
    - If notes are too long then it appears it in next line. (Do not show ellipsis)
- On hover of row shows hover effect
- On hover shows vertmore action menu at right side on the row.
  - Vertmore actions: `View Contribution`, `Edit`, `Delete`
  - On click of `View Contribution`, opens view dialog of that contribution.
  - On click of `Edit`, open edit dialog of that contribution.
  - On click of `Delete`, open delete confirmation dialog.



## Filters

#### Year

By default shows last year in `From` and current year in `To`. 

`From` shows all available year.

Sorting : Ascending order of year. Both are selected dropdown.

`To` shows year selected in `From` in addition to all other available years which is higher than year selected in `From.`

Year in `From` & `To` dropdown should be same in the outer sider tab`Organizations`.

#### LOA

Default value `Yes`.

Shows two options: `Yes` & `No`. Selected Dropdown.





