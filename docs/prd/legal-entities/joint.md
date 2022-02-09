# Joint

Joint is a combination of two individuals. In USA two person can file their tax return jointly.

Joint can be created using two individuals

## Add Joint

## System Rules

- Allows to select two individuals
- Doesn't allow to create joint, if joint with same individual already exists
- Both individuals of joint should be different.
- One individual should be always associated with one active joint. 

### UX Rules

- There is two fields to add individuals. Both of fields are mandatory.
- If individual is already exists in active Joint, system shows error message for that individual.

###  UI rules

[Mockup](https://drive.google.com/file/d/1PaZ4i-bnP7v7SrHz1CdVSObSlS4H5_oH/view?usp=sharing)

- There is 2 fields. 
  - Both of the field is a auto-complete dropdown of the individuals.
- If same name joint already exists then system show error message like `Joint already exists`.
- If both of the individuals are same then show error message like `Both Individuals can't be same`.
- Error message for individual already exists in any joint: `Already associated in active joint`.



## Edit Joint

- Joint can't be editable.
  - There is a case so you had to stop joint editing. If the joint gives a gift to someone. So in this case the individual in the joint is giving a gift. Now if the individual of that joint is updated, then it will issue in the first given gift. That's why we stopped editing the joint.
- User can able to edit `Display Name`. On click of `Edit` action of vertmore, open `Edit Display Name` dialog.

### UI Rule

Mockup of Display dialog //TODO

## View Joint

- Show both individuals of joint.
- Joint have one vertmor action
  - Actions are: `Edit`, `Terminate` , `Undo Terminate` & `Delete`
  - `Terminate` action is applicable only for active joint.
  - `Undo Terminate` action is applicable only for terminated joint.
- If Joint has `Display Name`, show that name in bracket with the legal name.

### UI Rule

Mockup of Joint without nickname //TODO

Mockup of Joint with nickname //TODO



## Terminate Joint

See [Terminate Joint](../legal-entities/deceased-terminated-legal-entity.md#joint)

## Delete Joint

See [Delete Joint ](../legal-entities/delete-legal-entity.md#joint)