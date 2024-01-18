# Export as Excel/PDF

## Export PDF

### System Rule
- Export functionality isn't available, when the list page doesn’t have any funding accounts.
- Allows to download PDF file for Browse page for `Given`, `Received`, `Lifetime Summary` & `GST Summary` tabs.
- Section and sorting order is same as the [UI app.](./browse-gift.md#ux-rules)
- Downloaded File name for
  - Given tab : `Gifts Given-{One year}-{Second Year}.pdf`
  - Received tab : `Gifts Received-{One year}-{Second Year}.pdf`
  - Lifetime Summary tab : `Lifetime Gift Tax Exemption Summary Report.pdf`
  - GST Summary tab : `GST Tax Exemption Summary Report.pdf`
- For `Lifetime Summary` and `GST Summary` tab, PDF icon is always appears. 
  - When the current year's records are available in the `Lifetime Summary` and `GST Summary` tabs. On click of PDF icon, download pdf file with current year records.
- PDF icon won't be applicable when any of the tab has no records available.
- Shows Grand total of `FMV`, `Allocation Gift` & `Discount` at last of the PDF.
- Shows total of `Allocation Gift` in bottom of the each entity group.

### UX rule
- PDF icon is not appeared when the list page doesn't have any records.
- On click, PDF file will be downloaded in same page.

### UI Rule
- Show pdf icon in the header.
  - Mockup of [Given tab](https://drive.google.com/file/d/1oeUZo7xwVBahNub_YYAhiqo1ZUlGDogU/view?usp=sharing)
  - Mockup of [Received tab](https://drive.google.com/file/d/1K0bgE0iI3QZtFHuiREPwdQj4KDfxoFoy/view?usp=sharing)
  - Mockup of [Lifetime Summary tab](https://drive.google.com/file/d/1oQklGcKuRrEOydxfGWcUv-24zKNqSVhZ/view?usp=sharing)
  - Mockup of [GST Summary tab](https://drive.google.com/file/d/1apuhNXeL8A0mIS_ius5mZvfhq2wAQCBJ/view?usp=sharing)



## Export as Excel

### System Rule
- Export functionality isn't available, when the list page doesn’t have any gifting.
- User can export `Gift Given` and `Gift Received` both tabs.
- System allows users to export gifting records with filtered or without filtered
- Columns
    - Recipient Name
    - Gift Date
    - Giftor
    - Direct/Indirect
        - When gift is Indirect, shows Indirect word otherwise shows blank cell.
    - Gift Name
    - Gift Mode
    - Estimated/Final?	
        - If gift is Estimated, shows Estimated or gift is Final, shows Final otherwise shows blank cell.
    - Fair Market Value	
        - When a Gift is Estimated, shows the amount in orange color.
    - Charitable Gift	 
    - Retained Interest	Gift	
    - Total Gift Value	
        - When a Gift is Estimated, shows the amount in orange color.
    - Discount	
        - Shows decimal values.
    - Allocation	
    - Allocation Gift Amount	
    - GST Exempt	
        - If gift is GST, shows Yes otherwise show blank cell.
    - Notes
- When any columns has no value, shows that cell as blank.
- Sorting order will be same as the [UI](./browse-gift.md#ux-rules)
- Downloaded Excel file name
    - Given tab : `Gifts Given-{One year}-{Second Year}.xlsx`
    - Received tab : `Gifts Received-{One year}-{Second Year}.xlsx`
    - Lifetime Summary tab : `Lifetime Gift Tax Exemption Summary Report.xlsx`
    - GST Summary tab : `GST Tax Exemption Summary Report.xlsx`
- Shows values of applied Filter Criterias as a table in Excel as per following logic
    - Generated On
        - Shows date when the excel file is downloaded.
    - From Year & To Year 
        - Shows Years
    - Gift Type
        - Shows Gift type. 
- Shows other details in the filter criterias.
    - Entity Name
    - Total Fair Market Value
    - Total Gift Tax Value
    - Total Discount

### UX rule
- Excel icon is not appeared when the list page doesn't have any gifting records.
- On click, excel file will be downloaded in same page.

### UI Rule
Sample file of [Excel](https://docs.google.com/spreadsheets/d/1mvH0EenibN3GXaZrII32v5wC2dxtG7tL/edit?usp=sharing&ouid=108870014519956519924&rtpof=true&sd=true)