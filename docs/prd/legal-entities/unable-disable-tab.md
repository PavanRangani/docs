# Logic for Unable - Disable tab

# Overview

- When user is on any page which has 3-4 subtabs, user can know easily that particular tab has no data in advance before opening it.

- This feature is not available in master data like Contact, Company, Views, Users because those modules will always have some data.

  

## System Rule

- When any of the tab has no records then show it in disable.
- When filter is above the sub tabs, enable/disable logic will be dependent on the filter.
  - For ex. Communication module, we have filters above the sub tabs. So here tab enable/disable logic will be dependent on the filter.
- When filter is below the sub tabs, enable/disable logic will not be dependent on the Year filter. Here tab will be shown enabled when it has data in any year and It will be shown disabled(Greyed out) when it has no data in any year.
  - For ex. Gifting module, Given/Received tab has data in 2020 but no data in 2021. So Given/Received tab will always be shown enabled in any of the time periods.

## UX Rule

- When records is not available then show tab in grey colour.
- Pages on which is in implemented:  
  - Families detail page
    - Current
    - Deceased/Terminate
  - Contact tab for Legal entity
    - Email
    - Partners
    - Clarius Team
    - Boards
    - History (Only for Trust)
  - Assets
    - Current
    - Disposed
    - Transferred
  - Banking
    - Active
    - Disposed
  - Gifting
    - Given
    - Received
  - Insurance
    - List page
      - Active
      - Disposed
    - Insurance view page
      - History
  - Investment
    - IPS Summary
    - Current
    - History
    - Trade Log
    - Meetings/Notes
  - Tax
    - List page
      - Summary
      - Active
      - Archived
    - Tax return detail page
      - Components
  - Browse Trusts 
    - Active
    - Terminated
  - Browse Partnership
    - Active
    - Inactive
  - Philanthropy
    - Organization
    - Payments (Outer Side)
      - Grant
      - Payment (Inner Side)
      - Contribution (Outer Side)Contribution (Inner Side)
  - Estate Plan
    - Will
    - Directives
    - History
    - Meetings/Notes

## UI Rule

Mockup //TODO