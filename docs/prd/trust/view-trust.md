# View Trust

### UX Rule

- Shows 4 tabs: CURRENT, HISTORY, EMAIL, PARTNERS
  - CURRENT tab shows latest version of trust (In case of amendments are available)
  - HISTORY tab shows all the amendments
  - EMAIL & PARTNERS tab are common (Same as all other legal entities)
- CURRENT tab
  - Shows all amendments under Amendment section
  - Shows `Gift Summary` section for `CRUT`, `CLAT`, `CRAT`, `GRAT` & `QPRT` type trust.
  - Column under `Annual Annuity Payment` for `CRUT`, `CLAT`, `CRAT` trust: `Year`, `Total Annual Distribution`, `{Selected value in Distribution Frequency} Distribution` & `Notes`
    - If notes is too long, shows it in next line. 
    - Each Beneficiary with percentage are shown in diffrent line.
  - Column under `Annual Annuity Payment` for `GRAT` & `QPRT` trust: `Annuity Date`, `Annuity Payment`, `Payment date` & `Notes`
    - If notes is too long, shows it in next line.
  - Columns under Amendment section: Amendment Number, Amendment Date, Amendment Summary
  - Current tab have one pdf icon, on clicks download pdf file for current trust.
- HISTORY tab
  - It shows all amendments in table
  - When there isn't any amendment available, it shows `No records found` message
  - Columns: Amendment Number, Amendment Date, Amendment Summary
  - Records will be shown in ascending order of date. Oldest record will be shown at top
  - On click of any row it will open view dialog for that amendment
  - Context menu actions: Download PDF, Edit & Delete
  - On the click of `Download PDF`, the PDF file of those records will be downloaded.
  - For `Initial version` record, Delete is not allowed.
- Table of Amendment section and History page
  - Columns: Amendment number, Amendment Date, Amendment Summary
  - Amendment number is shown in pattern `Amendment #1`, `Amendment #2`
  - For Initial version Amendment number column shows static value  `Initial version` always
  - Here numbering is based on only date.
  - Amendment Date shows date of amendment. 


### UI Rule

[Mockups](https://drive.google.com/drive/u/0/folders/1yvi2-zVNBQ4JnsB_12qjgHE3pglOU05d)


## Download PDF

- Allows to download current as well as history of trust.
- Shows pdf icon on the header of Trust header. On click, Downloads PDF in the same browser tab.
- `Contact Information` section will only be shown only when trust has an address. Otherwise, the whole section won't be shown.
- For Historical Trust: Click on `Download PDF` action on vertmore, So the pdf file will be downloaded in the same browser tab.
- For Gift Trust 
  - As per Keith, There is no need to show both `Valuation Amount` and `Valuation Notes` in PDF.
- For all types grantor trust
  - As per Keith, There is no need to show `SSN Number`  in the PDF. 

### PDF File

[Mockup of other types](https://drive.google.com/file/d/1d-IEUJwhqJKVZ_67tXfTqlEeaFHrMjks/view?usp=sharing)

[Mockup of Gift Trust](https://drive.google.com/file/d/1CijvTF7PYDxfItJDLwF9sSsjwNJMp_KX/view?usp=sharing) 

File name of current as well as historical trust will be in this format: `{Trust Name}-trust summary report.pdf`


## Show warning when Beneficiary is changed
### System Rule
- System will not restrict to change beneficiary when Trust is selected as Grouped Entities. [See more details](../legal-entities/portfolio.md#assign-portfolio)
- System will warn users and auto remove such entities from `Grouped Entities` of other entity’s Portfolio. 

### UX Rule
- Shows warning message in orange box when beneficiary is changed in Trust.

### UI Rule
- Trust warning message: `You have changed the beneficiary of this Trust. So the system will auto remove these Entities from all "Grouped Entities" Portfolio`
- [Mockup](https://drive.google.com/file/d/1usokE9wpUoZZKhLLT0H-6TyxnhdAty2L/view?usp=sharing)