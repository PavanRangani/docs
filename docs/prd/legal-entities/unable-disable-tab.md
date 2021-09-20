# Logic for Unable - Disable tab

# Overview

- When user is on any page which has 3-4 subtabs, user can know easily that particular tab has no data in advance before opening it.
- This feature is not available in master data like Contact, Company, Views, Users because those modules will always have some data.


## System Rule

- When any of the tab has no records then shows it in disable.
  - We have one exception for this rule in Gifting module. 
    - In Gifting module, we have two subtabs - `Lifetime summary` & `GST Summary`. When there isn't any data in these two tabs, it shows current year record on runtime. This record is not added by any user. Its auto generated record to help user to visualise remaining exemption. So we haven't considered runtime record as a data and thats why tab is not shown enable/disable in such case.
- When filter is above the sub tabs, enable/disable logic will be dependent on the filter.
  - For ex. Communication module, we have filters above the sub tabs. So here tab enable/disable logic will be dependent on the filter.
- When filter is below the sub tabs, enable/disable logic will not be dependent on the Year filter. Here tab will be shown enabled when it has data in any year and It will be shown disabled(Greyed out) when it has no data in any year.
  - For ex. Gifting module, Given/Received tab has data in 2020 but no data in 2021. So Given/Received tab will always be shown enabled in any of the time periods.

## UX Rule

- When records is not available then show tab in grey colour.

- Workspace page is for any particular legal entity and this page has some top level tabs for modules like Communication, Assets, Banking, Gifting etc. Under each top level tabs there are some subtabs. Top level tabs is enabled or disabled based on the data in its subtabs. For e.g. when all subtabs are disable, top level tab will also be disabled.

  - There is one exception in logic of top level tab Gifting. In Gifting there are four subtabs : Given, Received, Lifetime Summary, GST Summary. Top level tab Gifting enable/disable logic only considers Given & Received subtab. It doesn't consider Lifetime Summary & GST Summary due to some technical complexity involved in its management. (In Lifetime Summary and GST summary tab, when user create or delete any old year record, system needs to auto manage many records between lowest to current year and at that time it is hard and performance problematic to manage Gifting tab enable/disable logic)

- Pages on which is in implemented:  
  - Families detail page
    - Current
    - Deceased/Terminate
  - Contact tab for Legal entity
    - Email
    - Partners
    - Clarius Team
    - Boards
    - Reporting (Only for Individual, Joint)
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
    - Lifetime Summary
    - GST Summary
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
    - Incentive Stock
      - Active
      - Disposed
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
      - Notes
    - Contribution (Outer Side)
      - Contribution (Inner Side)
      - Notes
  - Estate Plan
    - Will
    - Directives
    - History
    - Meetings/Notes
  
  ## UI Rule
  
  Mockup //TODO
