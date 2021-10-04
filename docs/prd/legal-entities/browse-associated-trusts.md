# Browse Associated Trusts

## System Rule

- Shows all [Regular Trusts (Inter Vivos & Active Testamentary Trust)](../legal-entities/trust.md#browse-associated-trusts) & [Testamentary Trust](../estate-plan/testamentary-trust.md#browse-associated-trusts) of selected legal entity where this legal entity is added as Trustor, Trustee or Beneficiary in only current version (Not in history).

## UX Requirement

- Shows associated trust data in `Workspace -> Trusts` tab.

- `Trust` tab will applicable for the all legal entities.

- TRUSTS tab shows records in 2 tabs - Active & Terminated

- For `Joint`, Trust tab shows records from both individual. It is possible that both individual of joint are associated with same trust. So that trust will be available in tables of both individuals. Count in tab will show only unique count of trusts.

- When record is not available in `Inter Vivos Trust` &`Active Testamentary Trust` section, shows proper message and [Testamentary Trust](../estate-plan/testamentary-trust.md#browse-associated-trusts) section has no records, that section won't be shown.

- For Active tab, 

  - Records are shown in the three section : `Inter Vivos Trust` , `Active Testamentary Trust`& [Testamentary Trust](../estate-plan/testamentary-trust.md#browse-associated-trusts). For each section shows separate table.

- For Terminated tab, 

  - `Testamentary Trust` is not available in the Terminated tab.
  - Shows proper message for `Inter Vivos Trust` & `Active Testamentary Trust` section.

- In both tabs, shows records in table

- Table columns 
  - Trust Name
    - Name of the Trust
  - Trust Type
    - Type of the Trust
    - Not applicable for `Testamentary Trust`.
  - Trustor
    - Shows `Checkmark` icon if this legal entity is Trustor in this Trust. Otherwise shows ` - `.
    - If testamentary trust is added on this legal entity, show `Checkmark` icon.
  - Trustee
    - Shows `First`, `Second` or `Third` based on where this entity is selected in Trustee. Otherwise shows `-`.
    - If user has added more than one trustee on same family  then show all Trustee name in separate line.
  - Beneficiary
    - If this legal entity is selected as beneficiary in this trust, then shows beneficiary type and its %.  Otherwise shows `-`
    - For  `Testamentary Trust`, shows only `%`. Beneficiary types is not applicable for `Testamentary Trust`.
  - Purpose of Trusts or Notes
    - `Purpose of Trusts` for `Inter Vivos` & `Active Testamentary Trust`.
    - `Notes` for Testamentary Trust.
  
- Records in table are sorted in alphabetical order of Name

- Shows hover effect on each row.

- On click of `Inter Vivos` & `Active Testamentary Trust` section row, opens workspace page of that Trust.

- On click of testamentary trust section row, open that individuals' Will in view dialog.

- For Joint, shows two tables - One for each individuals. 

  - If one individuals in the joint has some records and the other individuals does not have records. 

  

## UI Requirement

- Mockup of [Active tab](https://drive.google.com/file/d/1lOvT6cX67sc4MXNtKQTLQ1JWT87xQNiS/view?usp=sharing)  & [Terminated tab](https://drive.google.com/file/d/15IDeMJy1xF98haaGjjA_IUaFGsreeMhH/view?usp=sharing)
- Mockup of [No Records Available](https://drive.google.com/file/d/1lHCrRs_XvU9_7uMduYWwfHBL4i9MG0nC/view?usp=sharing) in any tab.
- Mockup of [no records available in any one tab](https://drive.google.com/file/d/1M7hylqiet2E4vnDFDIGoh0qk6Jtc_uSs/view?usp=sharing)



## Download PDF

### UX Rule

- Allows to download pdf file for both tabs. Show PDF icon on the header of both tabs. 
- On click, PDF file will be downloaded in same browser tab.
- PDF icon won't be applicable when the tab has no records available.

#### PDF File

- Active tab PDF file name will be in this format: `active-trust-summary-of-{legal entity name}.pdf`
- Terminated tab PDF file name will be in this format: `terminated-trust-summary-of-{legal entity name}.pdf`
- Sorting order is the same as [UI app](#ux-requirement).
- Shows proper message when records is not available in any of the section.

Sample PDF file //TODO

- Message when no records available: `No Records Found`.
