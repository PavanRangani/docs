# Contacts system requirements

- User can create, update and delete contacts
- User can delete and replace contacts as well
- Legal entity `Individual` is also considered as special type of contact
- User can archive contacts other than `Individual`
- User can restore archived contacts
- User can change caption for predefined addresses.
  - e.g Home Address > Malibu Home Address

## Validation rules
- Only `firstName` is mandatory while creating or editing a contact
- System manages uniqueness validation per following combination:
  - firstName + middleName + lastName + suffix
- Field validation per its type. //TODO define each field and its type/validation?

## View Contact


## Edit Contact
- User can change any detail of contact (with restrictions to above validation rules)
- User cannot edit multiple contacts

## Archive contact
- User cannot archive `Individual` type contact
- User can archive contact even if it is referrenced somewhere.
- User can archive multiple contacts as wells
  - If selected contacts also have `Individual` type contact within it,
    - it is not archived
    - rest are archived

## Delete Contact
- User cannot delete `Individual` type contact
- If Contact is referenced to any other place,
  - User is presented choice to
    - force delete it
    - Or Replace it with other exiting contact
- User can delete multiple contacts as well and they are presented same option as single contact delete
  - When user chose to replace, all selected contacts are replaced with new contact selected

