# Browse Associated Trusts

- Shows all trusts of selected legal entity where this legal entity is added as Trustor, Trustee or Beneficiary



## UI Requirement

- Shows associated partnership data in `Workspace -> Trusts` tab
- TRUSTS tab shows records in 2 tabs - Active & Terminated
- Shows count of records in tab title.
- When record is not available in any tab, shows `No Records Available` message.
- In both tabs, shows records in table
- Table columns
  - Trust Name
    - Name of the Trust
  - Trust type
    - Type of the Trust
  - Trustor
    - Shows `Yes` if this legal entity is Trustor in this Trust. Otherwise shows ` - `
  - Trustee
    - Shows `First`, `Second` or `Third` based on where this entity is selected in Trustee. Otherwise shows `-`
  - Beneficiary
    - If this legal entity is selected as beneficiary in this trust, then shows beneficiary type and its %.  Otherwise shows `-`
- Records in table are sorted in ascending order of Name
- Shows hover effect on each row.
- On click of row, opens workspace page of that partnership
- For Joint, shows two tables - One for each individuals. 
- On click of any of the record, opens that trust


