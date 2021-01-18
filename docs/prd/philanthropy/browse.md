# Browse Organizations

- Show all of the organizations for which grant/contribution is added
- Provides a way to filter organizations by year

### UI Requirement

Mockup //TODO

- When there is no records in `Philanthropy` module, show  [`No Records Found`](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDSceFxuBexkH0jiRKGYUymzIs) .
- Organizations are grouped by `Foundations` and `Non-Profit Firms`
  - Foundations - Show all Contribution Organization
  - Non-Profit Firms - It will show all Grant Organization
- For each group shows separate table. Each table records are sorted in the alphabetical order of the organizations name.
- For Foundations
  - Column : 
    - Foundations Name
    - Organization Group
    - Total Contribution - Show total amount of the contribution.
- For non-Profit Firms
  - Columns
    - Non-Profit Firms Name
    - Organization Group
    - Total Pending - Show total pending amount (Approved Amount) of Grant.
    - Total Paid - Show total paid amount of the Grant.

#### Year Filter

- By default shows current year in `From` & `To`
- `From` shows all available year for which records exists 
- Sorting : Ascending order of year. Both are selected dropdown.
- `To` shows year selected in `From` and all other available years which is higher than year selected in `From`

