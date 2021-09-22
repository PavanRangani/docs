# Compliance

## Browse Compliance views
- Currently our system have only one compliance view. In future, here other Views will come.

### UX Rule

- It has one column `View Name`.
- On hover, show hover effect.

#### Rules of `Authorized IP Addresses` Views

- For `Admin` users, 
  - Only Admin users can see all Clarius user's IP Addresses. That's why `Authorized IP Addresses` Views is clickable for only admin users. On click, open browse page of `Authorized IP Addresses`.
- For `Non-Admin` users, `Authorized IP Addresses` view record won't be clickable.

#### Rules of `Custody Accounts`  Views

- Any of the clarius users can open the `Custody Accounts` Views.



## Browse page of Authorized IP Addresses

### System Rule

- This is system generated view.
- It shows Whitelisted IPs of all the clarius employees.
- Applicable only for `Admin` users.

### UX Rule

- Only shows those Clarius users who has Whitelisted IPs
- Columns
  - Name
  - IP Address
  - Description
  - Editor
    - Shows `Created` and `Updated` time and name of the user.
- In case of Multiple IP Address, show each IP Address in separate line.
- Records are sorted in the alphabetical order of `Name`.
- On hover of each record shows hover effect. On click of any record opens contact view dialog on the same page.
- Shows PDF icon. On click, the PDF file will be downloaded in same tab.

### UI rules

-  Mockups //TODO

## PDF

PDF file name: `authorized IP addresses.pdf`



## Browse page of Custody Accounts

### System Rule

- It shows only `Checking`, `Credit Card` & 







