# Trade Logs

## Overview

- Trade Log means details of any trade made for the legal entity

## Entity 

- Date
- Family 
- Legal entity - Any legal entity of above family
- Description


## Enable/Disable
- Trade Log can be enabled/disabled for particular legal entity
- For new legal entity, By default it is disabled.
- User can enable or disable anytime. System allows to enter new trade log only when this setting is enable

## Create
- 
- Create dialog can be opened from 2 ways:
  - `+` icon of table
    - When opened from here, it shows date of Yesterday prefilled
  - `ADD`  icon of group header
    - When opened from here, it shows date of group header prefilled
- All fields are mandatory in dialog.
- In dialog, User can enter more than one records of same date using `+ADD` button
- Today's date will prefilled in date field of the trade log add dialog. 
- Family dropdown shows only those family names where its legal entity has `Active` button enabled
- Legal entities dropdown only shows names of the entities of selected family &  for which `Trade logs`data exists



## Edit

- Can be edited anytime.

## Delete

- Can be deleted anytime

## Browse Trade Logs

- This page shows trade log records of all legal entities

- Allows to filter records using
  - From & To date
  - Family
  - Legal entity

### UI Requirements

Mockups: [Investments mockups](https://drive.google.com/drive/folders/1A-wnVDLyK2-5pEcxuyrCWys6QMsjiEQR)

- Shows records in descending order of the date
- Records are shown in group by with date
- Columns: 
  - Family
    - Name of the Family
  - Date
    - Date of the record
  - Legal entity
    - Name of the Legal Entity
  - Description
    - Description entered while creating/editing Trade log record. Shows full description always. It required shows it in new line (But never truncate)
  - Editor
    - Name of the user who Created/Updated this record along with date
    - For e.g. When Trade log record is created, this column will show text `Created by Keith Vernon Mar 21, 2020` . When Trade log record is updated, this column will show text like `Updated by Keith Vernon Mar 21, 2020`
- Under each group of date, records are sorted by family name
- Family name is only shown for first record of that family. (It won't be repeated for all records)
- List is lazy loading. New data will be loaded when scroll reach at bottom.
- On hover of the record, show hover effect. 
- On click of the record, opens Edit dialog
- Context menu actions:
  - Edit
  - Delete

### Filter

- Allows to filter records using
  - From & To date
  - Family
  - Legal entity
- `From` & `To` is Date range control.
- `Legal entities` dropdown only shows legal entities for which `Active` button is enabled & for which trade logs data exists
- `Family` dropdown only shows families of available `Legal entities` 
- When Family is changed, Legal entities dropdown will be reset
- When any filter is applied, shows a `RESET` button to reset filter to default state

## Browse Tradelogs of particular Legal entity

- This pages shows the investment records of only selected legal entity.
- ADD button is disable for the Archived entities and on hover, tooltip message doesn't appear.
- Column in Trade log tab: Date, Description, Editor
  - Date
    - Date of the record
  - Description
    - Description entered while creating/editing Trade log record. Shows full description always. It required shows it in new line (But never truncate)
  - Editor
    - Name of the user who Created/Updated this record along with date
    - For e.g. When Trade log record is created, this column will show text `Created by Keith Vernon Mar 21, 2020` . When Trade log record is updated, this column will show text like `Updated by Keith Vernon Mar 21, 2020`
  - In Add / Edit dialog, only Date and description can be entered or edited

See [mockups](https://drive.google.com/drive/u/0/folders/1xfiUGFYjddQQoArdyN_dbkRwdqXNVIcI)

