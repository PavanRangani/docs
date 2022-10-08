# Open/All Components reports

- Open Components means that component whose status is Pedning & Received.
- This report can be downloaded for associated entities or any single entity. 
- No UI is provided for this report. It can be directly downloaded as PDF or Excel. 
- Show proper message when no records available in the whole PDF report. In such case, Excel won't have any rows. It will have only column names. 
- PDF / Excel Specifications for `Open Components` and `All Components` report
    - Both of the PDF of Open and All component is same. Only `Status` column is appears in the `All Component`.
    - Primary sorting order will be same as [UI](./entity-status.md#ux-rule) and secondary sorting on alphabetical order of component name.
    - Column name 
        - Component Name
        - Status
            - Applicable only for `All Components` report.
        - Responsible
        - Notes
    - Downloaded file name: 
        - Open Components: `{legal-entity-name(First+Last)}-{selected year}-open-components-report.pdf` or `{legal-entity-name(First+Last)}-{selected year}-open-components-report.xlsx`
        - All Components: `{legal-entity-name(First+Last)}-{selected year}-all-components-report.pdf` or `{legal-entity-name(First+Last)}-{selected year}-all-components-report.xlsx`

- Sample file of PDF ([Open](https://drive.google.com/file/d/1b0b_3-j1kOrK928howaYF3REFAnex43s/view?usp=sharing) & [All](https://drive.google.com/file/d/1EwmJDmqRoE0nL77CoggVfqenXcLhpAcV/view?usp=sharing)) & Excel ([Open](https://docs.google.com/spreadsheets/d/1j5rTbxy33A9PaMJyeQlwIm_acfAGJ2DU5PDf1S7-Pas/edit?usp=sharing) & [All](https://docs.google.com/spreadsheets/d/1pSoa4jH7MScs92zZBAhS1so6HWmuDj7XIJykVpTVCyY/edit?usp=sharing)) for Entity Status tab

- Sample file of PDF ([Open](https://drive.google.com/file/d/1XcDmqiY9OFxU4HEQATHBAaHtxeqSDmed/view?usp=sharing) & [All](https://drive.google.com/file/d/1GzTLasQ9qmpIsfklAEpqmXTHSJCtxjnM/view?usp=sharing)) & Excel ([Open](https://docs.google.com/spreadsheets/d/1YHDxjJ1ktCuEemM8dXdUdKSq7RGPJedVcw7MILAgVmw/edit?usp=sharing) & [All](https://docs.google.com/spreadsheets/d/1GwRKLidSMD1ayTSbR64TRhX84UcT5Uw2tOZfhdo0Wrk/edit?usp=sharing)) for Active tab

- Message for no records available: `No Records Found`.

## Export dropdown
- Shows `EXPORT` button on Entity Status page and Active tab.
- For `Entity Status` tab, On click of button, opens a dropdown with 3 values: `Associated Entity Status`, `Open Components` and `All Components`
- For `Active` tab, On click of button, opens a dropdown with 2 values: `Open Components` and `All Components`
- Text informations are shown with each options to explain the user about purpose of the report.
- On click of any value, it shows `Year` and `Form` filter.
    - `Form` is applicable only when report is downloaded from Active tab.
    - By default, Form will be set to [default](./tax.md#legal-entity-and-form-wise-tax-return-details) status.
    - By default, Year will be set to last year. Shows last 5 years in the dropdown.
    - It shows 2 buttons of `EXPORT PDF` & `EXPORT EXCEL` for export. On click of any button, PDF or Excel file will be download on same page and dropdown will be closed.

### UI notes

[Mockups](https://drive.google.com/drive/u/0/folders/1djWxTeZd7ON7rx9A2310JxVXAnKmhb1v)

- Text of report details with each values: 
    - Entity Status tab
        - Associated Entity Status: `Summary of Associated entities' tax retunr`
        - Open Components: `Details of all open components by related entities`
        - All Components: `Details of all components by related entity`.
    - Active tab
        - Open Components: `Details of all open components by this entities`
        - All Components: `Details of all components by this entity`.