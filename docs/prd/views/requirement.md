# Requirement

## Browse views

- Show tabs in the views page. 
- Tabs which have data will be active, all other tabs will be inactive. 
- Currently we will only have data under two tabs -  Philanthropy and Tax. So only those two tabs will be active. Others will be inactive.

### UI Requirement

[Rough mockups](https://docs.google.com/spreadsheets/d/1GK7VRNQm0dqzTyyJTlqGERhm6LZHecQV8KC1YfBPJik/edit#gid=70467045)

- Default tab `Compliance` should be selected
- Inactive tabs will be shown in secondary text colour while active tabs will be shown in primary text colour
- When the user clicks on any inactive tab, it shows the message `Not implemented`

## Browse Philanthropy views

- Shows only one view `Grant Scheduled Payment`
- Its system generated view. So user can not edit or delete it.



## Grant Scheduled Payment Detail page

- Shows all grants payments of all families whose payment status is Pending
- Allows to filter records using date

### UI Requirement

[Mockup](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScZNh7LlMbE11-d08BL3esuM)

- Shows one table 
- Columns
  - Family
  - Legal Entity
  - Organization (Group)
    - Organization name with group name in bracket
  - Project
  - Scheduled date
  - Amount
  - Notes
    - Shows notes in multiple line when required (Never show ellipses)
    - Maximum width 1000 px
- Shows records group by Family. Family are sorted in alphabetical order
- Under each family primary sorting on Legal entity, secondary on Orgnization, third on Project in alphabetical. Fourth level sorting on Scheduled date in ascending order (Lowest date first)
- On click of row opens Grant Payment edit dialog



## Browse Tax views

- All views are shown group by its type
- Shows summary information with each views 

### UI Requirements

[Mockup](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScZr5TN3pomczofj2LuSRxz0)

- For each type of views shows one table
- Shows + button  with each table
- Records in each table are sorted in ascending order of name
- On hover of each record shows hover effect
- Vertmore actions: Edit & Delete
- On click of any record opens detail page of that view

## Create Tax view

- Allows to create view by entering name and selecting type
- Allows to select multiple filter criterias
- Criteria selection is not mandatory. It allows to create view without entering criterias. User can later on select criterias by editing view.

### Filter criterias

- All type of views has some common criterias and some type specific criterias as follows
  - Common
    - My Famillies
      - All associated [families](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScTeFCgb_Wfo7I8Qutw2SexQ) of the login user
    - All Families
      - Allows to select multiple [families](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScRzSo2bFnA6d7B7xRkyqoCY)
      - Shows all families available in application in alphabetical order
      - Allows to search in list
    - Year
      - [Year filter](#year-filter)
    - Form
      - Allows to select multiple [form](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScZPudanlYl6XOHKh7YnsLl4)
      - Shows all forms in fix order : 1040, 1041, 1065, 1120-S, 5227, 706, 709,990PF
  - Tax Filling Status
    - Filing Status
      - Allows to select status from `Pending`, `Filed`, `Extended`.  Allows to select multiple
    - Filing Due Date
      - [Date filter](#date-filter)
    - Expected Filing Date
      - [Date filter](#date-filter)
    - States Filed
      - Allows to select multiple states from all available states
      - Shows all states in alphabetical order
  - Tax Components
    - Section
      - Allows to select multiple Sections from available list
      - Shows all states in alphabetical order
      - Allows to search in list
    - Document
      - Allows to select multiple Document from available list
      - Shows all states in alphabetical order
    - Status
      - Allows to select status from `Pending`, `Received`, `Sent` and `NA Current Year`.  Allows to select multiple
    - Expected Date
      - [Date filter](#date-filter)
    - Expected from
      - [Contact Filter](#contact-filter)
    - Received Date
      - [Date filter](#date-filter)
    - Sent to
      - [Contact Filter](#contact-filter)
    - Sent Date
      - [Date filter](#date-filter)
  - Tax Payments
    - Paid by
      - Allows to select from `Client`, `Clarius` & `Third Party`. Allows to select multiples
    - Year
      - [Year filter](#year-filter)
    - Due Date
      - Allows to select date from `Jan 15` , `Mar 15` , `Apr 15` , `May 15` , `Jun 15` , `Sep 15` , `Dec 15`. Do not allow to select multiple.
    - Status
      - Allows to select from `Pending`, `Info Sent` & `Paid`. Allows to select multiples

#### Date filter

[Mockup](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScXn6hSqwJ1OTWpKTrKl2ZhQ)

- Allows to select from options: Passed, This Week, This Month, Next Week, Next Month, This Quarter, Next Quarter, This Year, [Between](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScRIBA4RfAXhfbqV8leLsGzs), [Before](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScUp5pgRnRNeal1JQ_0E6GJk), [After](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScQ0qwtLySkb4dsUz_bBseaY)
- When Between is selected, It allows to enter two date. Shows records between this two dates
- When Before is selected, It allows to select single date. Shows records before given date
- When After is selected, It allows to select single date. Shows records after given date

#### Year Filter

[Mockup](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScXHQsyjKIzD0rUlRe1zIB-4)

- Shows 3 relative options: `Last Year`, `Current Year`, `Next Year`
- Shows 10 absolute values of last 10 years
- Allows to select either from Relative option or from Absolute option

#### Contact filter

- Shows all contacts in alphabetical order
- Allows to select multiple contacts
- Allows to search in list

#### UI Requirement  

- When filter criteria is selected, it will be shown differently in add/edit dialog.

  - `Is` will appear if a single filter is selected in a filter, and `In` will appear if multiple filters are selected.

    - For ex.  When All Families filter is applied, if single family is selected it will be shown as : `Family is: ` , when multiple families are selected it will be shown as : `Family in:`

  - When `Paid by` , `Sent to` , `Expected from ` filter is selected , name of the filter will appears in the add/edit dialog.

  - When `Date Filter` is selected

    - When Date filter `Passed, This Week, This Month, Next Week, Next Month, This Quarter, Next Quarter, This Year` is selected, it will be shown as : `{Filter name}:` in add/edit dialog.
    - When Date Filter `Between`  is selected, it will be shown as : `{Name of Filter} Between:` in add/edit dialog.
      - For ex. if user select `Between` in `Filing Due Date` filter, it will be shown as: `Filing Due Date Between` in add/edit dialog.
    - When Date Filter `Before`  is selected, it will be shown as : `{Name of Filter} is Before of:` in add/edit dialog.
    - When Date Filter `After`  is selected, it will be shown as : `{Name of Filter} is After:` in add/edit dialog.


## Edit tax view

- For User defined view
  - Name and filter criterias can be changed
  - Doesn't allow to change type
- For system generated view, edit is not allowed

### UI Requirements

[Mockup](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScRhDxN2LKZHd_CHFJmUbom8)

## Delete tax view

- User defined view can be deleted.
- System generated view can not be deleted.

## Tax Filing view detail page

- Shows summary of all tax returns of this view in terms of its status
- Shows details in three group - Pending, Extended & Filed
- When any particular group has not data, shows proper message

### UI Requirement

Mockup // TO DO

- Shows 3 tables. One for each type of status -  Pending, Extended & Filed

- Shows one table for each status. one row represents one tax return
  - Columns
    - Legal Entity
    - Year
    - Form
    - Filing Due Date
      - Only Federal `Filing Due Date` will be shown here.
        - For eg. Suppose one of the tax-return has 1 federal and 1 state return. Federal and state returns are filed on two different dates. but `Filing Due Date` will only contain the date of  `Federal` return.   
    - Expected Filing Date
      - Only Federal `Expected Filing Date` will be shown here.
    - Filed Date
      - Only Federal `Filed Date` will be shown here.
    - Components
      - P
        - Shows count of components whose status is Pending
      - R
        - Shows count of components whose status is Received
      - S
        - Shows count of components whose status is Sent
    - Records are shown group by family. Family names are sorted in alphabetical order
  - Under each family records are sorted in alphabetical order of Legal entity name.

- On click of any row opens view page of that Tax return

## Tax Component view detail page

- Shows components details of each tax return 
- Components can be in 4 state: Pending, Received, NA Current Year, Sent. So this page shows records in this 4 tables

### UI Requirement

[Mockup](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScXn6hSqwJ1OTyoP2-LyEDLw)

- Table columns
  - Name
  - Section
  - Document
  - Expected Date
  - Expected Form
- Under each table shows records group by tax return
  - Tax return name is shown as: `{Family name of tax return}: {Legal entity name of tax return} (Type of Legal entity), Form {form number} for {Tax return year}`
  - First sorting on Family name, second sorting on Legal entity name, third sorting on Year
- Under each group records are sorted in Ascending order of Name

- On Click of any row opens edit dialog of that tax component

## Tax Payment view detail page

- Shows payment details of each tax return
- Shows records in 3 group: Pending, Info Sent and Paid

### UI Requirement

[Mockup](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScTq7zSJkWI_z0VfG9KU3B3g)

- For each group shows one Table
- Column names
  - Legal Entity
  - Year
  - Type
  - Paid by
  - Due Date
  - Info Sent Date
  - Payment Date
  - Amount Paid
  - Notes
- Shows records group by Family name in ascending order of Name
- Under each family records are sorted first on Legal entity name, second on Year, third on Type

- On click of any row, opens edit dialog of Tax payment

## Download PDF

- For each type of views, allows to download its PDF
- PDF file name pattern for user defined view is  `{dash-separated-type-name}-view-report.pdf`
  - for e.g `tax-filing-status-view-report.pdf`, `tax-components-view-report.pdf`, `tax-payments-view-report.pdf`
- For system generated view `Grant scheduled payments`,  PDF file name will be  `scheduled-payments-view-report.pdf`
