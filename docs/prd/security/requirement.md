# Requirement

## Add security

- For each type of security only one record can be added. Only for Employment Security Department multiple records can be added
- For Employment if record with selected state is alredy exists, shows error.

### UI Requirement

[Mockups](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScfIVUJ9oFuseKqumEpFAbNA)

- On click shows dropdown with available options
- Security option which is already added is shown in disable (Employment security department is never shown disable)
- For Employment Security Department, if record with selected state is already exists, it shows error `Record with selected state already exists`

## Edit security

- Can be updated any time

## Delete

- Can be deleted anytime
- Shows delete confirmation dialog

## Browse Security

[Mockup](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScQUKjTkI3fu_r7NX3ezmF9s)

- In browse page shows record in following order
  - Schwab Security Settings
  - Password Keeper
  - Credit Monitoring
  - Credit Freeze
  - Fraud Alert
  - IRS Lock
  - Employment Security Department
  
- For Employment Security Department records will be sorted in Ascending order of State
- In this page, on hover of any record doesn't show hover effect. Only shows vertmore icon
- Vertmore actions: Edit, Delete (Red)

### For Joint

[Mockup](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScWZII774Qp6ju3A0qDd-OQA)

For joint entity, list page shows records for both Joint & Individuals in same page. 

> For example, in Security tab for Joint `Steve and Laurie`, it will display security data of both individual (Steve and Laurie).

In list page, with each record shows the name of the owner entity. If owner of the record is Joint it shows `Joint` and if owner of the record is Individual shows `First name` of that Individual.


