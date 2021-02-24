# Browse Associated Trusts

## System Rule

- Shows all regular trusts or [Testamentary Trust](../estate-plan/testamentary-trust.md#browse-associated-trusts) of selected legal entity where this legal entity is added as Trustor, Trustee or Beneficiary.



## UX Requirement

- Shows associated trust data in `Workspace -> Trusts` tab

- TRUSTS tab shows records in 2 tabs - Active & Terminated

- For `Active tab`, 

  - Records are shown in the two section : `Regular Trust` & [`Testamentary Trust`](../estate-plan/testamentary-trust.md#browse-associated-trusts). for each section shows separate table.

- For `Terminated tab`, 

  - Testamentary Trust is not available in the Terminated tab.
  - So there is no any section available in the Terminated tab.

- `Trust` tab will applicable for the all legal entities.

- Shows count of records in tab title.

- When record is not available in any tab, shows proper message.

- [Testamentary Trust](../estate-plan/testamentary-trust.md#browse-associated-trusts) section has no records, that section won't be shown.

- In both tabs, shows records in table

- Table columns 
  - Trust Name
    - Name of the Trust
  - Trust Type
    - Type of the Trust
    - Not applicable for `Testamentary Trust`.
  - Status
    - Shows status of Trust `Intervivos` and `Testamentary`. If status is empty, shows `-`.
    - For  `Testamentary Trust`, show only `Testamentary` as a status.
  - Trustor
    - Shows `Checkmark` icon if this legal entity is Trustor in this Trust. Otherwise shows ` - `
  - Trustee
    - Shows `First`, `Second` or `Third` based on where this entity is selected in Trustee. Otherwise shows `-`
  - Beneficiary
    - If this legal entity is selected as beneficiary in this trust, then shows beneficiary type and its %.  Otherwise shows `-`
    - For  `Testamentary Trust`, shows only `%`. Beneficiary types is not applicable for `Testamentary Trust`.
  - Purpose of Trusts or Notes
    - `Purpose of Trusts` for Regular Trust
    - `Notes` for Testamentary Trust.
  
  
  
- Records in table are sorted in ascending order of Name

- Shows hover effect on each row.

- On click of regular trust section row, opens workspace page of that Trust.

- On click of testamentary trust section row, open that individuals' Will.

- For Joint, shows two tables - One for each individuals. 
  
  - If one individuals in the joint has some records and the other individuals does not have records. 
  
- On click of any of the record, opens that trust or Will.



## UI Requirement

- Mockup of [Individual](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDSce9woizE2Lxz8XnsOB6qZa0), [Joint](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScYqOJiNQFHi6CuxrIdnSl5w), [Partnership & Foundation & Estate](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScfAgMrQm_GsXWBFILvGXvBs)
- Mockup of Active tab //TODO & [Terminated tab](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDSca848UVsf2uJl_-Wfrwn3BU)
- Mockup of [No Records Available](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDSceNeUo1q9Tj83wQdHsbvdbM) in any tab.
- Mockup of [no records available in any one tab](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScbeyHamGlj9syLcHVCJHzic)
- Mockup of [Joint mockups](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScTlXwsmeB7p--g4e1AS6BeU)

