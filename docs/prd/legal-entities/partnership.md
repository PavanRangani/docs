# Partnership

### Overview

- Represents any real life partnership firm
- System maintains history of ownership changes

- When entry in history is required, then only `Add Ownership` should be used. Otherwise you can use 'Edit Ownership'
  - For e.g. After creating any Partnership, you realized that you made mistake in entering any owner name or his/her share. Then you should use `Edit Ownership`. It will not create history entry. 
  - For e.g. When any owner is removed or new owner is added, you should use `Add ownership` so that system maintains entry in history.
- Possible actions: `Create`, `Edit Ownership`, `Add Ownership`, `Delete Ownership`

### Entity

- Name (*)
- EIN
- Established on
- State of formation
- UBI
- Current Owners
  - Contact with %
- Owners history
- Clarius Emails
- Partners



### Create

- Multiple Owners can be added
- Total of % should be 100
- System auto creates entry in history
- `Effective date` will be blank for this auto create entry. 

#### Note

- While creating first entry of history, we are not using `Established on` as `Effective date` of first entry in history (Client's requirement was: `Established On` and `Effective date` of first ownership does not need to be same)

### Add Ownership

- When there is any change in ownership, system allows to add new ownership 
  - Can be used  these cases: for e.g. any owner removed, any new owner added, any change in current share of owners 
- System ask for `New Owners Effective Date` 
- System makes entry in history
- When entry in history is required, then only `Add Ownership` should be used. Otherwise you can use 'Edit Ownership'
  - For e.g. After creating any Partnership, you realized that you made mistake in entering any owner name or his/her share. Then you should use `Edit Ownership`. It will not create history entry. 
  - For e.g. When any owner is removed or new owner is added, you should use `Add ownership` so that system maintains entry in history.

### Edit ownership

- Allows edit anytime
- System doesn't make entry in history

### Delete ownership

- Allows delete anytime





