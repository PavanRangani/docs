# Browse, Filter and View

## Browse

- Allows to browse all the gifts for legal entity. Gifts can be either Given or Received.
- For Joints and Individuals entities, Gifts can be Given and Received. So for those entities shows two tabs: GIVEN, RECEIVED
- For Partnership and Trust, Gifts can be only Received. So for those entities shows only one tab RECEIVED
- For Foundation and Estate gifting is not applicable, so it shows NOT APPLICABLE message.
- Browse page shows total amount of Gifts 

### UI Requirement

[Mockup of Given Tab](https://drive.google.com/file/d/1BAPUBLstRiZC0GmeQbb5az_Y4fshEJ_e/view)
 Mockup of Received Tab // TODO

- In Given tab, records are shown in Group by of Recipient
- In Received tab, records are shown in Group by of Giftor
- Groups are sorted on name in ascending order
- Records under each group is sorted on ascending order of date (Lowest date is shown first)
- Shows `Indirect` tag with `Indirect` Gift.
  - `Indirect` gift means Gift which are not given directly.  
  - For e.g. If gift is given to Partnership, then for the owner of that partnership, its `Indirect` Gift because its not given to owner directly but its given via Partnership

## Filter

- In both tabs, Provides a way to filter records using year
- By default shows current year in `from` and `to` field
- `from` and `to` field always shows current year and all the distinct years from available records
- `to` field always shows years which are higher than the year selected in `from` field

### UI Requirements

Mockup // TODO

## View Gift

- On click of any row of browse page opens Gift view in dialog

### UI requirements

Mockups
