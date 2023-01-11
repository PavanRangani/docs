# State Tax Return

## State dropdown

- On click of `Add State`, opens dropdown with states of USA
- In dropdown, Shows records in ascending order
- In dropdown, States which are already added will be shown as disabled. So that user can not click on it.


- Multiple delete of tax return is not possible (Old app doesn't have such feature, so we deliberately not implemented it)

## Add State

- Shows list of states of USA. 
- Allows to add as many states as required. One state can be added only once.
- For each states, `Payments` and `General` section will be populated. 
  - If `Payments` section is not applicable for federal then it also doesn't applicable in state and if its applicable for federal  then its same as `Federal`. 
- `Applied from prior year` is pulled from `Applied to next year` amount of last year tax return for the same state. If last year tax return is not available for this state, allows user to input amount in this field.
- in General section only `Dates`, `Carryforward`, [`Summary Information`](#summary-information-for-state) and `Notes` are only populated.  Other details are not applicable for `State`
- `Dependencies` and `K1 Distribution` is not applicable in the State Tax Return.
- For form `709`, state is not applicable. So doesn't allow to add states
- In Carryforward section, Value in `Into Year` will be retrieved from `Out of Year` values of last year Tax return of this state. If last year return is not available for this state,  then only allows to input value here.

### Summary Information for State

| Field Name           | Description                              |
| -------------------- | ---------------------------------------- |
| State Taxable Income | Currency input. Decimal not allowed. Negative amount is allowed. Mandatory field to set status `Filed` |
| Tax Due              | Currency input. Decimal not allowed. Mandatory field to set status `Filed`. |



## Delete state

- Allows to delete state anytime.
- On click opens delete confirmation dialog. See this //TODO