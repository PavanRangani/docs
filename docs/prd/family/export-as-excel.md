# Download as Excel

## UX Rule

- Applicable only for Active tab

- Allows to download all details of the active`Families/Teams` as Excel.
- Excel file name pattern: `families-teams-{date in mm-dd-yyyy format}.xlsx`.
  - for e.g. when user download excel of `Families/Teams` on 30th October, 2020, downloaded file name will be `families-teams-10-30-2020.xlsx`.
- Show family records in the alphabetical order of family name. Do not show group by Primary, Team Member and Not Associated.
- Shows (L) for user marked as a lead. `Mark as lead` user shown first in the roles columns and then the other user is alphabetically sorted.
- If multiple users are added to a role, all those users in a single shell are shown in a new line and separated by commas(,).
- When `Client Associateis` not available for any family, it won't show `CA Pool` in excel. Excel will have blank value.
- Show `Reconciliation` roles as a separate column after PC in excel (Its not shown in same as UI means in same column of PC)

## UI Rule

[Sample Excel File](https://docs.google.com/spreadsheets/d/1-9x4wQpmfF_1zKxPxzT9ZsGddeZDi8K7/edit?usp=sharing&ouid=108870014519956519924&rtpof=true&sd=true) 