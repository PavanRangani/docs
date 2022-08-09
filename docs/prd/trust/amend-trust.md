# Amend Trust

## System Rule
- If the user wants to update the Trustor/Trustee and Beneficiary then he/she updates this information by amending the Trust. System maintains history of the amendment.

## UX Rule
- Not applicable for Terminated trust
- Amend is one type of edit. Amend should be used when update history is required 
- In Amend, System ask for `Date` & `Amendment Purpose` 
- For `Revocable type`, value of `Amendment purpose` can be `Amendment` or `Amendment & Restatement`
- For all other type, system allows to enter description for Amendment purpose.
- Amendment can be edited and deleted
- On `Delete` shows confirmation dialog
- For `CRUT`, `CLAT` & `CRAT` trust type
    - Income Beneficiary won't be changed/added once the `Annual Distribution` table is created.
- For `GRAT` & `QPRT` trust type
    - Shows warning message under `Annual Annuity Payment` table when user update the `Term` field and system removed the data entered by user.
        - For e.g. Suppose the user has created one GRAT type trust where `Term of Year` is set to 5. So the system will create 5 rows in the  `Annual Annuity Payment` table. User has entered payment details into 2 records. Now, If the user edit that trust and change the Term to 1, `Annual Annuity Payment` table will be auto updated and data entered in the 2nd row will be lost.

### UI Requirement

- Shows Amendment history if available in dialog. See mockups
- For `GRAT` & `QPRT` trust type
    - Warning: `Some payment records are auto removed`