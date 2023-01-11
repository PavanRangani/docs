# Carryforward Tax component into the next year

## Auto create component

- When Tax return is created, System auto creates components based on last year return of selected form whose status is `Filed` in system. 
  - For e.g. User has a 2020 year tax return having 4 components and the status of the tax return is filed. Now the user creates a new tax return for 2021. So the system will auto-create the 4 components of the 2020 tax return to the 2021 tax return with pending status.
  - If tax component is disabled in last year, No components will be created and for this return also it will set to disabled.
  - If tax component enabled in last year, system creates components same as last year
    - All of the components will be in `Pending` status
    - Components whose `Final year` = `True` won't be created
- When the user enables the tax component tracking of any particular tax return, the system auto-creates components based on last year's return of the selected form whose status is Filed in the system.
  - For e.g. User has a 2020 year tax return having 4 components and the status of the tax return is filed. User has 2021 return where component tracking is disabled. Now when the user enables component tracking in the 2021 return, the system will auto-create the 4 components of the 2020 tax return into the 2021 tax return with pending status.
- When any Tax return status is set to `Filed`, the system carry forward the tax component of that return to the next year's tax return.
  - For e.g. User has a 2020 and 2021 tax returns with 3 and 4 components. Status of the both tax return is Pending. Now the user set the status of 2020 return to filed, the system will carryforward the 3 tax components of 2020 tax return to the 2021 tax return with pending status.
  - If the next year's (2021) tax return is already filed, system won't be carryforward the last year's (2020) tax component to the next year.
- System maintains a uniqueness rule in the carry forward logic.
  - For e.g., If 2020 and 2021 both tax returns are Pending and both have the same component `Component 1` with the same section and document. Now user Filed the 2020 tax component. The system won't be carried forward the component of the 2020 tax return to the 2021 tax return. (Due to uniqueness rule)  
- For Disregarded Entity tax return, status is not applicable so auto creation will work regardless of its status. 
    - For Disregarded Entity, system will auto create all components same as last year regardless of status of Components. Means it will create new components even component's status is pending in last year. (Just to be clear If I go back in last year tax return and create a new components then it won't be added to the current year tax return).