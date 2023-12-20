# Browse all Asset Manager Companies

## UX Rules
- Shows header of the `Research` page in forest green color.
- Shows one field `Search Company` from the header. 
    - It is a dropdown of the Asset Manager type company. It's an alphabetical sorted on Name.
    - When user selects any Asset Manager, system will open the Company details page of the selected Asset Manager.
- Shows Asset Manager type companies in 2 tabs: `Active` & `Archived`
    - `Active` asset manager is shown in the Active tab.
    - `Archived` asset manager is shown in the Archived tab.
- Shows count of companies with each tabs.
- Shows one field `Funds` where user can select the Funds.
    - It is a dropdown of all funds and its alphabetical sorted on Name. For e.g. `{Asset Mamager} | {Fund Name}`.
    - Shows Fund type as metadata.
    - When user selects any Fund, system will open the details page of the selected fund.
- When there isn't any record under any tab, shows proper message.
- Active tab has one `+` button from where user can add new Asset Manager type company.
- Columns 
    - Name
    - Website
    - Phone
- Sorting order: Records are sorted alphabetical order of Name.
- On hover of records, shows hover effect and vertmore action menu at right side.
    - Vertmore actions: `Edit`, `Archive`, `Restore` & `Delete`
        - Archive action is applicable only for Active Asset Manager and Restore action is applicable only for Archived Asset Manager.
    - Delete - [See more details](../contact-company/company-requirements.md#delete-company)
    - Archive - [See more details](../contact-company/company-requirements.md#archive--restore-company)
- On click of record, opens the company details in same page.

## UI Rule
- Placeholder message when no records available: `No Records Found`
- [List page mockup](https://drive.google.com/file/d/1YoWROCrPRPM4GwvKVdCK-M6eizkz9fPq/view?usp=sharing)
- [List page with vertmore action](https://drive.google.com/file/d/1h0Juptk_EJ1wsNrCetRH3JHOUsPhPWd8/view?usp=sharing)

