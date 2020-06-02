# Browse Associated Partnership

- Shows all partnership of selected legal entity where this legal entity is currently owner
- Estate and Foundation can not be added as owner in partnership, so for those entities Associated partnership is not applicable

## UI Requirements

- Shows associated partnership data in `Workspace -> Partnerships` tab
- `Partnership` tab will not appear for `Estate` and `Foundation`.  
- When there is no partnership, it shows [No Records Available](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScRK64eewv8Z-ZBzma0R2DQA) message.
- For [Individual](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDSce2TztrbEthviTwrKmG9_XM), [Partnership](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScfv_sJCceD7UIZ7BB5QA52g), [Joint](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDSccb1_PY5bQfslNFQWaNHNs0) and Trust shows associated partnerships in table
- Table columns
  - Partnership Name 
    - Name of the Partnership
  - State of Formation
    - Name of the Partnership
  - Established on
  - Ownership
- Records in table sorted in ascending order of Name
- Shows hover effect on each row.
- For Joint, shows two tables - One for each individuals.
  - If one individuals in the joint has some records and the other individuals does not have records. [See this mockups](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScWF0QtuxAUG2HCaZq9XWmYg)
- On click of row, opens workspace page of that partnership
