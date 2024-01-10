# Legal Entity Select

- It shows the active Individual, Joint, Partnership, Foundation, Estate & Trust.
- Shows entity name in the first line.
- Shows family name and entity type in the secondary information with pipe separated. for e.g. `Brown | Individual`
- For `Family Member`, shows `Family Member` instead of the Entity type. for e.g. `Brown | Family Member`
- Shows household icon for the entity whose Household is set to Yes.
- For Joint & Individual, 
  - Household icon appears for entities having household = Yes. On hover, shows tooltip message. 
  - Shows a household icon in secondary for a Individual who is part of any Joint Household. On hover, shows tooltip message. 
    - For e.g. `Tom & Judi` Joint is a Household. So when I see `Tom` & `Judi`, it shows me a household icon in secondary. 
  - `?` icon appears for Individual/JOint whose Household is blank. (Not Yes or No)
- For Other entity, 
  - ASA icon appears for entities having ASA Entity = Yes. On hover, shows tooltip message. 
  - `?` icon appears for entities whose ASA Entity is blank. (Not Yes or No) On hover, shows tooltip message. 