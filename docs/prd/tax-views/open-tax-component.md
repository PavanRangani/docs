# Open Tax Components

- Clarius team can see all open components of a particular year. Team can work on these components to make them closed (means Sent)
- Sometimes the Clarius team wants to see the sent components because some of the sent components are being moved back to the received components. (1099 was sent to CPA but now it came back for some rework).

## System Rule
- Its system generated view. So user can't edit or delete it.
- Shows all tax components for the selected year of all families whose component status is pending or received or Sent.
- User can apply filters to get more relavant data.

## UX Rule
- Records are grouped by Family. Family are shown alphabetically.
- Sorting order under each family group: 
    - Primary sorting on Entity name and Secondary sorting on Form and Tertiary sorting on alphabetical order of Componenent Name.
    - Shows entity type in the bracket with each entity. for e.g. `John T. Brown (Individual), Form 1040`.
- Shows `Tax Component Lead` user name to the right side of the each entity header. See this 
- Column are
    - Name - If component name is too long, it appears in the next line.
    - Section
    - Document
    - Status
        - Pending status is shown in the orange color.
        - Received Status is shown in the blue color. 
    - Responsible
    - Expected Date
        -  When the date is overdue then it is shown in red colour.
    - Received From
- On hover of each entity, shows one icon. On click, opens the components tab of the tax return in the new tab.
- On hover of compoenent records, it shows hover effect. On Click of any row, opens edit dialog of that tax component.
- Way to filters the records
    - Family
        - Shows all families in alphabetical order. Allows to select multi family. Default value is `All`.
    - Entity
        - By default its disable. It will be enable only when any particular Family is selected. 
        - Shows all entities of the selected family. It is a multi select filter. Default value is `All`.
    - Year
        - By default, it shows the last year. Dropdown shows last 10 year's.
        - Its a single select filter.
    - Expected Date
        - Default value is set to `All`
        - Possible values are: `This Month`, `Last Month`, `Next Month`, `Custom`
            - On click of `Custom`, opens `From` & `To` dialog.
    - Form
        - Its multi-select filer. Pollisble values are: [See Possible values of form](../tax/tax-components.md#master-of-form-wise-section-and-documents)
        - Default value is `All`.
    - Status
        - It is a multi select filter. Default `Pending` & `Received` status are selected. Values are: Pending, Received, Sent
    - Section
        - It shows all the unique Sections across all the Forms. [See master list of Section](../tax/tax-components.md#master-of-form-wise-section-and-documents).
            - For e.g. So if user selects `K1` in the Document filter, system shows all the Sections whose Document is `K1` across all forms.
        - Its multi-select filer.
        - Default value is `All`.
    - Document
        - It shows all unique Documents across all the sections. [See master list of Document](../tax/tax-components.md#master-of-form-wise-section-and-documents)
            - For e.g. So if user selects `Income Statement` in the Section filter, system shows all the Components whose section is `Income Statement` across all forms.
        - Its multi-select filer.
        - Default value is `All`.
    - Responsible
        - Its multi select filter. Default value is `All`.
        - Possible values are: `Clarius`, `Client`, `CPA`, `Mirador`, `Pending`.
    - Tax Component Lead
        - It shows all `Tax Component Lead` user which are shown in the list page. [See reason behind this](#why-we-have-shown-list-page-tax-component-lead-user-instead-of-current-ca-user-in-tax-component-lead-filter)
        - Default value is `All`.
        - When any user is selected in `Tax Component Lead` filter and user change the Year filter and selected Tax Component Lead user is not available in the selected year, sysetm RESET the `Tax Component Lead` filter.
- When any filter is applied, shows RESET icon to reset the filter to default state
- Shows proper message when no records available.

### Sorting order
- User can manually sort by column. [See more details](../ui-components/list-page.md#sorting). Sorting feature is applicable in the following column: `Name`, `Section`, `Document`, `Status`, `Responsible`, `Excepted Date`.
- Default sorted column is the `Name` in the alphabetical order.



## UI Rule

[Mockups](https://drive.google.com/drive/u/0/folders/1Y7dXo7fgWHfIetMyTvsm6LDSh8d_ixLC)

- Message when no records available: [`No Records Found`](https://drive.google.com/file/d/1RCxZFmQAF3Q0hNanKdyonr92wj19bKYq/view?usp=sharing)
- Tooltip message
    - Section: `Applicable only when Form is selected`
    - Document: `Applicable only when Section is selected`


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
    - Tax Component Lead
        - Shows Full name of the tax component lead user of that tax return.
- For PDF, shows Tax Component Lead user with entity header separated by `|`.
- Sorting order will be same as [UI](#ux-rule)
- File name 
    - PDF: `open-tax-component-views.pdf`
    - Excel: `open-tax-component-views.xlsx`


### UI Rule
[Sample file of PDF & Excel](https://drive.google.com/drive/u/0/folders/1unFG19XkI-BCghxKdM3WhArCrxQ-PHoO)




## Design Decision

### Why do we open the edit dialogue instead of the view dialogue if the user clicks on any Views row?
- This page shows only the Open Tax component to users. So we show edit dialog instead of view dialog so that user can open the dialog on single click and complete its states.


### Why we have shown list page Tax Component lead user instead of current `CA user` in `Tax Component Lead` filter?
- Suppose `Victoria` was added as a `Tax component lead` in a family's old tax return. But now it is removed from CA user and also removed from family's tax component lead. So if we only show CA users in the filter, `Victoria` will never show up in the dropdown. That's why we don't show the current CA user in filter.
 





