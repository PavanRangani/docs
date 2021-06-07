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

- In both tabs, Provides a way to filter records using year
- By default shows current year in `From Year` and `To Year` field
- `From Year` and `To Year` field always shows current year and all the distinct years from available records
- `To Year` field always shows years which are higher than the year selected in `From Year` field

### UI Requirements

- If the given filter area records is not available then shows this message. [See this mockups](https://drive.google.com/file/d/1gw4eNK0YFitm71nlMX8iwbWe35mKv1vH/view)

