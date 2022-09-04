# Delete Legal Entity

## Individual

- When Individual is going to be deleted, system checks its relation
  - Individual can be associated as contact at other places
  - Individual can be associated as Legal entity at other places (Places where only legal entity is allowed to be selected)
  - Underlying data of Individual - Asset and Banking can be associated with other places
- If individual is associated as Legal entity at any of the following places, delete is not allowed
  - As `Individual` in `Joint`
  - As `deceased` in Estate
- If Individual is not being referenced anywhere in application, then Individual and its corresponding Contact is also deleted.
- When Individual is associated as contact, System allows to delete it.
  - If Individual is being referenced at other places in application, system deletes its Individual record but keeps related Contact as it is and keep it linked at other places.
  - If Individual is not being referenced anywhere then its corresponding Contact is also deleted.
- When underlying data of Individual is associated only with other data of same Individual, system allows to delete individual.
  - For e.g. Asset of Individual is linked with Insurance of same Individual. In this case system allows to delete it.
- When underlying data of Individual is associated with other legal entities data, system doesn't allows to delete individual.
  - For e.g. Asset of Individual is linked with Insurance of other legal entity. In this case system doesn't allows to delete it.
- If entity has any of the tasks (Open, deleted or Completed), system doesn't allows to delete entity.

### UI Requirement

- When Individual is not linked anywhere it shows normal Delete confirmation dialog
- If Individual is linked as only contact, it shows all the relations in dialog and allows to delete
- If Individual is associated as Legal entity or its underlying data like asset or Banking is linked at other legal entities data, it shows delete not possible dialog with all the relations.
- If Individual has any task then shows delete not possible dialog with proper message. 
  - Message text: `This entity is linked to some of the tasks, so it can't be deleted. You need to update those tasks and remove this entity before you can delete it.`

## Legal entities other than Individual

- When any legal entity other than Individual is deleted, its behaviour is same

- When any legal entity is deleted, 

  - If it's not linked anywhere, the system will delete that legal entity and its corresponding company.

  - If it's linked anywhere as a company for e.g. as a Company in any Contact then the system allows to delete that legal entity. Its legal entity record will be deleted but its corresponding company record will remain linked at those places

  - If it's linked anywhere as a Legal entity for e.g as Owner in Partnership or as Beneficiary in Trust, then the system doesn’t allow deletion. Here we can not do same as above to keep it linked as Company because here only legal entity is allowed to be selected

    > - When partnership is associated  as owner in other Partnership or beneficiary in Trust, it can’t be deleted
    > - When Trusts is is associated as owner in any Partnership, it can’t be deleted
    > - When Estate is associated as beneficiary in Trust, it can't be deleted

- When underlying data of legal entity is associated with other legal entity, doesn't allows to delete it

  > - When any Asset of Foundation is linked with other Individual’s Insurance. In this case the foundation can not be deleted.

### UI Requirement

- When legal entity is not associated anywhere it shows normal Delete confirmation dialog
- If legal entity is linked as only contact, it shows all the relations in dialog and  allows to delete
- If legal entity is linked as Legal entity or its underlying data like asset or Banking is linked at other legal entities data, it shows delete not possible dialog with all the relations.