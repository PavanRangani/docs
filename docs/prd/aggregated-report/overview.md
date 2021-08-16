# Overview



## Entity Details of Aggregate Report

### Report Name

Name of the report.  Its a mandatory field. Name has not uniqueness rule.

### Report Description

Text description of this report. Its a mandatory field.

### Legal Entity

Legal entity under which various reports can be added.



## Entity Details of "App Report"

### Entity Name

Legal entity of the report

### Section Name

- Its an auto-complete dropdown of section. Its a mandatory field.
- List item of Section : `Contact`, `Assets`, `Banking`, `Estate Plan`, `Gifting`,  `Insurance`, `Investments`, `Partnerships`, `Philanthropy`, `Tax`, `Trusts`. Default `Contact` is selected.
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

Details of the filter criteris of the selected report. All report doesn't have criterias. Some reports are without criterias



