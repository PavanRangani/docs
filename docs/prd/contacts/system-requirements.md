# Contacts - System Requirements
- `Contact` represents a real-world Contact/Person. 
- It's used to track information about the contacts to which Athena Clients deal. e.g. If someone is authorized signer  for the Bank Account of one of the Legal entity, then that needs to be exist as `Contact` in the System. And then it could be referenced as "Authorized Signer" for that Bank account. It was just one example, there are many other places where the Contacts are used.
- It's kind of Master entity of the System. (It's not dependent on anyone, but other data references it)
- Legal entity `Individual` is also considered as special type of contact
- Supported actions: Create, Update, Delete, Archive, Replace and Delete.


## Entity Info
- **Addresses**: User can change caption for predefined addresses.
  - e.g Home Address > Malibu Home Address
- Validation rules
  - Only `firstName` is mandatory while creating or editing a contact
  - System manages uniqueness validation per following combination:
    - firstName,middleName,lastName,suffix
    - For e.g. Two contact whose firstname and middlename is given and both are same, then it is not valid
    - For e.g. Two contact whose firstname and middlename is given and both are same but lastname is different, then it is valid

## Edit contact

- Only allowed for Active contact
- For contact of Deceased individual edit is allowed. But Mailing List edit is not allowed.


## Archive contact
- Archived contacts aren't available in the auto-complete. So, the contacts which aren't used anymore but referenced in the older records, could be archived to avoid accidental usage of such contacts.
- `Individual` type contacts can't be archived. But when any individual is marked as deceased, Corresponding contact will be archived auto.


## Delete Contact
- User cannot delete `Individual` type contact
- If Contact is referenced to any other place, it can't be deleted. User is offered 2 choices: `Archive` and `Replace and Delete`.
- On "Replace and Delete", all the references where the current contact is referenced will be updated with the new contact and then this Contact is deleted.
- "Replace and Delete" isn't available when deleting multiple contacts together. (It's decided just to avoid unnecessary UI complexity)

## Restore contact
- Archived contact can be restored anytime without any restriction. Once restored, it will become `active` and will be available in the auto-complete to reference it at other places.
- Restore action for deceased individual will be disabled.

