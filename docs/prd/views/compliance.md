# Compliance

## Browse Compliance views

### System Rule

- `Compliance` views will show Whitelisted IPs of all the clarius employees.
- It's a system generated Views. So user can not edit or delete it.

### UX Rule

- Shows only one view `Authorized IP Addresses`.
- It has one column `View Name`.
- On hover, show hover effect.
- For `Admin` users can allow to open details page of `Authorized IP Addresses` Views.
- For `Admin` users, 
  - Admin users can see all user's IP Addresses. That's why `Authorized IP Addresses` Views is clickable for admin users.
  - On click, open browse page of `Authorized IP Addresses`.
- For `Non-Admin` users,
  - `Authorized IP Addresses` won't be clickable.

### UI Rule

Mockup //TODO



## Browse page of Authorized IP Addresses

### System Rule

- Applicable only for `Admin` users.

### UX Rule

- Shows all users available in the system.
- Shows one table for IP Addresses.
- In case of Multiple IP Address, show each IP Address in separate line.
- Columns
  - Name
  - IP Address
  - Description
  - Editor
    - Shows `Created` and `Updated` time and name of the user.
- Records are sorted in the alphabetical order of `Name`.
- On hover of each record shows hover effect.
- On click of any record opens contact view dialog on the same page.
- `Authorized IP Addresses` has one pdf icon. On click, the PDF file will be downloaded.



## Download PDF

### UX Rule

- PDF file name: `authorized IP addresses.pdf`

### UI Rule

Mockup //TODO





