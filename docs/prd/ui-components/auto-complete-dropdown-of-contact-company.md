# Auto complete dropdown of Contact/Company

## Contact auto-complete dropdown

### UX Rules

- It shows all active contact and all active individuals of the Current family.
- To differentiate the normal contact and individual contact, we have shown the `Client` word as a secondary information for the individual contact.
- Dropdown will be alphabetical sorted.
- If user enter a new name which is not available in the dropdown then system creates new contact. For this, system show `new` tag.
- If user enter a new name which is not available in the dropdown but it is available in the archived contact list then system show proper error message.
  - For e.g. I have one archived contact of `Ravi`. Now when I create a new contact with same name `Ravi` then system shows me error message.
  - This features is applicable in the following places
    - Legal entity
      - Partners
    - Estate plan
      - Will
        - Estate Attorney
        - First Executer(s)
        - Second Executer(s)
        - Third Executer(s)
        - First Guardian(s)
        - Second Guardian(s)
        - Specific Bequest - Individual
      - Directives
        - First Executer(s)
        - Second Executer(s)
        - Third Executer(s)
        - Authorized Individuals
    - Gifting
      - Recipient
    - Insurance
      - Insurance Agent - Contact
    - Individuals

### UI Rules

- Message when same name available in Archived: `Archived Contact with same name already exists`



## Company auto-complete dropdown

### UX Rule

- It shows all active company and all active client entity (Here, client entity means Partnership, Foundation, Trust, Estate) of the whole family.
- To differentiate the normal contact and client entity, we have shown the `Client Entity` word as a secondary information for the client entity.
- Dropdown will be alphabetical sorted.
- If user enter a new name which is not available in the dropdown then system creates new company with appropriate types. For this, system show `new` tag.
- If user enter a new name which is not available in the dropdown but it is available in the archived company list then system show proper error message.
  - For e.g. I have one archived non-profit type company of `Dreamworld`. Now when I create a new company with same name `Dreamworld` then system shows me error message.

### UI Rules

- Message when same name available in Archived: `Archived {Types of the company} Company with same name already exists`