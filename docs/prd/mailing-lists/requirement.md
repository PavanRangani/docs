# Requirement

## Create

- Can be created with only name
- Name is unique

### UI requirement

- When mailing list with same name is exists it shows error `Mailing list with same name already exists`

## Edit

- can be edited any time

### UI requirement

- When mailing list with same name is exists it shows error `Mailing list with 

## Delete

- can be deleted any time
- When mailing list is deleted, all involved contacts will also be removed from that mailing list

### UI requirement

- Shows delete confirmation dialog

## Add contact in maliing list

- Allows to add only active contacts in mailing list
- Doesn't allow to add same contact more than once. It means contacts which are already added in this mailing list can't be added.

### UI requirements

- Add contact dialog shows Individual (Clients) and normal contacts (Non Clients) in separate tab
- In Clients tab 
  - Shows records grouped by family. Family are sorted in alphabetical order.
  - Under each family records are sorted in alphabetical order
- In Non Clients tab
  - No grouping
  - Records are sorted in alphabetical order
- In both tab, for each record shows Name, Email and Company name
- Allows to select multiple records from both tab 

## Remove contact from mailing list

- Allows to remove single or multiple contacts

### UI requirements

- Shows common delete confirmation dialog

## Auto remove contact from all Mailing list when Contact is Archived

- When normal contact is archived/deleted, system removes that contact from all associated mailing lists
- When Individual type contact is marked as Terminated, its related contact is Archived. So that contact will be removed from all mailing lists

## Browse all mailing lists

- Shows all available mailing lists 
- Sorted in alphabetical order
- Vertmore actions: Edit & Delete
- On hover of any record shows hover effect. 
- On click of any record, opens details page of that mailing list.

## Browse detail of particular mailing list

- Allows to see involved contact in particular mailing lists
- Shows records grouped by family. Family are sorted in alphabetical order.
- All non client contacts are shown in one group `Other`
- On hover of any record shows hover effect. On click of any record, opens workspace Individual or /dialog of that contact.
- Vertmore action : Delete

## Column customization

- By default shows Name, Email and company column only.
- Birth date column is not shown
- Allows user to show or hide any column
- This configuration is at each Mailing list level. Its not at user level. Means if any one user change this configuration, it will be applied to all users.

> User1 enable Birth date column in Mailing list M1. So this Birth date column will be visible to all users who open Mailing list M1

## Download as Excel

- Allows to download all details of Mailing list as Excel
- Excel file name patter: {Mailing list name}-{Download date in yyyy-mm-dd format}
  - for e.g. when user download excel of `All Clarius Clients Mailing List` on 14th July, 2020, downloaded file name will be `All Clarius Clients Mailing List -2020-07-14.xlsx`