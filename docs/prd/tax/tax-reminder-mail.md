# Tax return reminder Mail

## System Rule

- When new financial year start (on 2nd January of each year), system send reminder mail to all admin user to create Tax returns for new year.
- When admin clicks button in email, system creates a tax return of new year for all legal entities which has tax return available for last year.
  - For example : On `1st Jan 2021`, system send mail to all admin users to create a Tax returns for 2021. When user click on the button in the mail, system creates a tax return of year 2021 for all legal entities which has tax return available for 2020 year. 
- The system doesn't auto-create tax returns for the archived family's legal entity.

## UX Rule

- On clicking the `Create Tax returns` button in the mail, the system will redirect the user to the Athena page. 
- The `In progress` page will be displayed as long as the system generates tax returns for all legal entities. Once it is completed then the page of `Completed` will show. If any of these errors occur, the system will show a `Failed` page.
- Show `Create Tax Return for {Current year}` in the header of all these pages. 
  - for ex. Shows `Create Tax Returns for 2021` for the 2021 year.

## UI Rule

- Mockup of [Email Template](https://xd.adobe.com/view/c0a0f76b-ea42-482a-85c7-ec84a17ee227-95f3/screen/6fdfcdf9-cdd8-475a-808b-ac67b2b94ed5/) 
- Mockup when user clicks on the button. [See this](https://drive.google.com/file/d/14hlXHx6xrulZUqlaXsoFYeQA1P3SStYT/view?usp=sharing)

