# Browse, Filter and View

## Browse

### UX Rules
- Allows to browse all the gifts for legal entity. Gifts can be either Given or Received.
- For Joints and Individuals entities, Gifts can be Given and Received. So for those entities shows two tabs: GIVEN, RECEIVED
- For Joint, shows the gifts of Joint and gifts of both individuals of the Joint
- Shows proper message in both tabs when no gifts available.
- For Trust & Family Member Individual, Gifts can be only Received. So for those entities shows only one tab RECEIVED
- For Foundation, Partnership and Estate gifting is not applicable, so `Gifting` tab is not appear.
- In Given tab, records are shown in the Group by Recipient.
- In Received tab, records are shown in the Group by Giftor.
- Columns are
  - Gift Date
  - Giftor or Recipient
    - `Giftor` is for Given tab
    - `Recipient` is for Received tab
  - Gift Name
    - If it's too long, it appears in the multi line. (Never shows elipsis)
  - Gift Mode
  - FMV
    - If the valuation report value of any gift is `Estimated`, show the `FMV` in orange colour.
  - Charitable Gift / Retained Interest
  - Gift
  - Total Gift Value
    - If the valuation report value of any gift is `Estimated`, show the `Total Gift Value` in orange colour.
  - Disount
    - `Disount` = `(1 - (Gift Tax Value / Fair Market Value)) * 100.00)`
  - Allocation
  - Allocation Gift Amount
  - GST
    - If it's true that means consider this gift is a GST gift.
  - Notes
    - If it's too long, it appears in the multi line. (Never shows elipsis)
- Each groups are sorted on name in ascending order.
  - Records under each group is sorted on ascending order of date (Lowest date is shown first).
  - For Joint, records under each group is primary sorted on ascending order of date and secondary sorted on entity type in order of Individual & Joint. Each Individuals are alphabetical sorted.
- Shows `Indirect` tag with `Indirect` Gift for both tabs.
  - `Indirect` gift means Gift which are not given directly.
  - For e.g. If gift is given to Joint, then for the individual of that Joint, its `Indirect` Gift because its not given to individual directly but its given via Joint.
- Browse page shows total amount of `Gift Tax Value` and Total `Fair Market Value` based on selected year in the Filters. `Discount` is calculated based on the total of `Gift Tax Value` and `Fair Market Value`.

### UI Requirement 

- Message when no gifts available: No Gifts Found //TODO
- Mockup
  - Given tab //TODO
  - Received tab in Individual and Joint & Received tab Trust //TODO


## View Gift

- On click of any row of browse page opens Gift view in dialog.
- For `Private Stock`, `Digital Currency` & `Investment Fund | Limited Partnership` gift mode, shows `Discount` column in the lot details section.
  - Its a calculated and percentage column. `Discount`= `(1 - (Gift tax value / FMV) ) * 100`
- For `Investment Fund`, shows `Asset Manager` & `Investment Fund Name` by pipeline. for e.g. `Vanguard | Dividend Appreciation`
- When a Gift is `Estimated`, it shows the total of `Gift Tax Value` & `Fair Market Value` in orange colour.

### UI requirements

[Mockup](https://drive.google.com/file/d/1i7trcbBkWXR7C1sH8Vdybqs0MpQCOR6V/view?usp=sharing)

[Mockup of Investment fund](https://drive.google.com/file/d/1GSkbDWOxuS8QAK1AHwZEpWsBeKYGB_qO/view?usp=share_link)

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

