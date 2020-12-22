# Client/Client entities associated with Contact/Company

## System Requirement

- Show Legal entity name where this contact/company is added in Partners tab.
- If a contact/company has been added to the partners tab more than 2 times, here it will be shown only one time.
- Deceased Individuals or Terminate legal entities are not shown.



## UI Requirement

[Mockup](https://drive.google.com/file/d/1q1jTXSoTm1ZiPoaUORzEw3WPb1gnSixD/view?usp=sharing)

- Add new section `Clients` in the view dialog of contact/company.
- Column :  `Family` , `Entity`
- If there is no records in the `Client`, show this `No Clients Available` message.
- Primary sorting on family.
- Under each family shows data in the following order. 
  - Individual
  - Foundation
  - Partnership
  - Trust
  - Estate
- Each Legal entity should be a hyperlink. On its click, it opens the partners tab of that legal entity.

