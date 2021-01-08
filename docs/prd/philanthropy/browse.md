# Browse Organizations

- Show all of the organizations for which grant/contribution is added
- Provides a way to filter organizations by year

### UI Requirement

- When there is no records in `Philanthropy` module, show  [`No Records Found`](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDSceFxuBexkH0jiRKGYUymzIs) .

- Shows all organizations in table

  [Mockup](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDSce4ea4VCjrRCmmpBf6eIOGA)  

  - Column: 
    - Organization
    - Organization Group
    - Total Contributions
      - It will show a total amount of contributions of that organization for the selected time periods.
      - If amount is not available show then  `-`.
    - Total Payments
      - It will show a total paid amount of grants of that organization for the selected time periods.
      - If amount is not available show then  `-`.
  - Sorting: Ascending order of Organization Name

#### Year Filter

- By default shows current year in `From` & `To`
- `From` shows all available year for which records exists 
- Sorting : Ascending order of year. Both are selected dropdown.
- `To` shows year selected in `From` and all other available years which is higher than year selected in `From`

