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
Each legal entity has separate information, which are grouped into following sections:

- Contact
- Communication
- Assets
- Banking
- Gifting
- Insurance
- Investments
- Partnerships
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
| Partners | /workspace/{LEGAL_ENTITY_ID}/contact/partners | |
| Clarius Team | /workspace/{LEGAL_ENTITY_ID}/contact/clarius-team | |
| Security | /workspace/{LEGAL_ENTITY_ID}/contact/security | |
| Boards | /workspace/{LEGAL_ENTITY_ID}/contact/board | |


### Communication

| Page | URL | Description |
| --- | --- | --- |
| Communication | /workspace/{LEGAL_ENTITY_ID}/communication | Defaults to `Meetings` tab |
| Meetings | /workspace/{LEGAL_ENTITY_ID}/communication/meetings |  |
| Projects | /workspace/{LEGAL_ENTITY_ID}/communication/projects |  |
| Notes | /workspace/{LEGAL_ENTITY_ID}/communication/notes |  |

### Assets

| Page             | URL                                                          | Description               |
| ---------------- | ------------------------------------------------------------ | ------------------------- |
| Assets           | /workspace/{LEGAL_ENTITY_ID}/assets                          | Defaults to `Current` tab |
| Current Tab      | /workspace/{LEGAL_ENTITY_ID}/assets/current                  |                           |
| Disposed Tab     | /workspace/{LEGAL_ENTITY_ID}/assets/disposed                 |                           |
| Transferred Tab  | /workspace/{LEGAL_ENTITY_ID}/assets/transferred              |                           |
| Asset > Add      | /workspace/{LEGAL_ENTITY_ID}/assets/current#asset-edit?type={Types of Assets} | Add Asset                 |
| Asset > View     | /workspace/{LEGAL_ENTITY_ID}/assets/current#asset-view?a-id={ASSET_ID} | View Asset                |
| Asset > Dispose  | /workspace/{LEGAL_ENTITY_ID}/assets/current#asset-edit?a-id={ASSET_ID}&section=disposed | Dispose Asset             |
| Asset > Delete   | /workspace/{LEGAL_ENTITY_ID}/assets/current?action=delete    | Delete Asset              |
| Asset > Transfer | /workspace/{LEGAL_ENTITY_ID}/assets/current#asset-transfer?a-id={ASSET_ID} | Transfer Asset            |

### Banking
| Page              | URL                                                          | Description              |
| ----------------- | ------------------------------------------------------------ | ------------------------ |
| Banking           | /workspace/{LEGAL_ENTITY_ID}/banking                         | Defaults to `Active` tab |
| Active Tab        | /workspace/{LEGAL_ENTITY_ID}/banking/active                  |                          |
| Disposed Tab      | /workspace/{LEGAL_ENTITY_ID}/banking/disposed                |                          |
| Banking > Add     | /workspace/{LEGAL_ENTITY_ID}/banking/active#banking-edit?type={Types of Banking} |                          |
| Banking > View    | /workspace/{LEGAL_ENTITY_ID}/banking/active#banking-view?b-id={BANKING_ID} |                          |
| Banking > Dispose | /workspace/{LEGAL_ENTITY_ID}/banking/active#banking-edit?b-id={BANKING_ID}&section=disposed |                          |
| Banking > Delete  | /workspace/{LEGAL_ENTITY_ID}/banking/active?action=delete    |                          |

### Estate Plan

| Page                    | URL                                                          | Description            |
| ----------------------- | ------------------------------------------------------------ | ---------------------- |
| Estate Plan             | /workspace/{LEGAL_ENTITY_ID}/estate-plan                     | Defaults to `Will` tab |
| Will                    | /workspace/{LEGAL_ENTITY_ID}/estate-plan/will                |                        |
| Directives              | /workspace/{LEGAL_ENTITY_ID}/estate-plan/directives          |                        |
| History                 | /workspace/{LEGAL_ENTITY_ID}/estate-plan/history             |                        |
| Meetings/Notes          | /workspace/{LEGAL_ENTITY_ID}/estate-plan/meetings-notes      |                        |
| Will > Add              | /workspace/{LEGAL_ENTITY_ID}/estate-plan/will#will-add       | Add Will               |
| Will > Create New       | /workspace/{LEGAL_ENTITY_ID}/estate-plan/will#will-amend?w-id={WILL_ID} | Create New Will        |
| Will > Delete           |                                                              | Delete Will            |
| Directives > Add        | /workspace/{LEGAL_ENTITY_ID}/estate-plan/directives?action=add-directives | Add Directives         |
| Directives > Create New |                                                              | Create New Directives  |
| Directives > Delete     |                                                              | Delete Directives      |

### Gifting

| Page             | URL                                                       | Description             |
| ---------------- | --------------------------------------------------------- | ----------------------- |
| Gifting          | /workspace/{LEGAL_ENTITY_ID}/gifting                      | Defaults to `Given` tab |
| Given            | /workspace/{LEGAL_ENTITY_ID}/gifting?tab=given            |                         |
| Received         | /workspace/{LEGAL_ENTITY_ID}/gifting?tab=received         |                         |
| Lifetime Summary | /workspace/{LEGAL_ENTITY_ID}/gifting?tab=lifetime-summary |                         |
| GST Summary      | /workspace/{LEGAL_ENTITY_ID}/gifting?tab=gst-summary      |                         |

### Insurance
| Page      | URL                                             | Description              |
| --------- | ----------------------------------------------- | ------------------------ |
| Insurance | /workspace/{LEGAL_ENTITY_ID}/insurance          | Defaults to `Active` tab |
| Active    | /workspace/{LEGAL_ENTITY_ID}/insurance/active   |                          |
| Disposed  | /workspace/{LEGAL_ENTITY_ID}/insurance/disposed |                          |

### Investments
| Page            | URL                                                          | Description                   |
| --------------- | ------------------------------------------------------------ | ----------------------------- |
| Investments     | /workspace/{LEGAL_ENTITY_ID}/investments                     | Defaults to `IPS Summary` tab |
| IPS Summary     | /workspace/{LEGAL_ENTITY_ID}/investments/ips-summary         |                               |
| Current         | /workspace/{LEGAL_ENTITY_ID}/investments/ips                 |                               |
| History         | /workspace/{LEGAL_ENTITY_ID}/investments/ips-history         |                               |
| Trade Log       | /workspace/{LEGAL_ENTITY_ID}/investments/trade-logs          |                               |
| Meetings/Notes  | /workspace/{LEGAL_ENTITY_ID}/investments/meetings-notes      |                               |
| Incentive Stock | /workspace/{LEGAL_ENTITY_ID}/investments/incentive-stock     | Default to `Active` tab       |
| Active          | /workspace/{LEGAL_ENTITY_ID}/investments/incentive-stock?subTab=active |                               |
| Disposed        | /workspace/{LEGAL_ENTITY_ID}/investments/incentive-stock?subTab=disposed |                               |

### Partnerships

| Page | URL | Description |
| --- | --- | --- |
| Partnerships | /workspace/{LEGAL_ENTITY_ID}/associated-partnerships | Defaults to `Active` tab |
| Active | /workspace/{LEGAL_ENTITY_ID}/associated-partnerships/active  |  |
| Inactive | /workspace/{LEGAL_ENTITY_ID}/associated-partnerships/terminated  //TODO | Notes for Ravi : Tab name in URL is not changed, currently it shows old tab name. |


### Philanthropy
| Page          | URL                                               | Description                     |
| ------------- | ------------------------------------------------- | ------------------------------- |
| Philanthropy  | /workspace/{LEGAL_ENTITY_ID}/grants               | Defaults to `Organizations` tab |
| Organizations | /workspace/{LEGAL_ENTITY_ID}/grants/organizations |                                 |
| Payments      | /workspace/{LEGAL_ENTITY_ID}/grants/payments      |                                 |
| Contributions | /workspace/{LEGAL_ENTITY_ID}/grants/contributions |                                 |

### Tax
| Page          | URL                                                    | Description              |
| ------------- | ------------------------------------------------------ | ------------------------ |
| Tax           | /workspace/{LEGAL_ENTITY_ID}/tax-returns               | Defaults to `Active` tab |
| Active        | /workspace/{LEGAL_ENTITY_ID}/tax-returns/active        |                          |
| Entity Status | /workspace/{LEGAL_ENTITY_ID}/tax-returns/entity-status |                          |
| Summary       | /workspace/{LEGAL_ENTITY_ID}/tax-returns/summary       |                          |
| Archived      | /workspace/{LEGAL_ENTITY_ID}/tax-returns/archived      |                          |

### Trusts
| Page       | URL                                                       | Description              |
| ---------- | --------------------------------------------------------- | ------------------------ |
| Trusts     | /workspace/{LEGAL_ENTITY_ID}/associated-trusts            | Defaults to `Active` tab |
| Active     | /workspace/{LEGAL_ENTITY_ID}/associated-trusts/active     |                          |
| Terminated | /workspace/{LEGAL_ENTITY_ID}/associated-trusts/terminated |                          |

