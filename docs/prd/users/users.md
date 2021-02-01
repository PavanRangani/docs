# User

## Overview

- When new users sign up to the application, user is not allowed to access application until any admin user approves this new user
- User page is applicable only for Admin users.
- Users can be in one of the three states: PENDING, ACTIVE, BLOCKED
- Once user is active then it can't be delete.



## Sign Up

### System Rule

- New user can sign up via Email.
- On signup of new user, system sends email notification to all existing admin users.

### UX Rule

- When pending users logs in it show proper message.
- When blocked users logs in it show proper message.

### UI Rule

- Email template for admin users. [See this](https://drive.google.com/file/d/1JKFgnG8o0wxDasrNcCD6WZer7WlnhP_d/view?usp=sharing)
- When pending user opens a application for first time then show this message. [See this](https://xd.adobe.com/view/c0a0f76b-ea42-482a-85c7-ec84a17ee227-95f3/screen/200ac322-57bf-41b6-8d19-572abfd43e88/specs/)
  - When pending user opens application for second time then show this message. [See this](https://xd.adobe.com/view/c0a0f76b-ea42-482a-85c7-ec84a17ee227-95f3/screen/f9c58105-9958-4be3-96b0-cffcbd48b432/specs/)
- Show this page while blocked user login. [See this](https://xd.adobe.com/view/c0a0f76b-ea42-482a-85c7-ec84a17ee227-95f3/screen/740530fe-34d0-4337-93f6-2cda53dc58f1/specs/)



## Accept

### System Rule

- Admin user can perform this from two places: Email and browse page.
- Applicable only for `Pending Users`.
- System creates contact for this clarius user once he/she activated.
- After admin accept the pending request, system sends approved email to user.

### UX Rule

- This action is available only for `Pending Uses`. On click of this action user is activated.
- Show toast message of success on action of `Accept`.
- Show confirmation message on click of accept.

### UI Rule

- Email
  - On click of `ACTIVATE` button in the mail, user directly activated and system show valid message for admin. [See this](https://xd.adobe.com/view/c0a0f76b-ea42-482a-85c7-ec84a17ee227-95f3/screen/3832f45d-3c5b-4e94-914d-8893353971d5/specs/)
  - User is already active. And if the admin reactivates that user, it will show him the proper message. [See this](https://xd.adobe.com/view/c0a0f76b-ea42-482a-85c7-ec84a17ee227-95f3/screen/3876483c-9cda-4937-a968-4312d5e31e6b/specs/)
  - Approved email for user. [See This](https://drive.google.com/file/d/1JaLgKVo3Zstb1D2T3aiqJDnFG1r3vau2/view?usp=sharing) 
- Browse page
  - On click of Accept action, opens active confirmation dialog.  [See this](https://drive.google.com/file/d/1G2oE8pS4NpkKIMAD4sxmuH4BHk2kz4Wk/view?usp=sharing)
    - User is moved from `Pending Users` to `Active Users`.
  - Toast message is: `Activated successfully`



## Reject

### System Rule

- Admin user can perform this action from `Browse Page`.
- Only pending users can be `Rejected`. 
- This action is not applicable for `Active` and `Blocked users`.

### UX Rule

- On click of this action removed that user form user page. 
- On click of `Reject` action, opens Reject confirmation dialog. 
- Show toast message of success on action of `Reject`.

### UI Rule

- Reject confirmation dialog. [see this](https://drive.google.com/file/d/1BqV5lxyd_YUlnrdUVo2GiDJT8txTJsby/view?usp=sharing) 
- Toast message is: `Rejected successfully`.



## Block

### System Rule

- When user is blocked, he/she is removed from any associated family

### UX Rule

- This action is applicable for active users.
- On click of `Block`, open block confirmation dialog. 
- Show toast message of success on action of `Block`.

### UI Rule

- When user is blocked and open application then system show `Account Blocked` message. See this
- Block confirmation dialog. [See this](https://drive.google.com/file/d/1hDwscJU7dQI2ob4hu9mIpG7qeGJrjhGL/view?usp=sharing)
- On click of Block action, user is moved from `Active Users` to `Blocked Users`.
- Toast message is :`Blocked successfully`.



## Unblock

### System Rule

- Applicable only for `Blocked` users.

### UX Rule

- Show toast message of success on action of `Unblock`.

### UI Rule

- On click of Unblock action, user is moved from `Blocked Users` to `Active Users`.
- Toast message is : `Unblocked successfully`.



## Make Admin

### System Rule

- Applicable only for `Active Users`.
- This action is available only for  `Non-Admin user`.

### UX Rule

- Show toast message of success on action of `Make Admin`.

### UI Rule

- This action is applicable on vertmore of active user records.
- Toast message is : `Marked as admin successfully`.



## Remove Admin

### System Rule

- Applicable only for `Active Users`.
- This action is available only for  `Admin user`.

### UX Rule

- Show toast message of success on action of `Remove Admin`.

### UI Rule

- This action is applicable on vertmore of active user records.
- Toast message is: `Removed from admin successfully`.



## Browse Users

### System Rule

- Users pages are total 3 types : `Pending`, `Active`, `Blocked`. 
- Non-Admin users can not be accessible. 

### UX Rule

- Each types has different tab. shows count with each tab.
- Each tab has one table. and table columns are
  - `Name` 
  - `Email`
  - `Request received on` & `Activated on` & `Blocked on`.
    - `Request received on` for `Pending Users`
    - `Activated on` for `Active Users` & `Blocked on` for `Blocked Users`
      - Show first name of the admin users whose active or blocked of this contact. for e.g  `Jun 25, 2020 - by Keith`.
  - Show `Admin` tag for admin users. 
  - Show image icon with name.
- Show proper message when records is not available.
- On hover of records, shows action
  - For `Pending users`, show `ACCEPT`& `REJECT`.
  - For `Active users`,
    - For admin users, Actions are : `Remove Admin` & `Block`.
    - For Non-admin users, Actions are : `Make Admin` & Block`.
  - For `Blocked users`, actions are : `Unblock`. 
  - Show toast message of success on action.

### UI Rule

- When records is not available in any of the tab, show `No Records Found` message. 
- When non admin user opens a user page URL, shows proper message. [See this](https://gallery.io/files/2525cc92e080483a91ad1c817103fad0)