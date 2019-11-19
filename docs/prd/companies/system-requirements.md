# Companies - System Requirements

- `Companies` represents a real-world Company
- It's used to track information about the company to which Athena Clients deal. e.g. If someone has  Bank Account in bank then that bank needs to be exist as company in the System. It was just one example, there are many other places where the company are used.
- It's kind of Master entity of the System. (It's not dependent on anyone, but other data references it)
- Supported actions: Create, Update, Delete, Archive, Replace and Delete.


## Entity Info

- Validation rules
  - Only `name` is mandatory while creating or editing a Company
  - System performs uniqueness validation for company


## Archive company

- Archived companies aren't available in the auto-complete. So, the company which aren't used anymore but referenced in the older records, could be archived to avoid accidental usage of such company.


## Delete company

- If company is referenced to any other place, it can't be deleted. User is offered 2 choices: `Archive` and `Replace and Delete`.
- On `Replace and Delet`, all the references where the current company is referenced will be updated with the new company and then this company is deleted.
- "Replace and Delete" isn't available when deleting multiple companies together. (It's decided just to avoid unnecessary UI complexity)

## Restore company

Archived company can be restored anytime without any restriction. Once restored, it will become `active` and will be available in the auto-complete to reference it at other places.