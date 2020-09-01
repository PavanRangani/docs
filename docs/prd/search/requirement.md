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

- Search includes only Contact & Company

- Matching is done on both type -  Active and Archived Contacts or Companies 

- For contact and company, matching is done on its Name, Phone number and Address

  - Company has Name, Short name, one Address and one Phone number
  - Contact has Name, Nick name, 4 phone numbers (Mobile, Home, Work, Other) and 4 Address (Work address, Home address and two Additional address). Matching is done on all this fields

- Matching is also done on partial word
  
- For e.g. When I search with query `jay` , it should show me result with name `Ajay` & `Jay`
  
- Based on the search query, matching will be performed

  - When query is alphabetic or alphanumeric, matching is done on this priority: Name, Address & Phone number in sequence

    > Search result is matched with two Contacts. For one Contact name is matched and for the second contact address is matched. So contact with matching name is shown above Contact with matching address

  - When query is only number or number with dash, then matching is done of this priority: Phone number, Zip code & any other fields. 

  - There won't be any difference in search result in case when user uses dash or do not use dash.

- Search result shows maximum 10 records.

## UI Requirement

- Search can be performed through home page and header

- Shows X button to clear search query. on click of X reset the query and close the dropdown if its open.
- When search dropdown is open, On outside click it will be closed.
- Search result is available and dropdown is closed by user. Now when user again put focus on search field with same old query, previous result is shown in dropdown.

### Search result

- For each result shows one list item

#### List item

- Icon for entity type (Contact or Company)
- Shows tag like `Matched on Name`, `Matched on Phone number`, `Matched or Address` as secondary information in list item. In case of multiple matching tag shows `Matched on Name,Phone number & Address`
- When matching is done on Name or Nick name (for contact) or Short name (for company), it will show `Matched on Name` tag
- Shows tag for Archived/Deceased at right side. 
  - When contact is Archived, it shows Archived as tag. When Individual is deceased it shows Deceased as tag.
- On click of any record opens the view page/dialog of that entity. 
  - On click of normal Contact (Not individual) or Company, opens dialog on the same screen. 
  - On click of Individual type Contact, opens the workspace page.

#### Keyboard navigation

- In search result, focus will be always on first result
- User can move focus up and down using up and down arrow. 
  - When focus is at last result and user press down arrow, focus will be moved to first result. Same way when focus is at first result and user press up arrow, focus will be moved to last result.
- On click of Enter key from Keyboard, focused item will be opened

- On Escape, close the search dropdown if its open