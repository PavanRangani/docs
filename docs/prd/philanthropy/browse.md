# Browse Organizations

- Show all of the organizations for which grant/contribution/notes is added.
- Provides a way to filter organizations by year

### UI Requirement

[Mockup](https://drive.google.com/file/d/1U0Bjg3MQlEWGXmVy95_xpHXIhBvjkbi_/view?usp=sharing)

- When there is no records in `Philanthropy` module, show  [No Records Found](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDSceFxuBexkH0jiRKGYUymzIs) .
- Organizations are grouped by `Foundations` and `Non-Profit Firms`
  - Foundations - It will show all Contribution Organization
  - Non-Profit Firms - It will show all Grant Organization
- For each group shows separate table. Each table records are sorted in the alphabetical order of the organizations name.
- Each group shows total of `Paid` amount  in the header.
  - Show `Total` Contributions for `Foundation` and `Total Paid` for `Grant`.
- For Foundations
  - Column : 
    - Foundations Name
    - Organization Group
    - Total Contribution - Show total amount of the foundation.
- For non-Profit Firms
  - Columns
    - Non-Profit Firms Name
    - Organization Group
    - Total Pending - Show total pending amount (Approved Amount) of the non-profit organization.
    - Total Paid - Show total paid amount of the non-profit organization.

#### Year Filter

- By default shows current year in `From` & `To`
- `From` shows all available year for which records exists 
- Sorting : Ascending order of year. Both are selected dropdown.
- `To` shows year selected in `From` and all other available years which is higher than year selected in `From`.



#### `From` Year and `To` Year should be preserves

- Year in `From` & `To` dropdown should be same in the `Organizations`, `Payments` and `Contributions` tab. 
- It should always show available years of Organization tab in other tabs (Payments and Contributions).
- It means that `From` & `To` year should be preserve while switching the tabs between `Organizations`, `Payments`, `Contributions`.

