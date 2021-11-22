# Auto complete dropdown of Contact/Company

## Contact auto-complete dropdown

### UX Rules

- It shows all active contact and all active individuals of the whole family.
- To differentiate the normal contact and individual contact, we have shown the `Client` word as a secondary information for the individual contact.
- Dropdown will be alphabetical sorted.
- If user enter a new name which is not available in the dropdown then system creates new contact. For this, system show `new` tag in the dropdown field.
  - If user enter a new name which is not available in the dropdown but it is available in the archived then system show proper error message.
  - For e.g. I have one archived contact of `Ravi` in the Athena. Now when I create a new contact with same name `Ravi` then system shows me proper error message.
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
      - 
    - 



### UI Rules

- Message : `Archived Contact with same name already exists`
- 