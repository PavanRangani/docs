# Browse Clients of Contact/Company

## Overview

- Shows Legal entities where this contact/company is associated in their Partners tab.

## System Rules

- Show Legal entity name where this contact/company is added in Partners tab.
- If a contact/company has been added to the partners tab more than 2 times, here it will be shown only one time.
- Deceased Individuals or Terminate legal entities are not shown.



## UX Requirement

[Mockup](https://drive.google.com/file/d/1q1jTXSoTm1ZiPoaUORzEw3WPb1gnSixD/view?usp=sharing)

- This section is applicable only when it has data.
- Shows `Clarius Clients` section in the view dialog of contact/company.
    - `Clarius Clients` section isn't applicable for `clarius contact`.
    - This section is appliocable for these types of companies `Professional Services`, `Digital Currency` & `Asset Manager`.   
- Column :  `Family`, `Entity`
- Primary sorting on alphabetical order of family name
- Under each family, sorting on entity type in order of - Individual, Foundation, Partnership, Trust, Estate.
- Under each entity type is alphabetically sorted.
- Each Legal entity should be a hyperlink. On its click, it opens the partners tab of that legal entity.

