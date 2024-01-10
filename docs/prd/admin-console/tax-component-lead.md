# Tax Component Lead

## Overview
- If the user wants to update the tax component lead user for multiple families, we have provided this list page from where the user can change the tax component lead for each family.

## UX Rule
- List page shows one table. 
- Table shows all active family of the Athena.
- Columns are
    - Family
        - If family name is too long, shows name in elipsis.
    - Tax Component Lead
        - Shows user full name.
- On hover, shows hover effect and pencil icon to the right side.
- On click of pencil icon, opens the tax component lead change dialog for particular family. [See more details](../family/browse-single-families.md#tax-component-lead)
- On click of family row, opens that family details page with Currnet tab in the same page.
- Families are sorted alphabetical order of the name.
- When user change the Tax Component lead for any family, system will also update it from the family.
- Shows excel icon to the right side of the header where user export the data as excel.

## UI Rule
- [See list page](https://drive.google.com/file/d/16CDOXxsm0hQED0RwPQoxGEeygQoTYSqZ/view?usp=sharing)
- [See tax component lead change dialog](https://drive.google.com/file/d/1vrRkDSoGXGl3HbhTNU64WjVhVYPqn25m/view?usp=sharing)


## Excel Export

### System Rule
- Allows to export data in excel.
- Download excel file name: `tax-component-lead.xlxs`
- Columns
    - Family
    - Tax Component Lead
        - Shows full name of the user.
- Sorting: Families are sorted on alphabetical order.

### UX Rule
- Excel Export button appears in the header from where user can export families.

### UI Rule
- [See this excel](https://docs.google.com/spreadsheets/d/1JBGdWDpV3zjr-0Sm8VcKu7ihW2wrSpF934XrVaj3Sc8/edit#gid=0)