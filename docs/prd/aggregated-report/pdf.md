# Aggregate report PDF



- Aggregate report PDF file is kind of book because its a bunch of multiple reports of different entities
- PDF has Cover page, Index page, section break page and report pages
  - Cover page: Cover Image, legal entity name, Prited on date
  - Index page: It will have details about all the included reports grouped by its sections
  - Section break page: To specify section change, there will be one page with the name of the section
- When report has only a single entity at the root level (It has reports of other entities at the inner level), Its PDF file will have only one cover page, one index page followed by report pages with section breaks
- When report has more than one entity at the root level, its PDF file will have cover page and index page for each entity followed by reports under each entity. 
- Each report will be started from new page.
- Page numbers are sequencial for each legal entity. It means in case of multiple entities, page number will be reset when new cover page starts.
- Cover page and Index page will not have any page numbers. Section break page will have page number.
- Downloaded file name
  - Format:  `{Report Name}-{legal entity name}.pdf`
  - Here Legal entity name is the name of the legal entity under whose tab this report is created.

### Sample PDF reports

- Report with single entity
- Report with 3 legal entity

