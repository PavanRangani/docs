# Exchange

Applicable only for `Unvested` and `Vested` scheduled of `NQSO`, `ISO`, `RSA` & `RSU` type incentive stock.

## Entity Details

#### Event Date

- Date input field. Its a mandatory field.
- For `NQSO` & `ISO`, it should be greater than `Grant Date` and less than `Expiration Date`.
- For other types, it should be greater than `Grant Date`.

#### Shares Exchanged

- Number field. It's a disabled field.
- Its value will be same as the `No of Shares Vested`.

#### New Company Name

- Its auto complete dropdown of Public, Private & Limited Partnership types company. Its a mandatory fied.
- Shows company type as a Secondary Information.

#### Exchange Notes

- Free form test input field.



## Add Exchange

### System Rule

- Applicable to both `Vested ` and `Unvested` scheduled.
- For `Carried Interest` type incentive stock, this action won't be applicable.
- When partial exercise is performed, `Exchange` action is not applicable

### UX Rule

- When user select a source company in `New Company Name` field, system show error message.

- When `Event Date` is greater than `Expiration Date` or less than `Grant Date` then system shows error message.
- For `Joint` type legal entities, show the individual name along with the title of the dialog.
- When `Forfeit` action is not applicable, open `Forfeit Not Possible` dialog with proper message.

### UI Rule

Mockup of Add Exchange dialog  //TODO

- Error message when source company is selected: `Exchange not possible for same company`

- Error message when Event Date > Expiration date : `Should be <= Expiration Date`
- Error message when Event Date < Grant date : `Should be <= Grant Date`
- Mockup of `Exchange Not Possible` dialog //TODO



## Undo Exchange

### System Rule

- Applicable only when a `Exchange` action has been performed.

### UX Rule

- On click, open `Undo` confirmation dialog.
- On confirmation, data will be reset.

### UI Rule

Mockup //TODO



## View Forfeit

#### UX Rule

- Shows exchange data of any particular vesting schedule.

#### UI Rule

Mockup //TODO

