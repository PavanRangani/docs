# Household 

## Overview
- In past, every client was considered in the context of a Family. Now, members of a Family will be grouped into Households.
- Every Family will consist of 1+ Households, where a Household will refer to any Individual or Joint that has signed an Advisory Service Agreement (ASA) with Clarius, making them a client in their own right.
- Over time it is possible that an Individual from an existing Household, e.g `Abigail Miriam Alberg`` who is currently in the John Alberg & Alicia Alberg Household, could become a separate client of Clarius upon reaching maturity, thereby establishing a new Household within the Clarius Family.
    - It is not inevitable that all minor Individuals will eventually become Households: e.g. if `Abigail Miriam` becomes a client of a competitor, she would not establish a Household with respect to Athena. (In such situations, the child would still need to be tracked as an Individual in Athena since they will likely be the beneficiary of estate planning for that Household.)
    - A Household may include adults who have not established their own client relationships with Clarius, e.g. `Robert Alberg` within the Tom Alberg & Judith Beck Household. These will remain as Individuals under the original Household.
    - It always requires signing a separate agreement with Clarius to establish a Household.
    - Each Household will have a Service Level Scope; different Households within the same Family may be at different Scope.
- When a new Household is created, a dropdown will allow a Service Scope to be selected for that Household. (All members of a Household will be at the same Scope.)
- Within a Family, different Households may be at different Service Scopes.

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
  - Applicable for all types of entity. 
  - For Individual & Joint, applicable only when `Household` is No.
  - It is a dropdown of Household of the family in alphabetical order.
  - If any entity has `Display Name`, shows `Display Name` otherwise shows legal name.


## Assign Household 

### System Rule
- Household can be assigned only for active/archive Individual or Joint.
- Can't be assigned for `Deceased/Terminated` Individual or Joint.
- When the user sets the household for a Joint, the system will auto-set the household of the Joint to both Individuals and user cann't change it from the Individual. 
  - Suppose Individuals have their own Household. Now, when user sets household to that Individual's Joint, system will remove Individual's household and auto set the Joint household.

### UX Rule
- User can assign household from the `Contact` tab and `Clarius Team/Service Scope` tab.
- Shows pencil icon to the right side of the `Entity Details` header. On click, opens the Edit dialog where user can set household.
- Shows pencil icon disable when entity is marked as deceased/Terminated. On hover, shows tooltip message.
- For `Individual`, Shows pencil icon disabled when it has their Joint's household. On hover, shows tooltip message.
- Shows proper message in `Clarius Team` tab when no household or service team is assigned.

### UI Rule
- [Mockup flow](https://drive.google.com/drive/u/0/folders/17Ff2xnS75P8vtvBbys3SfoOHqHZfJdk8)
- Tooltip message for Individual when Joint have household: `This Individual is associated with Joint. So you can't change household details from here. You can change it at Joint level only`. [See this](https://drive.google.com/file/d/11LgjAFXjUsXe5_GunMv_9j0tk9CjZPvg/view?usp=sharing)
- Tooltip message when entity is marked as deceased/terminated: `This entity is Terminated/Deceased. So you can't change it`. [See this](https://drive.google.com/file/d/1e4LdgYZt31iA7fisnyIGF3Q377hjfXGR/view?usp=sharing)
- Placeholder message in `Clarius Team` tab when there is no household and service team is assigned:
  - Individual & Joint: `No Household/Service Team Assigned`
  - For other legal entity: `No Service Team Assigned`. [See this](https://drive.google.com/file/d/15jcqlUKuJ8W5qlp11lwkT0YI_C53b4MJ/view?usp=sharing)


## Change Household
### System Rule
- Can't be change until household is used in another entity as a Service Team.
- When user change the household, system will remove `Scope of Service`, `Household Team` & `ASA` details. `Portfolio` details will remain as it is.
- When user change the household and select `Service Team` having ASA details, system won't reset `Portfolio` details.
  - For e.g `Tom` & `Judi` is household and noth has ASA details. Tom is selected as a service team in `Carson`. Carson has portfolio details. Now, user change the service team of Carson from Tom to Judi. System won't reset the Portfolio details of the Carson.
- When user change the household, RACI role of the tasks of the entity will also be changed.
- For Joint, when user change the household from Yes to No, system will remove the `Portfolio Details` of the both Individual.

### UX Rule
- When household is changed from `Yes` to `No` and it is used in other entities, system shows household change is not possible dialog. 
- When household is not used in any entity and user change its value (Yes to No), system shows a confirmation dialog. On confirmation, system removes the `Scope of Service`, `Household team` & `ASA` details.
- When household is not used in any entity and user change its value (No to Yes), system shows a confirmation dialog. On confirmation, system change the `Household team` details.
- For Joint, when household is change to No, system will remove the household from both Individuals.
- When user change the Household from `No` to `Yes` and entity has triggers, system asks `Household team` team in the entity details dialog. For this, system shows proper warning message.
- When household is changed from `Yes` to `No` and user select Service team, RACI roles of the entity is changed accordingly.

### UI Rule
- Change possible dialog: [Yes to No](https://drive.google.com/file/d/1Z7aQ9oqXeEzUsg94vmSehF3gq1JznrUV/view?usp=sharing) or [No to Yes](https://drive.google.com/file/d/1FDGk7CcVx2ikRHVClFE0I_EQJX0CzY4i/view?usp=sharing)
- [Change is not possible dialog](https://drive.google.com/file/d/1w3cnN2Hhi5LQhGDcnXVWIAKT7xp-GNLO/view?usp=sharing) 
- Message when entity has trigger and user changes the Household to Yes: `This entity has triggers. So the Household team is mandatory`


## Browse Service Scope/ Clarius team tab
### UX Rule 
- When household is `No` or `ASA Entity` is `No`, tab name is `Clarius Team` otherwise tab name is `Service Scope`.
- Shows proper message when household/service team is not assigned.
- On hover of any section, shows pencil icon to the right side.
- Cases for showing message when Individual is part of any Joiunt
  - When Joint Household = blank, shows `-` in the household field for Individual. 
  - When Joint Household = No and service team is blank, shows `No (Part of Joint)` in the household field and shows `-` in the service team.
  - When Joint Household = no and service team is available, shows `No (Part of Joint Service team)` in the household field and shows service team in the service team field.
  - When Joint Household = Yes, shows `Part of Joint Household` word in Household field for Individual. [See this](https://drive.google.com/file/d/1-F9hJSrQlDq4cejO7AH8yWs5At65LxSJ/view?usp=sharing)
  - When Joint Housheold = No and its Individual Household = Yes, shows `Individual Household` in the household field.
  - When Joint Household = No and its Individual Household = No and it has Service team, shows `No Individual` in the household field.
- When `Service Team` name is too long, shows it in multiline. It is link. On click, open that entity in new page.
- When the household/ASA Entity is `Yes` but the mandatory details of the `Service Scope` tab have not been added yet, the `Service Scope` tab will appear in red. 
  - For `Individual` & `Joint`, shows `(Mandatory for Household)` word in bracket of the `Scope of Services`, `Household Team` & `ASA` details section. [See this](https://drive.google.com/file/d/1cht-yPd_m2dztimOUvP5owbVo3rZLJDe/view?usp=sharing)
  - For Other entity, shows shows `(Mandatory for Household)` word in bracket of the `Scope of Services` & `ASA` details section. [See this](https://drive.google.com/file/d/17qWiP__RzyBE756-ohDlNwD-wtBlREQf/view?usp=drive_link)


### UI Rule
- [Mockup](https://drive.google.com/file/d/1595b3HZBVSd_SHdqva_Y2VuIP36TTQVx/view?usp=sharing)







