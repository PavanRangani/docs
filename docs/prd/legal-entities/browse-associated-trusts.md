# Browse Associated Trusts

- Shows all trusts of selected legal entity where this legal entity is added as Trustor, Trustee or Beneficiary



## UI Requirement

- Shows associated trust data in `Workspace -> Trusts` tab
- TRUSTS tab shows records in 2 tabs - [Active](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDSce9woizE2Lxz8XnsOB6qZa0) & [Terminated](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDSca848UVsf2uJl_-Wfrwn3BU)
- Shows count of records in tab title.
- When record is not available in any tab, shows [No Records Available](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDSceNeUo1q9Tj83wQdHsbvdbM) message.
- When there is no records in any one tab, [see this](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScbeyHamGlj9syLcHVCJHzic)
- In both tabs, shows records in table
- For [Individual](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDSce9woizE2Lxz8XnsOB6qZa0), [Joint](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScYqOJiNQFHi6CuxrIdnSl5w), [Partnership](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScfAgMrQm_GsXWBFILvGXvBs), Foundation and Estate shows associated Trust in table
- For `Trusts`, shows [Trusts](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScZn9da8lbpqAEA7vDmLnWVI) tab as disable.
- Table columns
  - Trust Name
    - Name of the Trust
  - Trust type
    - Type of the Trust
  - Status
    - Shows status of Trust `Intervivos` and `Testamentary`. If status is empty, shows `-`.
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
  - If one individuals in the joint has some records and the other individuals does not have records. [See this mockups](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScTlXwsmeB7p--g4e1AS6BeU)
- On click of any of the record, opens that trust



