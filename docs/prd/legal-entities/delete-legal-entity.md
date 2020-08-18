# Delete Legal Entity

## Individual

- When Individual is going to be deleted, system checks its relation
  - Individual can be associated as contact at other places
  - Individual can be associated as Legal entity at other places (Places where only legal entity is allowed to be selected)
  - Underlying data of Individual - Asset and Banking can be associated with other places
- If individual is associated as Legal entity at any of the following places, delete is not allowed
  - As `Individual` in `Joint`
  - As `deceased` in Estate
- When Individual is associated as contact, System allows to delete it.
  - If Individual is being referenced at other places in application, system deletes its Individual record but keeps related Contact as it is and keep it linked at other places.
  - If Individual is not being referenced anywhere then its corresponding Contact is also deleted.
- When underlyting data of Individual is associated only with other data of same Individual, system allows to delete individual.
  - For e.g. Asset of Individual is linked with Insurance of same Individual. In this case system allows to delete it.
- When underlying data of Individual is associated with other legal entities data, system doesn't allows to delete individual.
  - For e.g. Asset of Individual is linked with Insurance of other legal entity. In this case system doesn't allows to delete it.

### UI Requirement

- When Individual is not linked anywhere it shows normal Delete confirmation dialog
- If Individual is linked as only contact, it shows all the relations in dialog and  allows to delete
- If Individual is associated as Legal entity or its underlying data like asset or Banking is linked at other legal entities data, it shows delete not possible dialog with all the relations.

## Legal entities other than Individual

- When any legal entity other than Individual is deleted, its behavior is same

- When Legal entity itselft or its underlying data is associated with other legal entity, doesn't allows to delete it

  > - When partnership is associated with other Partnership or Trust, it can’t be deleted
  > - When Trusts is is associated with other Partnership or Trust, it can’t be deleted
  > - When Estate is associated with Trusts as beneficiary, it can't be deleted
  > - When any Asset of Foundation is linked with other Individual’s Insurance. In this case the foundation can not be deleted.

### UI Requirement

- When legal entity is not associated anywhere it shows normal Delete confirmation dialog
- If its linked somewhere it shows `Delete not possible` dialog with all the relations