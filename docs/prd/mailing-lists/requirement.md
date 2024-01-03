# Requirement

## Create

- Can be created with only name
- Name is unique

### UI requirement

[Mockup](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScUPFztI0QhYpvV-CqENtQ8I)

- When mailing list with same name is exists it shows error `Mailing list with same name already exists`

## Edit

- can be edited any time

### UI requirement

- When mailing list with same name is exists it shows error `Mailing list with same name already exists`

## Delete

- can be deleted any time
- When mailing list is deleted, all involved contacts will also be removed from that mailing list

### UI requirement

- Shows delete confirmation dialog

## Add Individual in mailing list

- Allows to add only active Individual in mailing list
- Doesn't allow to add same Individual more than once. It means individual which are already added in this mailing list can't be added.

### UI requirements

[Mockup](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScWUY3gRZ2hDCdlyx7c_xVjw)

- Add Individual dialog shows active Individual (Clients). [See this](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScYtush77KNVMtaDIaSH2Mck)
- Archived families contact doesn't show
- Shows records grouped by family. Family are sorted in alphabetical order.
- Under each family records are sorted in alphabetical order
- In both tab, for each record shows Name, Email and Company name
- Allows to select multiple records from both tab 

## Remove Individuals from mailing list

- Allows to remove single or multiple contacts

### UI requirements

- Shows common delete confirmation dialog



## Auto remove Individuals from all Mailing list when Individual is Deceased

- When Individual type contact is marked as Terminated, its related contact is Archived. So that contact will be removed from all mailing lists



## Auto remove contact from all Mailing list when family is Archived

- When family is archived/deleted, system removes the clients of that family from all associated mailing lists



## Browse all mailing lists

- Shows all available mailing lists 
- Sorted in alphabetical order
- Vertmore actions: Edit & Delete
- On hover of any record shows hover effect. 
- On click of any record, opens details page of that mailing list.

## Browse detail of particular mailing list

[Mockup](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScdS2E4bYo_KufJXtGWbeHZo)

- Allows to see involved individuals in particular mailing lists
- Shows records grouped by family. Family are sorted in alphabetical order.
- On hover of any record shows hover effect. On click of any record, opens workspace Individual or /dialog of that contact.
- Vertmore action : Edit, Delete

## Column customization

- By default shows Name, Company and Email column only.
- Birth date column is not shown
- Allows user to show or hide any column
- This configuration is at each Mailing list level. Its not at user level. Means if any one user change this configuration, it will be applied to all users. 

> User1 enable Birth date column in Mailing list M1. So this Birth date column will be visible to all users who open Mailing list M1

#### UI Requirement

[Mockups](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScYXu30NivSZBfuYbSY8x6eg)



## Download as Excel

- Allows to download all details of Mailing list as Excel
- Excel file name patter: {Mailing list name}-{Download date in yyyy-mm-dd format}
  - for e.g. when user download excel of `All Clarius Clients Mailing List` on 14th July, 2020, downloaded file name will be `All Clarius Clients Mailing List -2020-07-14.xlsx`