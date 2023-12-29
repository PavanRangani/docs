# ASA Entity

## Assign ASA Entity
### System Rule
- ASA Entity can be assigned only for active/archive entities except Individual/Joint.
- Can't be assigned for `Terminated` entities.
- Allows to select the `Existing Household` sevice team or `Own` service team.

### UX Rule
- User can assign ASA Entity detials from the `Contact` tab and `Clarius Team/Service Scope` tab.
- If user selects `Existing Household` team, it shows `Service Team` dropdown and if user selects `Own` team, user can able to select its own team.
- Shows pencil icon to the right side of the `Entity Details` section. On click, opens the Edit dialog where user can assign ASA Entity.
- Shows pencil icon disable when entity is marked as Terminated. On hover, shows tooltip message.
- When entity has Triggers and user change the ASA Entity to No and not select any value of the Servive team, system restricted it and it shows proper warning message.
- When entity has Trigger and user change the `ASA Entity` from No to Yes and select `Own` Service team or change `Household` from No to Yes, system will asks the household team from the bottom of the dialog.
  - For this, system shows proper warning message under the `Household team` section.

### UI Rule
- [Mockup flow of Assign ASA entity and service team](https://drive.google.com/drive/u/0/folders/1ONhZB_gUTKdCIQ1EG0E5TdjUpGXEPf0z)
- Tooltip message when entity is marked as terminated: `This entity is Terminated/Deceased. So you can't change it`
- Message when entity has Trigger and user not select any value of the Service team: `This entity has triggers. So you have to select any one option from the Service team`.
- Message when entity has Trigger and asks the Household team: `This entity has triggers. So the Household team is mandatory`



## Change ASA Entity
### System Rule
- Can be changed anytime.
- When ASA entity is changed (Yes to No), system will remove `Scope of Service`, all details of `ASA` (Current and History) & `Portfolio Details`.
  - `Portfolio Details` will be reset only when ASA details isn't avaialble for selected service team.

### UX Rule
- When ASA Entity details is changed from Yes to No, system shows confirmation dialog. On confirmation, system remove the `Scope of Service`, `ASA Details` & `Portfolio Details`.
- When ASA Entity is changed from No to Yes, system show confirmation dialog.  
- When entity has Trigger and user change the `ASA Entity` from No to Yes and select `Own` Service team, system will asks the Household team from entity dialog.
  - For this, system shows proper warning message under the `Household team` section.
- When entity has Triggers and user change the ASA Entity to No and not select any value of the Servive team, system restricted it and it shows proper warning message.

### UI Rule
- [See confirmation dialog when ASA entity is changed from Yes to No](https://drive.google.com/file/d/16AJFjE04dv0FgE0wCSgJZSJ7eRL75TLk/view?usp=sharing)
- [See confirmation dialog when ASA entity is changed from No to Yes](https://drive.google.com/file/d/1vm4fr_DhPS6ETRTKST91QIU5UoHkUgm8/view?usp=sharing)
- Message when entity has Trigger and user not select any value of the Service team: `This entity has triggers. So you have to select any one option from the Service team`.
- Message when entity has Trigger and asks the Household team: `This entity has triggers. So the Household team is mandatory`