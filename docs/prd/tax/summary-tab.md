# Summary tab 

## UX Rule

- This tab is applicable only for Individual, JOint, Estate & Trust type legal entity.
- It shows the summary information of the form 1040 and 1041. For other form of these entities, this tab won't be shown any details.
- Shows the overview detail of last five years tax returns regardless of its status. For ex. If current year is `2021` then summary tab will show last five year like `2020, 2019, 2018, 2017, 2016`.
    - Suppose the Current year is `2021` and individual doesn't have tax return of `2016` but it has `2015` tax return. Si the summmary tab will show last five year like `2020, 2019, 2018, 2017, 2015`.
    - Suppose the individual has only last 4 year tax return available, summary tab will shows only last 4 year tax return.
- For form `1040`, shows some additinal details with that year.
  - Federal Tax Summary
    - This section are applicable for both form `1040` & `1041`.
    - It shows the summary information of the tax return.
  - State Returns Filed
    - It shows the names of the states added to the tax returns of the last five years.
    - Shows a check-mark icon if a return was filed for a given year otherwise shows `-`.
  - Charitable Contribution Summary
    - All values are pulled from the philanthropy.
    - Direct
      - Shows total paid amount of the grants given to the non-profits.
      - Shows a round-off value.
    - Donor Advised Fund
      - Shows total contribution amount of the Contributions given to the DAF type foundation.
      - Shows a round-off value.
    - Private Foundations
      - Shows total contribution amount of the Contributions given to private foundations other than DAF.
      - Shows a round-off value.
    - Split-Interest Trust
      - Shows total amount of Total Charitable Gift via split interest trust for particular year
      - Shows a round-off value.
    - Total Basis
      - Shows total basis of the philanthropy for particular year
      - Shows a round-off value.
    - Total Tax Deductible
      - Shows total tax deductible amount of the philanthropy for particular year
      - Shows a round-off value.
    - Donation Multiple
      - Its a calculated field. Shows only one decimal point.
      - Formula: `(Total Tax Deductible Amount / Total Basis)`
  - Gifting Summary
    - All values are pulled from the Gifting.
    - Total Gift Tax Value
      - Shows the Total GTV of gifts given by this entity. Shows a round-off value.
      - Shows `-` if no values available 
    - Total Fair Market Value
      - Shows the Total FMV of gifts given by this entity. Shows a round-off value.
      - Shows `-` if no values available
    - Total Discount
      - Its a calculated field. Shows only one decimal point.
      - Formula: `(1 - (GTV / FMV) ) * 100`
- Summary data is also reset on the payment disable.
- Summary section have one pdf icon, on clicks download pdf.
- For Joint entity, Summary tab shows separate table for Joint and each individuals. If no record available for any entity, that table won't be shown.
  - Joint table is always shown first and then both individuals are alphabetical sorted.

## UI Requirement

Mockup of [Joint/Individual Summary tab](https://drive.google.com/file/d/1MtX6HPS5VoUfKGsCXLRnOeP_yXNHkD-c/view?usp=share_link)

Mockup of [Estate Summary tab](https://drive.google.com/file/d/1yrMXgUpeOwtXtDGmVRwo11lRvHaQbl9W/view?usp=share_link)



## Download PDF

- Allows to download Tax Summary report from the Summary tab. Shows PDF icon on the header. On click, Downloads PDF in same browser tab
- Each table have its own pdf icon.
- Tax summary PDF file name will be in format: `tax-summary-report-{Legal entity name}-{Tax return form}.pdf`

### UI Rule

- [Mockup of Tax Summary PDF](https://drive.google.com/file/d/1117ZsxUlW39y7o6HJuTWBp-J-U6BeD6t/view?usp=share_link)

