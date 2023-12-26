# Browse all Asset Manager Companies

## UX Rules
- Shows header of the `Research` page in forest green colour.
- Shows one field `Company` from the header.
    - It is a dropdown of the Asset Manager type company. It's alphabetically sorted by Name.
    - Shows the `Search Company` placeholder when the dropdown is open.
    - When the user selects any Asset Manager, system will open the Company details page of the selected Asset Manager.
- Shows Asset Manager type companies in 2 tabs: `Active` & `Archived`
    - `Active` asset manager is shown in the Active tab.
    - `Archived` asset manager is shown in the Archived tab.
- Shows the count of companies with each tab.
- Shows one field `Funds` where the user can select the Funds.
    - This field is applicable for both tabs.
    - It is a dropdown of all funds and alphabetically sorted on Name. For e.g. `{Asset Mamager} | {Fund Name}`.
    - Shows Fund type as metadata.
    - When the user selects any Fund, the system will open the details page of the selected fund.
- When no record is under any tab, show the proper message.
- Active tab has one `+` button where users can add a new Asset Manager type company.
- Columns 
    - Name
    - Website
    - Phone
- Sorting order: Records are sorted in alphabetical order of Name.
- On hover of records, shows hover effect and vertmore action menu on the right side.
    - Vertmore actions: `Edit`, `Archive`, `Restore` & `Delete`
        - Archive action applies only to Active Asset Manager and Restore action only applies to Archived Asset Manager.
    - Delete - [See more details](../contact-company/company-requirements.md#delete-company)
    - Archive - [See more details](../contact-company/company-requirements.md#archive--restore-company)
- On click of record, opens the company details on the same page.

## UI Rule
- Placeholder message when no records available: `No Records Found`
- [List page mockup](https://drive.google.com/file/d/1YoWROCrPRPM4GwvKVdCK-M6eizkz9fPq/view?usp=sharing)
- [List page with vertmore action](https://drive.google.com/file/d/1h0Juptk_EJ1wsNrCetRH3JHOUsPhPWd8/view?usp=sharing)

