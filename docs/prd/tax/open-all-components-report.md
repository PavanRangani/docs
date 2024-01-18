# Open / All Components / Tax Return details reports

- Open Components means that component whose status is Pedning & Received.
- Deleted components won't be shown.
- This report can be downloaded for associated entities or any single entity. 
- No UI is provided for this report. It can be directly downloaded as PDF or Excel. 
- Show proper message when no records available in the whole PDF report. In such case, Excel won't have any rows. It will have only column names. 
- PDF / Excel Specifications for `Open Components` and `All Components` report
    - Both of the PDF of Open and All component is same. Only `Status` column is appears in the `All Component`.
    - Primary sorting order will be same as [UI](./entity-status.md#ux-rule) and secondary sorting on alphabetical order of component name.
    - Column name 
        - Name
            - Shows component name
        - Status
            - Pending status is shown in the orange color.
            - Received Status is shown in the blue color.
        - Final
            - When Final checkbox is true, shows `✔` otherwise shows blank.
        - Auto
            - Applicable only for Excel
            - When comooinent is carry forward from the previous year tax return, shows `✔` otherwise shows blank.
        - Document
            - Shows document type
        - Excepted
        - Responsible
        - Received
        - Sent
        - Filed On
            - Applicable only for Excel
            - It shows date when tax return is Filed.
        - Filed By
            - Applicable only for Excel
            - It shows full name of user who Filed tax return.
        - Currnet Notes
        - Permanent Notes
            - For PDF, this notes is shown in the secondary information.
            - For excel, shows this notes in separate column.
    - Sorting order: Records are sorted on alphabetical order of Name.
- PDF specifications for `Tax Return Details` report, 
    - System shows only `Return Summary`, `Federal Payments`, `Federal` return & `Components` details.
    - For `Components`, 
        - Columns of Component section is same as the `Open/All Component`. Only diffrences are
            - Current or Permanents notes is not applicable for `Tax return details` report. 
            - Each component status has its own table. Under each table, records are grouped by section. under each group, records are sorted on alphabetical order of Name.
- Downloaded file name for Entity status tab: 
    - Open Components: `{legal-entity-name(First+Last)}-{selected year}-open-components-report.pdf` or `{legal-entity-name(First+Last)}-{selected year}-open-components-report.xlsx`
    - All Components: `{legal-entity-name(First+Last)}-{selected year}-all-components-report.pdf` or `{legal-entity-name(First+Last)}-{selected year}-all-components-report.xlsx`
- Downloaded file name for Active tax return: 
    - Tax Return detail: `tax-return-report-{Legal entity name}-{Tax return year}({Tax return form}).pdf`
    - Open Components: `{legal-entity-name(First+Last)}-{selected year}-{form name}-open-components-report.pdf` or `{legal-entity-name(First+Last)}-{selected year}-{form name}-open-components-report.xlsx`
    - All Components: `{legal-entity-name(First+Last)}-{selected year}-{form name}-all-components-report.pdf` or `{legal-entity-name(First+Last)}-{selected year}-{form name}-all-components-report.xlsx`

- Sample file of PDF ([Open](https://drive.google.com/file/d/1b0b_3-j1kOrK928howaYF3REFAnex43s/view?usp=sharing) & [All](https://drive.google.com/file/d/1EwmJDmqRoE0nL77CoggVfqenXcLhpAcV/view?usp=sharing)) & Excel ([Open](https://docs.google.com/spreadsheets/d/1j5rTbxy33A9PaMJyeQlwIm_acfAGJ2DU5PDf1S7-Pas/edit?usp=sharing) & [All](https://docs.google.com/spreadsheets/d/1pSoa4jH7MScs92zZBAhS1so6HWmuDj7XIJykVpTVCyY/edit?usp=sharing)) for Entity Status tab

- Sample file of PDF ([Open](https://drive.google.com/file/d/1XcDmqiY9OFxU4HEQATHBAaHtxeqSDmed/view?usp=sharing) & [All](https://drive.google.com/file/d/1GzTLasQ9qmpIsfklAEpqmXTHSJCtxjnM/view?usp=sharing)) & Excel ([Open](https://docs.google.com/spreadsheets/d/1YHDxjJ1ktCuEemM8dXdUdKSq7RGPJedVcw7MILAgVmw/edit?usp=sharing) & [All](https://docs.google.com/spreadsheets/d/1GwRKLidSMD1ayTSbR64TRhX84UcT5Uw2tOZfhdo0Wrk/edit?usp=sharing)) for tax return details

- Message for no records available: `No Records Found`.

## Export dropdown
- Shows `EXPORT` button on Entity Status page and each tax return.
- For `Entity Status` tab, On click of button, opens a dropdown with 3 values: `Associated Entity Status`, `Open Components` and `All Components`
- For each `Tax return`, On click of button, opens a dropdown with 3 values: `Tax Return Detail`, `Open Components` and `All Components`
- Text informations are shown with each options to explain the user about purpose of the report.
- On click of any value from Entity status page, it shows `Year` filter. 
    - Year will be prefilled from the above selected year. 
    - It shows last 5 years in the dropdown.
- It shows 2 buttons of `EXPORT PDF` & `EXPORT EXCEL` for export. On click of any button, PDF or Excel file will be download on same page and dropdown will be closed.
- `Tax Return details` report can't be export as Excel. So here it doesn't show option for PDF or Excel. On click, PDF file will be downloaded directly.

### UI notes

[Mockups](https://drive.google.com/drive/u/0/folders/1djWxTeZd7ON7rx9A2310JxVXAnKmhb1v)

- Text of report details with each values: 
    - Entity Status tab
        - Associated Entity Status: `Summary of Associated entities' tax retunr`
        - Open Components: `Details of all open components by related entities`
        - All Components: `Details of all components by related entity`.
    - Tax Return
        - Tax Return Detail: `All details of this Tax Return`
        - Open Components: `Details of all open components by this entities`
        - All Components: `Details of all components by this entity`.