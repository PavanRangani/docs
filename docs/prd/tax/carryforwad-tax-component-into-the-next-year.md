# Carryforward Tax component into the next year

## Auto create component

- When Tax return is created, System auto creates components based on last year return of selected form whose status is `Filed` in system. 
  - For e.g. User has a 2020 year tax return having 4 components and the status of the tax return is filed. Now the user creates a new tax return for 2021. So the system will auto-create the 4 components of the 2020 tax return to the 2021 tax return with pending status.
  - If tax component is disabled in last year, No components will be created and for this return also it will set to disabled.
  - If tax component enabled in last year, system creates components same as last year
    - All of the components will be in `Pending` status
    - Components whose `Final year` = `True` won't be created
  - System carryforward the following details
    - Name
    - Excepted Date
    - Responsible
    - Received From
    - Permanent Notes
- When the user enables the tax component tracking of any particular tax return, the system auto-creates components based on last year's return of the selected form whose status is Filed in the system.
  - For e.g. User has a 2020 year tax return having 4 components and the status of the tax return is filed. User has 2021 return where component tracking is disabled. Now when the user enables component tracking in the 2021 return, the system will auto-create the 4 components of the 2020 tax return into the 2021 tax return with pending status.
- When any Tax return status is set to `Filed`, the system carry forward the tax component of that return to the next year's tax return.
  - For e.g. User has a 2020 and 2021 tax returns with 3 and 4 components. Status of the both tax return is Pending. Now the user set the status of 2020 return to filed, the system will carryforward the 3 tax components of 2020 tax return to the 2021 tax return with pending status.
  - If the next year's (2021) tax return is already filed, system won't be carryforward the last year's (2020) tax component to the next year.
- System maintains a uniqueness rule in the carry forward logic.
  - For e.g., If 2020 and 2021 both tax returns are Pending and both have the same component `Component 1` with the same section and document. Now user Filed the 2020 tax component. The system won't be carried forward the component of the 2020 tax return to the 2021 tax return. (Due to uniqueness rule)  
- For Disregarded Entity tax return, status is not applicable so carryforward logic works on the status of `Grantor to` for Trust or `SSN of` for Partnership.
  - When tax return of `Grantor to` or `SSN of` is Filed, system will carryforward last year disregarded return components to current year tax return. 
  - For example: User has Disregarded entity tax return of year 2022 which has 4 components and Ravi is `Grantor To` or `SSN of`. Now when Ravi's 1041 tax return is filed, the system will carry forward the tax component of the disregarded entity's 2022 return to the year 2023.
  - Suppose Individual doesn't have own 1040 but he has Joint. So when Joint tax return is filed, system will also carry forward the tax component of the disregarded entity's 2022 return to the year 2023 (where any Individual of the Joint is associated in `Grantor to` or `SSN of`). 


## Techanical Notes
- Suppose the previous year's tax component is not carried in the current year's tax return due to any issue/bug, the system has a sysop to trigger the carry forward logic of the previous year's tax component to the current year. 
- Sysop can be run using tax return id and entity ID. System will carry forward the uniq component from the previous year's to current year's.