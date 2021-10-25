# Browse, Filter and View

## Browse

- Allows to browse all the gifts for legal entity. Gifts can be either Given or Received.
- For Joints and Individuals entities, Gifts can be Given and Received. So for those entities shows two tabs: GIVEN, RECEIVED
- For Trust, Gifts can be only Received. So for those entities shows only one tab RECEIVED
- For Foundation, Partnership and Estate gifting is not applicable, so `Gifting` tab is not appear.
- Browse page shows total amount of Gifts 

### UI Requirement 

- When there is [no records available](https://drive.google.com/file/d/1PfIMdIhULRm1XCeIZyELfl7KNMlTE-c7/view), show this message in `Given`& `Received` tab.
- In [Given tab](https://drive.google.com/file/d/1BAPUBLstRiZC0GmeQbb5az_Y4fshEJ_e/view), records are shown in Group by of Recipient
- In [Received tab in Individual and Joint](https://drive.google.com/file/d/1rbShyhlD0PKYHXZEWhImg3mzOkRtm23l/view) & [Received tab Trust](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScevpXdHpri-_6uscOmBX9ug), records are shown in Group by of Giftor
- Groups are sorted on name in ascending order
- Records under each group is sorted on ascending order of date (Lowest date is shown first).
- If the valuation report value of any gift is `Estimated`, show the `Total Gift Value` of the gift in orange colour.
- Shows `Indirect` tag with `Indirect` Gift.
  - `Indirect` gift means Gift which are not given directly.  
  - For e.g. If gift is given to Joint, then for the individual of that Joint, its `Indirect` Gift because its not given to individual directly but its given via Joint.
- If the `Given` tab has no record and the `Received` tab has a record. [See this mockups](https://drive.google.com/file/d/1owlcwN8dRABsualWCSmPmDlqLZou3f0j/view)
- If the `Received` tab has no record and the `Given` tab has a record. [See this mockups](https://drive.google.com/file/d/17y4-h1qGydEdgCN-UaIZuSLRCZ7HJr9c/view)



## View Gift

- On click of any row of browse page opens Gift view in dialog.
- When a Gift is `Estimated`, it shows the total of `Gift Tax Value` & `Fair Market Value` in orange colour.

### UI requirements

[Mockup](https://drive.google.com/file/d/1i7trcbBkWXR7C1sH8Vdybqs0MpQCOR6V/view?usp=sharing)

- If Recipient is Trust, Crummey Trust field will appears. [See this](https://drive.google.com/file/d/1kcggivFHKZyiWQdBD-ejGzEINEC4oIBl/view?usp=sharing)



## Filter

- Applicable only for `Given` and `Received` tab.
- In both tabs, Provides a way to filter records using year and Gift Type.
- `From Year` and `To Year` field always shows current year and all the distinct years from available records.
- `Gift Type` field shows type of gifts. Its values are `All`, `Lifetime` & `GST`.
- By default shows current year in `From Year` and `To Year` field and `All` in `Gift Type` field.
- Records are sorted in ascending order of year in the `From Year` and `To Year` fields.
- `To Year` field always shows years which are higher than the year selected in `From Year` field
- When filter is applied, shows `RESET` button. On `RESET`, all filters will be reset to its default value.

### UI Requirements

- If the given filter area records is not available then shows this message. [See this mockups](https://drive.google.com/file/d/1gw4eNK0YFitm71nlMX8iwbWe35mKv1vH/view)



## Export PDF

### UX Rule

- Allows to download PDF file for Browse page for `Given`, `Received`, `Lifetime Summary` & `GST Summary` tabs.
- PDF section and sorting order is same as the UI app.
- Downloaded File name for
  - Given tab : `Gifts Given-{One year}-{Second Year}.pdf`
  - Received tab : `Gifts Received-{One year}-{Second Year}.pdf`
  - Lifetime Summary tab : `Lifetime Gift Tax Exemption Summary Report.pdf`
  - GST Summary tab : `GST Tax Exemption Summary Report.pdf`
- Show proper message in Given and Received tab when no records available in the whole report.
- For `Lifetime Summary` and `GST Summary` tab, PDF icon is always appears. 
  - When the current year's records are available in the `Lifetime Summary` and `GST Summary` tabs. On click of PDF icon, download pdf file with current year records.
- PDF icon won't be applicable when any of the tab has no records available.

### UI Rule

- Show pdf icon in the header.
  - Mockup of Given tab //TODO
  - Mockup of Received tab //TODO
  - Mockup of Lifetime Summary tab //TODO
  - Mockup of GST Summary tab //TODO

- Message for no records available : `No Records Found`.

