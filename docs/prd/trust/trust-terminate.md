# Trust Terminate

## Terminate
### System Rule
- When any trust is terminated, the system asks `Termination Date` and `Termination Notes`. 
- In real life, when any Split-Interest trust terminates, all remaining amount of the trust is distributed to their Reminder beneficiary on a percentage basis. So the system asks for some additional fields while terminating such trust.
- We have total 7 types of Split-Interest trusts like `CLAT`, `CRUT`, `CLUT`, `CRAT`, `GRAT`, `GRUT` & `QPRT`. But confirmed with Keith, that addtional fields only apply to these 5 Split-Interest `CRUT`, `CLAT`, `CRAT`, `GRAT` & `QPRT` trust.
- When any Split-Interest trust is terminated, the system also calculates the value of `Multiple` for that trust.
    - Formula of `Multiple` for `CLAT`, `CRUT` & `CLUT` is: (FMV + Total Beneficiary Distributions) / FMV. (`Total Beneficiary Distributions` is a total of `Total Annual Distribution` from the `Annual Distribution` table)
    - Formula of `Multiple` for `GRAT` & `QPRT` is: (FMV + Cumulative Annuity Payments) / FMV. (`Cumulative Annuity Payments`is a total amount of `Annuity Payment` from `Annual Annuity Payment` table.)
   - Here FMV is the total FMV amount of gift made to this trust.
- Trust doesn't terminate until the trust has a `Reminder Beneficiary`.
    
### UX Rule
#### Common for all trust type
- Termination Date
    - Its a mandatory and Date input field.
    - It is always greater than the `Date of Formation` otherwise system show error message.
    - For `GRAT` & `QPRT` type trust, it is a calculated field and shows the last date of `Annuity date` from the `Annual Annuity Payment` table.
- Termination Notes
    - Its a free form text input field

#### CRUT, CLAT, CRAT trust type
- Final Charitable Distribution or Final Distribution
    - For `CRUT` & `CRAT` type, field name is `Final Charitable Distribution`. For `CLAT`, field name is `Final Distribution`
    - Its mandatory and amount input field. Decimal value isn't allowed. Default value is set to `$ 0`
- Total Beneficiary Distribution
    - It is a calculated field.
    - Shows total of `Total Annual Distribution` from `Annual Distribution` table.
- Multiple
    - It is a calculated and decimal allowed field.
    - Formula of Multiple is: `(FMV + Total Beneficiary Distributions) / FMV`
- Distribution Table
    - Name
        - Shows `Remainder Beneficiary` name with Percentage in the alphabetical order
        - If the beneficiary name is too long, shows elipsis in name. 
    - Amount
        - It is a calcualted field.
        - Formula is: `((Final Charitable Distribution) * (Beneficiary percentage) / 100`

#### GRAT, QPRT trust type
- Remainder Amount
    - Its amount input and mandatory field. Default value is set to `$ 0`
- Cumulative Annuity Payments
    - Its calculated field.  
    - Shows total amount of `Annuity Payment` from `Annual Annuity Payment` table.
- Multiple
    - It is a calculated and decimal allowed field.
    - Formula of Multiple is: `(FMV + Cumulative Annuity Payments) / FMV` //Here FMV is used from the Gift Summary Section
- Date of Distribution
    - It is a date input field.
    - It is always greater than `Termination Date` otherwise sysyem shows error message.
- `Distribution to Beneficiaries` table
    - Name
        - Shows `Remainder Beneficiary` name with Percentage in the alphabetical order
        - If the beneficiary name is too long, shows elipsis in name. 
    - Amount
        - It is disable and calculated field.
        - Formula of Amount: `({Remainder Amount} * {beneficiary percentage}) / 100`
    - Notes
        - Free form text input field.

- When trust has no remainder beneficiary, system shows error message. 

### UI Requirement
Mockup
- Error message for `Termination date`: should be >= Date of Formation {date of formation}
- Error message for `Date of Distribution`: Should be >= {Termination Date}



## Edit Termination
- All other details of trust except termination details can't edited once trust is terminated.
- Keith wants to update the Allocation table of Terminated trust, So we have given this features to edit it.

### Ui Rule
Mockup


### Known Case
- `State of Domicil` field is mandatory. When we have introduced it, we can not set any default value. User has to manually specify it. So we planned that whenever user edit the Trust, UI will not allow to SAVE the trust without filling its value. Terminate action internally uses EDIT API, so when user performs Terminate action for any trust and it has `State of Domicile` field blank, Edit api will be failed but UI will show a proper toast message.
    -  Toast message: `stateOfDomicile may not be empty` 