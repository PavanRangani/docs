# Service Team
## Overview
- Every legal entity will roll in to any Household. So that it will have team same as team of Household.

## Entity Details
- Service Team
  - It is a dropdown of Household of the family.
  - Shows Generation at prefix of household name and shows household icon at suffix.
  - Household are primary sorted on Generation in order of - G0 to G6 and secondary sorting on alphabetical order of name.
  - It is mandatory when ASA entity is Yes and Service team is `Existing Household`.
  - It is mandatory when entity has Triggers.
  - On hover of icon, shows tooltip message. [See more details](../ui-components/browse-legal-entity-dialog.md#show-tooltip-message)

## Assign Service Team
### System Rule
- Can be assigned to all types of active entities.
- When the user selects a household from the `Service Team`, the system will pull the `Scope of Service` and `Household Team` from that household.
- When the user assign the `Service Team` for a Joint, the system will auto-set the `Service Team` of the Joint to both Individuals. User cann't change it from the Individual. 
  - Suppose Individuals have their own Household/Service team. Now, when user assign Service team to that Individual's Joint, system will remove Individual's household/Service team and auto set the Joint Service team.
- When the household team is not yet set up for any entity, the system will not allow that entity to be selected as a `Service Team` of other entities.


### UX Rule
- For `Individual`, Shows pencil icon disabled when it has their Joint's Service team. On hover, shows tooltip message.
- Shows proper message when Service team doesn't have Household team.
- When entity has Triggers and user changes the Household to No or `ASA Entity`, system show proper warning message about Service team is mandatory.

### UI Rule
- Tooltip message for Individual when Joint have Service team: `This Individual is associated with Joint. So you can't change household details from here. You can change it at Joint level only`. [See this](https://drive.google.com/file/d/1IBUe09WomOoGowFnX2Q_j--CEYqmhbhp/view?usp=sharing)
- Error message when Service team doesn't have household team. [See this](https://drive.google.com/file/d/1krRBD0s076JhGTl-vZ2B42Zj-fb6k6h8/view?usp=sharing)
- [See mock for Entities](https://drive.google.com/file/d/1XpSsaK7Mp6pmUqm546Wb6g-5YciTBrbX/view?usp=sharing)
- [See mock for Individual & Joint](https://drive.google.com/file/d/14y8rXM46w2dLncUoY6P6qn8HG5lh1Aey/view?usp=sharing)
- Warning message about Service team is mandatory: `This entity has triggers. So a Service team is mandatory. If you want to not select the Service team, first you have to delete all triggers of this entity`.


## Change Service Team
### System Rule
- Can be changed anytime.
- When clarius team is changed, system will update the `Scope of Service` and `Household team` details. Other details will remain as it is.
- When entity is marked as Terminated, system will auto-removed the Service team.
- When any entity has `Portfolio` or `Bill Pay` service, user can't select service team without `Accounting` or `Investment` role. 

### UX Rule
- When user change the `Service Team`, system will shows a confirmation dialog. On confirmation, clarius team is changed.
- When an entity has a `Bill Pay` or `Portfolio` and the user selects a `Service Team` that has no Investment and Accounting roles, the system will show an error message in the Service Team field. 

### UI Rule
- [Change confirmation dialog](https://drive.google.com/file/d/1UP4ef0kFZVz3LUGB2Y3vf8IsfLY1IcvR/view?usp=sharing)
- Error message: `It doesn’t have Investment/Accounting roles`