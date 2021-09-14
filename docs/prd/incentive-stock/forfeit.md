# Forfeit

Applicable only for `Unvested` and `Vested` vesting scheduled of all type of Grants (Except Stock Grant)

## Entity Details

#### Event Date

- Date input field. Its a mandatory field.
- For `NQSO` & `ISO`, it should be greater than `Grant Date` and less than `Expiration Date`.
- For other types, it should be greater than `Grant Date`.

#### Shares Forfeited

- Number field. It's a disabled field.
- Its value will be same as the `No of Shares Vested`.

#### Forfeiture Notes

- Free form text input field.



## Add Forfeit

### System Rule

- Applicable to both `Vested ` and `Unvested` vesting scheduled.
- When partial exercise is performed, `Forfeit` action is not applicable

### UX Rule

- When `Event Date` is greater than `Expiration Date` or less than `Grant Date` then system shows error message.
- For `Joint` type legal entities, show the individual name along with the title of the dialog.
- When `Forfeit` action is not applicable, open `Forfeit Not Possible` dialog with proper message.

### UI Rule

Mockup of Add forfeit dialog  //TODO

- Error message when Event Date > Expiration date : `Should be <= Expiration Date`
- Error message when Event Date < Grant date : `Should be >= Grant Date`
- Mockup of `Forfeit Not Possible` dialog //TODO



## Undo Forfeit

### System Rule

- Applicable only when a `Forfeit` action has been performed.

### UX Rule

- On click, open `Undo` confirmation dialog.
- On confirmation, data will be reset.

### UI Rule

Mockup //TODO



## View Forfeit

#### UX Rule

- Shows forfeit data of any particular vesting schedule.

#### UI Rule

Mockup //TODO

