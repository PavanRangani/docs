# Overview

When Clarius team has planned meeting with any client, they print out reports from various modules like Tax, Philanthropy, IPS etc to be discuss with client or to provide those reports to client. They need to printout each reports separately from various modules. 

To solve the above problem, we have implemented reporting module. This module help them to select various reports from all modules and combile them in to single dossier report. This aggregated report can be saved for later. So they can download it anytime. System generates single PDF file combining different reports.

In some cases, clients may want to see reports broken out at the entity level (only reports within that section will be related to that entity). For e.g.  Reports for Sunny & Prerna, then reports for Gupta Family Foundation, then reports for each Trust.

In some cases, we may want to group multiple entity reports within a section (ie, a client wants to see all of their tax summaries in one section, not separated by entity). For e.g. Reports of various entities included under `Sunny & Prerna Gupta`.

So, system has flexibility to create reports both ways. 



## Entity Details of Aggregate Report

### Report Name

Name of the report.  Its a mandatory field. Name has not uniqueness rule.

### Report Description

Text description of this report. Its a mandatory field.

### Legal Entity

Legal entity under which various reports can be added.



## Entity Details of "App Report"

### Entity Name

- Legal entity of the report

- 

### Section Name

- Its an auto-complete dropdown of section. Its a mandatory field.
- List item of Section : `Contact`, `Assets`, `Banking`, `Estate Plan`, `Gifting`,  `Insurance`, `Investments`, `Partnerships`, `Philanthropy`, `Tax`, `Trusts`. 
- This dropdown will show only applicable sections based on the selected entity.
  - For e.g. `Estate Plan` is not applicable for Partnership, Estate, Trust and Foundation types legal entities. So when user selects any of the legal entity in above mentioned types, `Estate Plan` section is not available in the section dropdown.
- Disable a section that has no data available.
  - For e.g. Suppose `John Brown` has no record available in the `Asset` tab. So when the user adds a new report for `John Brown`, the `Asset` section will appear disabled.
  - Disable section will appear last in the dropdown.

### Report Name

Any Report of the application

Auto-complete dropdown of report based on selected section. [See this Excel](https://docs.google.com/spreadsheets/d/1T80QIj4HPODOpp7AsgPrV6WTxHc0-k53yi_9useontM/edit#gid=0)

### Report Description

Description of the report

### Report Criterias

Details of the filter criterias of the selected report. All report doesn't have criterias. Some reports are without criterias



