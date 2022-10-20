# Add Trust

## System Rule
- New trusts will always be added from the Family Details page.

### Annual Distribution table
- In real life, Beneficary of Split-Interst trust allocats amount to the trust.
- We have total 7 types of Split-Interest trusts like `CLAT`, `CRUT`, `CLUT`, `CRAT`, `GRAT`, `GRUT` & `QPRT`. But only `CRUT`, `CLAT` & `CRAT` trust type have concept of allocation amount.
- For this trust type, Income Beneficary allocated amount to the Trust based on the precentage in each year. 

### Annual Annuity Payment
- In real life, 
- System auto create records based on the value of `Term (Number of Years)` and `Date of Formation`. 
    - For e.g. If the user selects 5 in the `Term` field and `Date of Formation` of the trust is `11/08/2019` then the system will auto create 5 records and set the date of each record to next 5 years of `Date of Formation`.


## UX Rule

- For `CRUT`, `CLAT` & `CRAT` type trust, `Income beneficiary` is mandatory if trust have annual distribution table
- For `Withdrawal Rights`, a total percentage should be allowed to 100 otherwise system show an error message.
- For `Beneficiary`, a total percentage should be allowed to 100 or 99.99 otherwise system show an error message.
- For `Withdrawal Rights`, `Trustor/Trustee` & `Beneficiary`, a same name is not allowed otherwise system show error message.

### Annual Distribution table
- Applicable only for `CRUT`, `CLAT` & `CRAT` trust type
- Users manually added records
- Shows proper message when no records available
- Shows ADD button to add new records under the table. Its a multi-value field. 
- ADD button is disable until the user enters a at least one `Income Beneficiary`. On hover of ADD button, shows tooltip message.
- Columns are
    - Year
        - Its a year input and mandatory field.
        - It is greater than or equal to the year of `Date of Formation` otherwise system show error.
        - Same year is not allowed otherwise the system shows an error message.
    - Total Annual Distribution
        - It is amount input and mandatory field
    - {Selected value in Distribution Frequency} Distribution
        - For e.g If `Distribution Frequency` is monthly then name of this column is `Monthly Distribution`
        - It is a calcualted field based on the `Distribution Frequency`
        - If `Distribution Frequency` is Monthly then calculation of this field is: Total Annual Distribution / 12
        - If `Distribution Frequency` is Quarterly then calculation of this field is: Total Annual Distribution / 4
        - If `Distribution Frequency` is Annual then calculation of this field is: Total Annual Distribution / 1
    - Allocation
        - It is shown the allocation amount given by their income beneficiary. 
        - Amount is calculated field: (Distribution amount * Beneficiary percentage) / 100
        - Shows allocated amount in bracket of beneficiary name
        - Each Beneficiary with percentage are shown in diffrent line.
        - If Beneficary is too long, show elipsis
        - There are some cases when allocation details is changed
            - When user changed the `Distribution Frequency`, allocation amount is auto changed
            - When a user adds/edit the Income Beneficiary, the allocated amount and beneficiary name is auto changed.
            - When the user changes the percentage of Income Beneficiary, the allocation amount is auto changed.
    - Notes
        - Free form text input field
    - Records are sorted in ascending order of Year.

### Annual Annuity Payment
- Applicable only for `GRAT` & `QPRT` trust type
- System doesn't show records unless the user enters `Term (Number of Years)` and `Date of Formation`. Show proper message when no records available.
- Column are
    - Annuity Date
        - Dates are auto calculated.
        - Shows date of annual annuity payment date based on date of formation.
    - Annuity Payment
        - It is an amount input field.
        - Default value is set to `0`.
    - Payment Date
        - Date input field.
        - It is always greater than `Annuity Date` otherwise the system shows error.
    - Notes
        - Free form text input field

## UI Rule
Mockups
- Error message for `Beneficiary` and `Withdrawal Rights`: Total percentage should be 100
- Error message for `Withdrawal Rights`, `Trustor/Trustee` & `Beneficiary`: Duplicate value is not allowed
- Annual Distribution table
    - Message: `No Annual Distribution Available`
    - Error message for same year: `Duplicate year is not allowed`
    - Error message for Year is greater than Date of formation: `“>={Year of date of Formation}`
    - Tooltip message when ADD button is disable: `First Select the Income Beneficary`
- Annual Annuity Payment
    - Message: `No Annual Annuity Payment Available`
    - Error message for Payemnt date: `Should be >= {Annuity Date}`


## Design decision
Why should the system allow 99.99% for the beneficiaries section?
- Sometimes, it will happen that there are 3 contacts available in the beneficiary section and each contact has received 1/3 part of the Trust. That's why we have allowed 99.99 (1/3 = 33.33 and 33.33 * 3 = 99.99) for beneficiary section.