# Browse, Filter and View

## Browse

- Allows to browse all the gifts for legal entity. Gifts can be either Given or Received.
- For Joints and Individuals entities, Gifts can be Given and Received. So for those entities shows two tabs: GIVEN, RECEIVED
- For Partnership and Trust, Gifts can be only Received. So for those entities shows only one tab RECEIVED
- For Foundation and Estate gifting is not applicable, so it shows NOT APPLICABLE message.
- Browse page shows total amount of Gifts 

### UI Requirement

Mockup 

- When there is [no records available](https://drive.google.com/file/d/1PfIMdIhULRm1XCeIZyELfl7KNMlTE-c7/view), show this message.
- In [Given tab](https://drive.google.com/file/d/1BAPUBLstRiZC0GmeQbb5az_Y4fshEJ_e/view), records are shown in Group by of Recipient
- In [Received tab](https://drive.google.com/file/d/1rbShyhlD0PKYHXZEWhImg3mzOkRtm23l/view), records are shown in Group by of Giftor
- Groups are sorted on name in ascending order
- Records under each group is sorted on ascending order of date (Lowest date is shown first)
- Shows `Indirect` tag with `Indirect` Gift.
  - `Indirect` gift means Gift which are not given directly.  
  - For e.g. If gift is given to Partnership, then for the owner of that partnership, its `Indirect` Gift because its not given to owner directly but its given via Partnership
- If the `Given` tab has no record and the `Received` tab has a record. [See this mockups](https://drive.google.com/file/d/1owlcwN8dRABsualWCSmPmDlqLZou3f0j/view)
- If the `Received` tab has no record and the `Given` tab has a record. [See this mockups](https://drive.google.com/file/d/17y4-h1qGydEdgCN-UaIZuSLRCZ7HJr9c/view)

## Filter

- In both tabs, Provides a way to filter records using year
- By default shows current year in `from` and `to` field
- `from` and `to` field always shows current year and all the distinct years from available records
- `to` field always shows years which are higher than the year selected in `from` field

### UI Requirements

Mockup 
- If the given filter area records is not available then shows this message. [See this mockups](https://drive.google.com/file/d/1S5EigWIYPgXj0CQz8rv54atBHnb4kfnc/view)

## View Gift

- On click of any row of browse page opens Gift view in dialog.

### UI requirements

Mockups
- [View Page of Gifting](https://drive.google.com/file/d/1Ke7SxUzF5gFzoNGaKqfTcZI9HEUxBub4/view)
 - If `Recipient` is Partnership and Partnership has inner level partners, allocation table shows only amount allocated to that partners. In this case it shows info icon with amount. [See this mockups](https://drive.google.com/file/d/1CdgbOUbHV2yuJwfQQh8D7we0AKfQ0n-A/view)
