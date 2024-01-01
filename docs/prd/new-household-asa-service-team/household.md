# Household/ASA Entity

## Entity Details
- Household
    - Applicable only for Individual and Joint.
    - It is a radio button. Values are: `Yes` & `No`
    - Default none of the option is selected. 

- ASA Entity
    - Applicable for all entities except Individual & Joint.
    - It is a radio button. Values are: `Yes` & `No`
    - Default none of the option is selected.  

- Service Team
    - Applicable only when `Household/ASA Entity is No` or `ASA Entity is Yes and Service team is Existing Household`. 
    - It is a dropdown of Household of the family. Deceased Individual household is shown.
    - Shows Generation at prefix of household name and shows household icon at suffix.
    - Household are primary sorted on Generation in order of - G0 to G6 and secondary sorting on alphabetical order of name.
    - If any entity has `Display Name`, shows `Display Name` otherwise shows legal name.


## Assign Household
### System Rule
- Can be assigned only for Active/Archived/Deceased `Individual` or `Joint`.
- Can't be set household for `Termianted` Joint.
- If the Joint does not have a Household set up, user can set up Household in both of its Individuals. When the user sets the household for a Joint, the system will auto-set the household of the Joint to both Individuals and user can't change it from the Individual.
- When Individual/Joint doesn't have its own household, user can select the other Individual/Joint household.  
- When entity has no household and user selects the other household from the Service team, system will auto pull the `Scope of Service` and `Household Team` from that Household.
- If the Individual is part of Joint and user selects the Service team at Joint, system will auto set that selected service team to its Individual. 
- Allows to select only those Household which has Household team is setup.
    - When any entity has a `Portfolio` or `Bill Pay` service, the system will not allow selecting the service team that hasn't the `Investment role` or `Accounting` avaialble.


### UX Rule
- Household can be assigned from the `Contact` page and `Service Scope/Clarius Team` tab.
- When user select the Service team without a Household team, system shows proper error message.
- When entity has Portfolio or Bill Pay service but user select Service team which has no Investment or Accounting role, system shows proper error message. 


### UI Rule
- Error message when user select the Service team without a Household team: `You can't select service team whose team is not set up yet.`
- Error message for Portfolio/Bill Pay case: `This entity has Portfolio or Bill Pay service. So you can't select service team without an Investment/Accounting role`



## Change Household
### System Rule
- Can't be change until it is used in another entity as a Service Team.
- When user change the Household, system will auto update RACI roles of this entity's tasks.

#### Change Household from Yes to No
- When Household is changed, system will remove the `Scope of Service`, `Household Team`. Current ASA details will be moved to the History tab. Portfolio detail will reamin as it is.
- When Individual/Joint has trigger and user change the household to No, `Service Team` is mandatory.
- For Joint, when one of the its Individuals of Joint has triggers, `Service team` is mandatory for Joint. (It doesn't matter that Joint has triggers or not)

#### Change household from No to Yes
- When entity has triggers and user change the household from No to Yes, system will ask the mandatory roles.
- For Joint, suppose Individuals have their own Household. Now, when user sets household to that Individual's Joint, system will remove Individual's household and auto set the Joint household.


### UX Rule
#### Change Household from Yes to No
- When Household is selected as Service team in other entities, system restict to change household. It shows change not possible dialog.
- When Household is not selected in other entities and user change the Household to No, system shows confirmation dialog. On confirmation, household is changed.
- When user change the Household from Yes to No and it has triggers, system shows `Service Team` as mandatory. When user save it without entering Service team, system shows proper error message.

#### Change Household from No to Yes
- When user change the Household from No to Yes, system shows confirmation dialog. On confirmation, system household is changed.
- When user change the Household from No to Yes and it has triggers, system shows mandatory roles in the Household dialog with proper message.

### UI Rule
- Change not possible dialog
- Confirmation dialog of `Yes to No` or `No to Yes`
- Info message when entity has trigger and system ask the roles: `This entity has triggers. So the Household team is mandatory.`
- Error message when Service team is mandatory: `This entity has triggers. So a Service team is mandatory. If you want to not select the Service team, first you have to delete all triggers of this entity`


## Assign ASA Entity
### System Rule
- ASA Entity can be assigned only for Active/Archived entities except Individual/Joint.
- Can't be assinged for the `Termianted` entities.
- ASA Entity will have either its own team or pulled from the other household.

### UX Rule
- When ASA Entity is set to Yes, system ask 2 options in the Service team: `Own` & `Existing Household`
    - When user selects `Own`, it means the entity has its own household team and user selects `Existing Household`, shows `Service team` dropdown.
- When ASA Entity is set to No, system ask the `Service team`.
- When user selects the `Service team`, system pulls the 



## Change Service team

### System Rule
- Can be changed anytime.
- When Service team is changed, system will update the `Household team` & `Scope of Services`. 
- When any entities is terminated, system will auto removed its service team.
- When any Individual is deceased, system won't remove the Service team. It will remain as it is.
- When user change the Service team of any entity, system will update the task of that entities. 
- When any entity has `Portfolio` & `Bill Pay` service, system will not allow selecting service team without `Accounting` or `Investment` role.
- When Individual is a part of Joint and Joint has no Household, user can select the other Household or own household to the Individuls.
- When Individual of the Joint has its own Household or its has other Household (Not pulled from the Joint) and user change the Service team at Joint, system will not update that service team to its Joint.
- 