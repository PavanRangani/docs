# User

## Overview

- When new users sign up to the application, user is not allowed to access application until any admin user approves this new user
- Users can be in one of the three states: PENDING, ACTIVE, BLOCKED
  - Pending user means a user who has signed up but the admin has not given approval yet.
  - Active user means user who has signed up and approved by the admin.
  - Blocked user means users who have been blocked by the admin. He/she will not be able to access Athena.
- User page is applicable only for Admin users.
- New user can sign up via Microsoft or Google account.

## Sign Up

### System Rule

- On signup of new user, system sends email notification to all existing admin users.
- Default state of the newly signed up user is `Pending`.

- When Pending or blocked user login into athena, system show proper message. And doesn't allowed to access any other features of the application.

### UI Rule

- Email template for admin users. [See this](https://xd.adobe.com/view/c0a0f76b-ea42-482a-85c7-ec84a17ee227-95f3/screen/e64b7797-8b1c-4523-9f8e-5cfaf2c6422c/)
- When pending user opens application for first time then show [this page](https://xd.adobe.com/view/c0a0f76b-ea42-482a-85c7-ec84a17ee227-95f3/screen/200ac322-57bf-41b6-8d19-572abfd43e88/specs/) and other cases show [this page](https://xd.adobe.com/view/c0a0f76b-ea42-482a-85c7-ec84a17ee227-95f3/screen/f9c58105-9958-4be3-96b0-cffcbd48b432/specs/).
- When blocked user opens athena, system show [this page](https://xd.adobe.com/view/c0a0f76b-ea42-482a-85c7-ec84a17ee227-95f3/screen/740530fe-34d0-4337-93f6-2cda53dc58f1/specs/).

## Accept

### System Rule

- Applicable only for `Pending Users`.
- System creates contact for this clarius user once he/she activated.
- When admin user accept the pending request, system sends approval email to user.

### UX Rule

- Admin user can perform this action from two places: Email and Browse Page.
- Email
  - On click of `ACTIVATE` button in the mail, user directly activated and system show `Account Activated` page for admin.
  - When user is already active. And if admin reactivates that user, system show `Account Already Activated` page for admin.
  - System sends a mail to the user when the admin approves a pending user request.
- Browse Page
  - On click of this action opens confirmation dialog. On confirm user is activated and moved from `Pending User` to `Active User`.

### UI Rule

- `Account Activated` page. [See this](https://xd.adobe.com/view/c0a0f76b-ea42-482a-85c7-ec84a17ee227-95f3/screen/3832f45d-3c5b-4e94-914d-8893353971d5/specs/)
- `Account Already Activated` page. [See this](https://xd.adobe.com/view/c0a0f76b-ea42-482a-85c7-ec84a17ee227-95f3/screen/3876483c-9cda-4937-a968-4312d5e31e6b/specs/)
- Mail for User. [See this](https://xd.adobe.com/view/c0a0f76b-ea42-482a-85c7-ec84a17ee227-95f3/screen/948b26be-2885-4428-985d-efc37153b8b5/specs/)
- Confirmation dialog. [See this](https://drive.google.com/file/d/1G2oE8pS4NpkKIMAD4sxmuH4BHk2kz4Wk/view?usp=sharing)


## Reject

### System Rule

- Admin user can perform this action from `Browse Page`.
- Only pending users can be `Rejected`. 
- This action is not applicable for `Active` and `Blocked users`.

### UX Rule

- On click of this action removed that user form user page. 
- On click of `Reject` action, opens Reject confirmation dialog. 

### UI Rule

- Reject confirmation dialog. [see this](https://drive.google.com/file/d/1oYwwgRlgH_Zhqqs9x2ANmwHm_r6G3nbm/view?usp=sharing) 

## Block

### System Rule

- When user is blocked, he/she is removed from any associated family.
- When user is in association with any tasks, doesn't allowed to block that user.

### UX Rule

- This action is applicable for active users.
- On click of `Block`, open block confirmation dialog.
- When block is not possible then show block not possible dialog. This dialog will show all associated open tasks.

### UI Rule

- When user is blocked and open application then system show `Account Blocked` message. See this
- Block confirmation dialog. [See this](https://drive.google.com/file/d/1Bl3oVcgVOENt_BmB0PQtZ1OA0B7j1FXx/view?usp=sharing)
- Block not possible dialog. See this //TODO
- On click of Block action, user is moved from `Active Users` to `Blocked Users`.

## Unblock

### System Rule

- Applicable only for `Blocked` users.

### UX Rule

- Show toast message of success on action of `Unblock`.

### UI Rule

- On click of Unblock action, user is moved from `Blocked Users` to `Active Users`.
- Toast message is : `{User name} Unblocked successfully`.

## Make Admin

### System Rule

- Applicable only for `Active Users`.
- This action is available only for  `Non-Admin user`.

### UX Rule

- Show toast message of success on action of `Make Admin`.

### UI Rule

- This action is applicable on vertmore of active user records.
- Toast message is : `{User name} Marked as admin successfully`.

## Remove Admin

### System Rule

- Applicable only for `Active Users`.
- This action is available only for  `Admin user`.

### UX Rule

- Show toast message of success on action of `Remove Admin`.

### UI Rule

- This action is applicable on vertmore of active user records.
- Toast message is: `{User name} Removed from admin successfully`.

## Browse Users

### System Rule

- Users pages are total 3 types : `Pending`, `Active`, `Blocked`. 
- Non-Admin users can not be accessible. 

### UX Rule

- Each types has different tab. shows count with each tab.
- User button and action both are not applicable for Non-admin users.
- Each tab has one table. and table columns are
  - `Name` 
  - `Email`
  - `Request Received on` & `Activated on` & `Blocked on`.
    - `Request Received on` for `Pending Users`
    - `Activated on` for `Active Users` & `Blocked on` for `Blocked Users`
      - Show first name of the admin users. for e.g  `Jun 25, 2020 - by Keith`.
  - Show `Admin` tag for admin users. 
  - Show image icon with name.
  - Sorting order:
    - For `Pending Users`, records are sorted in descending order of `Request Received on` .
    - For `Active Users` & `Blocked Users`, records are sorted in alphabetically order of `Name`.
- Show proper message when records is not available.
- On hover of records, shows action
  - For `Pending users`, show `ACCEPT`& `REJECT`.
  - For `Active users`,
    - For admin users, Actions are : `Remove Admin` & `Block`.
    - For Non-admin users, Actions are : `Make Admin` & `Block`.
  - For `Blocked users`, action is : `Unblock`. 

### UI Rule

[Mockup](https://xd.adobe.com/view/c0a0f76b-ea42-482a-85c7-ec84a17ee227-95f3/)

- When records is not available in any of the tab, show `No Records Found` message. 
- There is two way to open `User` tab :
  - `User` button in the Home Page. [See this](https://drive.google.com/file/d/1iqRr-jIM0a_x-yR5NGSag2JovuuO67ON/view?usp=sharing)
  - `User` action in dropdown in the top side. [See this](https://drive.google.com/file/d/1iWHG0neaBzuyi1c10-1tpSE-ce86iwfL/view?usp=sharing)
- When non admin user opens a user page URL, shows proper message. [See this](https://xd.adobe.com/view/c0a0f76b-ea42-482a-85c7-ec84a17ee227-95f3/screen/d6ffb3ff-4b54-4769-81b3-88c8b030a9e0/)

