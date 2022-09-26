# Open Tax Components

Clarius team can see all open components of a particular year. Team can work on these components to make them closed (means Sent)

## System Rule
- Its system generated view. So user can't edit or delete it.
- Shows all open tax components for the selected year of all families whose component status is pending or received.
- User can apply filters to get more relavant data.

## UX Rule
- Records are grouped by Family. Family are shown alphabetically.
- Sorting order under each family group: 
    - Primary sorting on Entity name and Secondary sorting on Form and Tertiary sorting on alphabetical order of Componenent Name.
    - Shows entity type in the bracket with each entity. for e.g. `John T. Brown (Individual), Form 1040`.
- Column are
    - Name - If component name is too long, it appears in the next line.
    - Section
    - Document
    - Status
        - Pending status is shown in the orange color.
        - Received Status is shown in the blue color. 
    - Responsible
    - Excepted Date
        -  When the date is overdue then it is shown in red colour.
    - Received From
- On hover of each entity, shows one icon. On click, redirects users to the components tab of the tax return.
- On hover of compoenent records, it shows hover effect. On Click of any row, opens edit dialog of that tax component.
- Way to filters the records
    - Family
        - Shows all families in alphabetical order. Allows to select multi family. Default value is `All`.
    - Entity
        - By default its disable. It will be enable only when any particular Family is selected. 
        - Shows all entities of the selected family. It is a multi select filter. Default value is `All`.
    - Year
        - By default, it shows the last year. Dropdown shows last 10 year's.
    - Form
        - Forms are sorted on entity type in order of -Joint, Individual, Partnership, Trusts, Foundation, Estate.
        - Each entity type is alphabetical order. [See Possible values of form](../tax/tax-components.md#master-of-form-wise-section-and-documents)
        - Default value is `All`.
    - Status
        - It is a multi select filter. Default value is `All`. Values are: Pending, Received.
    - Section
        - By default its disable. It will be enable only when any particular Form is selected. [See Possible values of Section](../tax/tax-components.md#master-of-form-wise-section-and-documents)
    - Document
        - By default its disable. It will be enable only when any particular Document is selected. [See Possible values of Document](../tax/tax-components.md#master-of-form-wise-section-and-documents)
    - Responsible
        - Its multi select filter. Default value is `All`.
        - Possible values are: `Clarius`, `Client`, `CPA`
- When any filter is applied, shows RESET icon to reset the filter to default state
- Shows proper message when no records available.


## UI Rule

[Mockups](https://drive.google.com/drive/u/0/folders/1Y7dXo7fgWHfIetMyTvsm6LDSh8d_ixLC)

- Message when no records available: [`No Records Found`](https://drive.google.com/file/d/1RCxZFmQAF3Q0hNanKdyonr92wj19bKYq/view?usp=sharing)


## Export as PDF or Excel

### UX Rule
- Allows to download its PDF or Excel. 
- Shows both icon to the right side of header. On click of icon, PDF or Excel file will be downloaded in same page.
- Column name: 
    - Name
    - Section
    - Document
    - Status
        - Pending status is shown in the orange color.
        - Received Status is shown in the blue color. 
    - Responsible
    - Excepted Date
        - When the date is overdue then it is shown in red colour.
    - Received From
- Sorting order will be same as [UI](#ux-rule)
- File name 
    - PDF: `{open-tax-component}-views.pdf`
    - Excel: `{open-tax-component}-views.xlsx`


### UI Rule
Sample file of PDF & Excel




## Design Decision

### Why do we open the edit dialogue instead of the view dialogue if the user clicks on any Views row?

This page shows only the Open Tax component to users. So we show edit dialog instead of view dialog so that user can open the dialog on single click and complete its states.
 





