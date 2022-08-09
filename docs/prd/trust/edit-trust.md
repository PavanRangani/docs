# Edit Trust

## System Rule
- Active and Historical trust can be editable any time.
- Terminate trust can't be editable.

## UX Rule
- Trust type won't be changed. So `Type`, `Irrevocable` & `Split Inrest` fields are showing disable in edit mode.
- For `CRUT`, `CLAT` & `CRAT` trust type 
    - `Income beneficiary` is mandatory if trust have annual distribution table
    - `Distribution Frequency` & `Date of Formation` won't be changed once the annual distribution table is created.
- For `GRAT` & `QPRT` trust type
    - `Date of Formation` won't be changed in edit mode.
    - Shows warning message under `Annual Annuity Payment` table when user update the `Term` field and system removed the data entered by user.
        - For e.g. Suppose the user has created one GRAT type trust where `Term of Year` is set to 5. So the system will create 5 rows in the  `Annual Annuity Payment` table. User has entered payment details into 2 records. Now, If the user edit that trust and change the Term to 1, `Annual Annuity Payment` table will be auto updated and data entered in the 2nd row will be lost.

## UI Rule 
Mockup
- For `GRAT` & `QPRT` trust type
    - Warning: `Some payment records are auto removed`