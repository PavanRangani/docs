# Tax return reminder Mail

## System Rule

- When new financial year start (on 1st January of each year), system send reminder mail to all admin user to create Tax returns for new year.
- When admin clicks button in email, system creates a tax return of new year for all legal entities which has tax return available for last year.
  - For example : On `1st Jan 2021`, system send mail to all admin users to create a Tax returns for 2021. When user click on the button in the mail, system creates a tax return of year 2021 for all legal entities which has tax return available for 2020 year. 

## UX Rule

- On clicking the `Create Tax returns` button in the mail, the system will redirect the user to the Athena page. 
- The `In progress` page will be displayed as long as the system generates tax returns for all legal entities. Once it is completed then the page of `Completed` will show. If any of these errors occur, the system will show a `Failed` page.
- Show`Create Tax Return for {Current year}` in the header of all these pages. 
  - for ex. Shows `Create Tax Returns for 2021` for the 2021 year.

## UI Rule

- Mockup of [Email Template](https://xd.adobe.com/view/c0a0f76b-ea42-482a-85c7-ec84a17ee227-95f3/screen/6fdfcdf9-cdd8-475a-808b-ac67b2b94ed5/) 
- Mockup of `In Progress` state
  - When user first time open athena but admin has not yet given approval. [See this](https://xd.adobe.com/view/c0a0f76b-ea42-482a-85c7-ec84a17ee227-95f3/screen/200ac322-57bf-41b6-8d19-572abfd43e88/)
  - When user open athena after first time but still admin has not yet given approval. [See this](https://xd.adobe.com/view/c0a0f76b-ea42-482a-85c7-ec84a17ee227-95f3/screen/f9c58105-9958-4be3-96b0-cffcbd48b432/).
- Mockup of `Completed` state 
  - When admin click on `Create Tax Retuns` button for the first time then [see this](https://xd.adobe.com/view/c0a0f76b-ea42-482a-85c7-ec84a17ee227-95f3/screen/3832f45d-3c5b-4e94-914d-8893353971d5/).
  - When admin click on `Create Tax Retuns` button after the first time then [see this](https://xd.adobe.com/view/c0a0f76b-ea42-482a-85c7-ec84a17ee227-95f3/screen/3876483c-9cda-4937-a968-4312d5e31e6b/).
- Mockup of `Failed` state. [See this](https://xd.adobe.com/view/c0a0f76b-ea42-482a-85c7-ec84a17ee227-95f3/screen/740530fe-34d0-4337-93f6-2cda53dc58f1/)


