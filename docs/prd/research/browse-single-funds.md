# Browse Single Funds

- Funds will have 5 tabs: `Fund Details`, `Investors`, `Wire Instructions`, `Activity` & `Documents`
- `Investors`, `Wire Instructions`, `Activity` tabs is not applicable for the `ETF` & `MF` type funds.
- Shows all tabs except `Fund Details` is disabled when it has no records.

## Fund Details

### UX Rule
- Shows funds details in this tab.
- Shows Asset Manager company name and Fund Name in header. for e.g. `{Asset Manager name} | {Fund Name}`
- Shows `-` when no data available for any field.
- Shows pencil icon to the right side of the header. On click, opens the fund edit dialog.
- For `Strategy` column, 
    - If strategies are too long, it appears in the next line.
    - If strategies are more than one, shows each strategies separated by `,`.

### UI Rule
- Fund Details tab for [ETF](https://drive.google.com/file/d/1PFmIPa1y6H4uWK5JbylmF5P6kSE2ThlP/view?usp=sharing) & [Mutual Fund](https://drive.google.com/file/d/1GygzIpaZMe1c8Dto914A-RmDFlxf65zy/view?usp=sharing) & [Limited Partnership](https://drive.google.com/file/d/1rTb4KsxFVl-0ku5Z82y91donwrHGjS4d/view?usp=sharing)