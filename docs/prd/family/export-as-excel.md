# Download as Excel

## System Rule
- Allows to export family list page as excel. 
- Applicable only for Current tab.
- For each family, shows details of Households.
- Excel file name pattern: `families-teams-{date in mm-dd-yyyy format}.xlsx`.
  - for e.g. When user download excel of `Families/Teams` on `30th October, 2020`, downloaded file name will be `families-teams-10-30-2020.xlsx`.
- Columns for Excel
  - Family Name
  - Family ID
  - Generation
  - Household Name
  - Service Scope
  - Director
  - Advisor
  - Investment Director
  - Associate Advisor
  - Investment Associate
  - Client Manager
  - Client Associate
  - Operations
  - Personal Controller
  - Reconciliation
- If any column has no value, shows `-`.
- `Family ID` & `Family Name` both are shown in repeated mode with excel rule.
  - For e.g. Suppose `Alberg` family has 3 households. So in excel file, all 3 households are visible. For these 3 households, the `Family name` and `Family ID` will appear iteratively with the Excel formula.
- Sorting order: 
  - Primary sorting in Alphabetical order of `Family` Name and secondary sorting in ascending order of `Generation` and territory sorting in alphabetical order of `Household Name`.
- For roles columns
  - Shows `(L)` for user marked as a lead. `Mark as lead` user shown first in the roles columns and then the other user is alphabetically sorted.
  - If multiple users are added to a role, all those users in a single shell are shown in a new line and separated by commas(,).
  - When `Client Associates` not available for any family, it won't show `CA Pool` in excel (Like shown on UI). Excel will have blank value.
  - Show `Reconciliation` roles as a separate column after PC in excel (Its not shown in same as UI means in same column of PC)
- Shows filter criteria with excel. Filter criteria shows `Generated On` & `View as`.

## UI Rule

[Sample Excel File](https://docs.google.com/spreadsheets/d/1cSaRr0HKqi4s9b-5qAXrmT1bC8C8jASaEerF_G3rcjc/edit#gid=497495055) 