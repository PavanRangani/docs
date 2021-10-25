# Browse Associated Partnership

- Shows all partnership of selected legal entity where this legal entity is currently owner.
- Individual can also be associated with Partnership through Governance role. So for Individual, All the Partnership where Individual is either as owner or as Governance role will be shown in this page.

  - For e.g. For an Individual, Partnership firm is shown on the page in any of the following scenarios:
    - Individual has a role, but no ownership
    - Individual has a role and ownership
    - Individual has no role, but ownership
- For Manager Role, User allow to select Individuals and same family Client entity .  So for Partnership, Estate, Foundation and Trust,  All the Partnership where this legal entity is either as owner or as Governance role (Manager) will be shown in this page.
- For Individual, records in Partnership tab is shown in two groups: ACTIVE and INACTIVE
  - ACTIVE tab shows only Active partnerships 
    - where Individual in currently owner
    - Individual is added as Governance role and it doesn't have end date
  - INACTIVE tab shows partnerships
    - where Individual was once a owner but currently not owner
    - Individual is added as Governance role and it has end date
    - Individual is currently owner but partnership is terminated
    - Individual is added as Governance role and it doesn't have end date but partnership is terminated
- For Partnership,Foundation, Estate and Trust entity, records in Partnership tab is shown in two groups: ACTIVE and TERMINATED
  - ACTIVE tab shows only Active partnerships 
    - where Partnership or Trust is currently owner
    - Partnership, Foundation, Estate and Trust entity is added as Governance role and it doesn't have end date
  - TERMINATED tab shows
    - any active partnership where selected entity was once a owner but currently not owner
    - Partnership, Foundation, Estate and Trust entity is added as Governance role and it has end date
    - Partnership, Foundation, Estate and Trust entity is added as Governance role and it doesn't have end date but partnership is terminated
    - any terminated partnership where selected entity is current owner

## UI Requirements

- Shows associated partnership data in `Workspace -> Partnerships` tab 
- When there is no partnership, it shows [No Records Available](https://drive.google.com/file/d/1de40fgRz0f0tUVtXBuD7fPauasatZkFr/view?usp=sharing) message.
- For Individual, [Joint](https://drive.google.com/file/d/1kYxC1BCQTcqgrhsgTSgJg-RYUQPUlc0Q/view?usp=sharing), [Partnership](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScfv_sJCceD7UIZ7BB5QA52g), Foundation, Estate and Trust shows associated partnerships in table
- Records are shown in two tabs: Active & Inactive / Terminated
- Active tab Table columns
  - Partnership Name 
    - Name of the Partnership
  - Role
    - Governance role 
  - Ownership
    - % share of the Individual in this partnership
  - Purpose of Partnership
- INACTIVE / TERMINATED tabs will show only one column: Partnership Name
- Records in table sorted in ascending order of Name
- Shows hover effect on each row.
- For Joint, shows two tables - One for each individuals.
  - If one individuals in the joint has some records and the other individuals does not have records. [See this mockups](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScWF0QtuxAUG2HCaZq9XWmYg)
- On click of row, opens workspace page of that partnership



## Download PDF

### UX Rule

- Allows to download PDF file for both tabs. Show PDF icon on the header of both tabs. 
- On click, PDF file will be downloaded in same browser tab.
- PDF icon won't be applicable when the tab has no records available.

#### PDF File

- Current tab PDF file name will be in this format: `associated-partnership-summary-of-{legal entity name}.pdf`
- Inactive tab PDF file name will be in this format: `inactive-associalted-partnership-summary-of-{legal entity name}.pdf`
- Sorting order is the same as [UI app](#ui-requirements).

Sample PDF file //TODO

