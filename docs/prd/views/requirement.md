# Requirement

## Create view

- Allows to create view by entering name and selecting type
- Criteria selection is not mandatory. It allows to create view without entering criterias. User can later on select criterias by editing view.
- 

## Edit view

- For User defined view
  - Name and filter criterias can be changed
  - Doesn't allow to change type
- For system generated view, edit is not allowed

## Delete view

- User defined view can be deleted.
- System generated view can not be deleted.

## Browse all views

- System generated view is shown in separate group
- All user defined views are shown group by its type
- Shows summary information with each views 

### UI Requirements

- For each type of views shows one table
- For user defined view, shows + button 
- Records in each table are sorted in ascending order of name
- On hover of each record shows hover effect
- Vertmore actions: Edit & Delete
- On click of any record opens detail page of that view

## View detail page



## Download PDF

- For each view, allows to download its PDF
- PDF file name pattern for user defined view is  `{dash-separated-type-name}-view-report.pdf`
  - for e.g `tax-filing-status-view-report.pdf`, `tax-components-view-report.pdf`, `tax-payments-view-report.pdf`
- For system generated view `Grant scheduled payments`,  PDF file name will be  `scheduled-payments-view-report.pdf`

# 