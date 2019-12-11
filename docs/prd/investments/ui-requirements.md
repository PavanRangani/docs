# Investments UI requirements

See [Investments mockups](https://drive.google.com/drive/folders/1A-wnVDLyK2-5pEcxuyrCWys6QMsjiEQR) here

## List page

- Shows records in descending order of the date
- Records are shown in group by with date
- Columns: Family, Legal entity, Investment principal, Description
- Under each date, records are sorted by family name
- Family name is only shown for first record of that family. (It won't be repeated for all records)
- List is lazy loading. New data will be loaded when scroll reach at bottom.

### Filter

- Allows to filter records using
  - From & To date
  - Family
  - Legal entity
  - Investment principal
- `From` & `To` is Date range control.
- `Legal entities` dropdown only shows legal entities for which investment is enabled & for which investment data exists
- `Family` dropdown only shows families of available `Legal entities` 
- `Investment pricincipal` dropdown shows names of the all available users
- When Family is changed, Legal entities dropdown will be reset
- When any filter is applied, shows a `RESET` button to reset filter to default state

## List item

- Context menu actions:
  - Edit
  - Delete

## Add dialog

- Create dialog can be opened from 2 ways:
  - `+` icon of table
    - When opened from here, it shows date of Yesterday prefilled
  - `ADD`  icon of group header
    - When opened from here, it shows date of group header prefilled
- All fields are mandatory in dialog.
- In `ADD: Invesment` dialog, User can enter more than one records of same date using `+ADD` button
- Family dropdown only shows family names for which investment data exists
- Legal entities dropdown only shows names of the entities of selected family &  for which investment data exists
