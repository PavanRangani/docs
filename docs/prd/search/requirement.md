# Search

## Overview

Clarius team mostly searches for Contacts and Companies.  Also, they want to be able to search for addresses and phone numbers.  

Search only includes Contacts & Companies, phone numbers, and addresses.

## Requirement

- Search is triggered when user type the query. Minimum two characters required to trigger the search.

-  To avoid multiple search queries  while user is typing, Search is triggered after some delay. This delay is configurable so we can change it based on user experience

- Shows loader in search field while data is being loaded. Once data is loaded, result is shown in dropdown

- When result is already available for previous query and user types new query, it shows loader in search field until result is loaded. Once result is loaded it will replace the old result with new result in dropdown.

- It always shows result of new request. To understand see the following scenario

  > While typing the query, two requests are triggered. Result of new request is retrieved before result of old request. in such case result of old request is not shown.

- Search includes only Contact (Individual and Normal both) & Company (Client entities and Normal both) & Family Member Individual

- Matching is done on both type -  Active and Archived Contacts or Companies 

- For contact and company, matching is done on its Name, Phone number and Address

  - Company has Name, Short name, one Address and one Phone number
  - For `Asset manager` type company, matching is done on Asset manager name and Fund name.
  - Contact has Name, Nick name only for contact, [Display name](../legal-entities/display-name.md) only for individual and joint, 4 phone numbers (Mobile, Home, Work, Other) and 4 Address (Work address, Home address and two Additional address). Matching is done on all this fields

- Matching is also done on partial word

  > I have a two contact with name `Jay` and `Ajay`. Now when I search with query `jay` , it should show me result with name `Ajay` & `Jay`

- Based on the search query, matching will be performed

  - When query is alphabetic or alphanumeric, matching is done on this priority: Name, Address & Phone number in sequence

    > Search result is matched with two records. For one record name is matched and for the second record address is matched. So record with matching name is shown above record with matching address

  - When query is only number or number with dash, then matching is done of this priority: Phone number, Zip code & any other fields. 

  - There won't be any difference in search result in case when user uses dash or do not use dash.

- Matching is also done on each separate word (not character) of the query

  > There is a contact/Individual with name `Tom Austin Alberg` and `Tom Cruise`. Now when I search with `Tom Alberg` it should show me `Tom Austin Alberg` and `Tom Cruise` in matching result.

- Search result shows maximum 10 records.

## UI Requirement

- Search can be performed through home page and header
- Shows X button to clear search query. on click of X reset the query and close the dropdown if its open.
- When search dropdown is open, On outside click it will be closed.
- Search result is available and dropdown is closed by user. Now when user again put focus on search field with same old query, previous result is shown in dropdown.

### Search result

- Search result is shown in the group of Individual (Clients), Family Member, Client entities, Normal contact & Normal companies in same sequence. It means all individual will be shown at top, followed by Family member, followed by client entities, followed by normal contact and followed by companies.
- Under each group records will be sorted in priority order as follows
  - When query is alphabetic or alphanumeric, matching is done on this priority: Name, Address & Phone number in sequence
  - When query is only number or number with dash, then matching is done of this priority: Phone number, Zip code & any other fields. 
  - Archived or Deceased records are shown at bottom.
- For each result shows one list item
- For Joint & Individual, 
  - Household icon appears for entities having household = Yes. [See this](https://drive.google.com/file/d/1YIcUbC_HIxMEpvf9et5G2-p4zgthNsCm/view?usp=sharing)
  - Shows a household icon in secondary for a Individual who is part of any Joint Household.
  - `?` icon appears for Individual/JOint whose Household is blank. (Not Yes or No) [See this](https://drive.google.com/file/d/1S75gHHqnSV89Nh4-a0MLEneoBPZUFHhI/view?usp=sharing)
- For Other entity, 
  - ASA icon appears for entities having ASA Entity = Yes. [See this](https://drive.google.com/file/d/1QT2WqEwo_in-e7q_1iZflnSrxfABov5g/view?usp=sharing)
  - `?` icon appears for entities whose ASA Entity is blank. (Not Yes or No) [See this](https://drive.google.com/file/d/1I27bw13_i4Ujj1pjppVA3xi1kY7eMOhL/view?usp=sharing)

#### List item

- Icon for entity type (Contact or Company). For individual type and client entity, shows icon in orange colour.
- Shows tag like `Matched on Name`, `Matched on Display Name`,  `Matched on Phone number`, `Matched or Address` as secondary information in list item. In case of multiple matching tag shows `Matched on Name,Phone number & Address`.
- When matching is done on Name or Nick name (for contact) or Short name (for company), it will show `Matched on Name` tag
- Shows tag for `Family Member` individual.
  - When Individual is deceased, shows both tag in order of- Family Meber & Deceased.
- Shows tag for Archived/Deceased/Terminated at right side. 
  - When contact is Archived, it shows `Archived` as tag. When Individual is deceased it shows `Deceased` as tag. When any legal entity is terminated its shows `Terminated` tag
- On click of any record opens the view page/dialog of that entity. 
  - On click of normal Contact (Not individual) or Company, opens dialog on the same screen. 
  - On click of Individual type Contact, opens the workspace page.
- When search query is matching on Asset manager, it shows `Matched on Name`.
- But when search query doesn't match on Asset manager name and only match on Fund name, then also it shows `Matched on Name`. (Please note it doesn't show `Matched on Fund name`)

#### Keyboard navigation

- In search result, focus will be always on first result
- User can move focus up and down using up and down arrow. 
  - When focus is at last result and user press down arrow, focus will be moved to first result. Same way when focus is at first result and user press up arrow, focus will be moved to last result.
- On click of Enter key from Keyboard, focused item will be opened

- On Escape, close the search dropdown if its open