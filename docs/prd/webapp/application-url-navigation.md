# Web App URL navigation

## General
- Each module will have own path URL
- All legal entities will be accessible within `workspace` URL
- Dialogs will be shown using `#` hash with unique name to each dialog
- Action dialogs are shown using query parameters
- Page can provide its own deep linking facility.
  - eg. if page has tabs or filter, it can decide its sub-context using path or query parameters.
- When page is changed, it should destroy the page view

## Pages

| Page | URL | Description |
| --- | --- | --- |
| Home | / | Home page |
| Views | /views | Views list page |
| Upcoming Items | /upcoming-items | List of upcoming items |
| Workspace | /workspace | |
| Families/Teams | /families | List of families |
| Contacts | /contacts | List of Contacts |
| Trade logs | /trade-logs | List of trade logs |
| Users | /users | List of application users |
| Companies | /companies | List of Companies |
| Mailing List | /mailing-list | |
| Idea Box | /idea-box | |

## Contacts

| Page | URL | Description |
| --- | --- | --- |
| Contacts | /contacts | List of active contacts |
| Contacts > Archive | /contacts/archived | List of Archived Contacts |
| Contacts > Add | /contacts?action=add | Add Contact |
| Contacts > View Single Contact | /contacts/{CONTACT_ID} | View single Contact |
| Contacts > Edit | /contacts/{CONTACT_ID}?action=edit | Edit Contact |

## Companies

| Page                            | URL                                 | Description                |
| ------------------------------- | ----------------------------------- | -------------------------- |
| Companies                       | /companies                          | List of active companies   |
| Companies > Archive             | /companies/archived                 | List of Archived companies |
| Companies > Add                 | /companies?action=add               | Add company                |
| Companies > View Single Company | /companies/{COMPANY_ID}             | View single company        |
| Companies > Edit                | /companies/{COMPANY_ID}?action=edit | Edit company               |


## 

## Individual family

URL: `/families/{FAMILY_ID}`

## Workspace
All legal entities are accessed from Workspace.

URL pattern: `/workspace/{LEGAL_ENTITY_ID}`

### Workspace sub pages
Each legal entity has separate informations, which are grouped into following sections:

- Contact
- Communication
- Assets
- Banking
- Gifting
- Insurance
- Investments
- Partnetships
- Philanthropy
- Tax
- Trusts

Based on type of Legal entity, sub pages' links should be disabled, so we don't end up with blank page on click.

### Contacts

| Page | URL | Description |
| --- | --- | --- |
| Contacts | /workspace/{LEGAL_ENTITY_ID}/contact | Defaults to `General` tab |
| General details | /workspace/{LEGAL_ENTITY_ID}/contact/general | |
| Email | /workspace/{LEGAL_ENTITY_ID}/contact/email | |


### Communication

| Page | URL | Description |
| --- | --- | --- |
| Communication | /workspace/{LEGAL_ENTITY_ID}/communication | Defaults to `Meetings` tab |
| Meetings | /workspace/{LEGAL_ENTITY_ID}/communication/meetings |  |
| Projects | /workspace/{LEGAL_ENTITY_ID}/communication/projects |  |
| Notes | /workspace/{LEGAL_ENTITY_ID}/communication/notes |  |

### Assets

// TODO

### Banking
// TODO

### Gifting
// TODO

### Insurance
// TODO

### Investments
// TODO

### Partnerships

| Page | URL | Description |
| --- | --- | --- |
| Partnerships | /workspace/{LEGAL_ENTITY_ID}/partnerships | Defaults to `Partners` tab |
| Partners | /workspace/{LEGAL_ENTITY_ID}/communication/partners |  |


### Philantropy
// TODO

### Tax
// TODO

### Trusts
// TODO