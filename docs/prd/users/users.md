# User

## Overview

- When new users sign up to the application, user is not allowed to access application until any admin user approves this new user
- User page is applicable only for Admin users.
- Users can be in one of the three states: PENDING, ACTIVE, BLOCKED

## Sign Up

### System Rule

- New user can sign up via Email.
- On signup of new user, system sends email notification to all existing admin users.

### UX Rule

- When pending users logs in it show proper message.
- When blocked users logs in it show proper message.

### UI Rule

- Email template for admin users. See this //TODO
- When pending user opens a application for first time then show this message. See this //TODO
  - When pending user opens application for second time then show this message. See this //TODO
- Show this page while blocked user login. See this //TODO



## Accept

### System Rule

- Admin user can perform this from two places: Email and browse page.
- System creates contact for this clarius user once he/she activated.
- After admin accept the pending request, system sends approved email to user.

### UX Rule

- This action is available only for `Pending Uses`. On click of this action user is activated.
- For `Email`, after the 

### UI Rule

- Email
  - On click of `ACTIVATE` button in the mail, user directly activated and system show valid message for admin. See this //TODO
  - User is already active. And if the admin reactivates that user, it will show him the proper message. See this //TODO
  - Approved email for user. See This //TODO
- Browse page
  - On click of Accept action, that user is moved from `Pending Users` to `Active Users`.



## Reject

### System Rule

- Admin user can perform this action from `Browse Page`.
- Only pending users can be `Rejected`. 
- This action is not applicable for `Active` and `Blocked users`.

### UX Rule

- On click of this action removed that user form user page. 
- On click of `Reject` action, opens Reject confirmation dialog. 

### UI Rule

- Reject confirmation dialog. see this 



## Block

### System Rule

- When user is blocked, he/she is removed from any associated family

### UX Rule

- This action is applicable for active users.
- On click of `Block`, open block confirmation dialog. See this

### UI Rule

- When user is blocked and open application then system show `Account Blocked` message. See this



## Unblock

### System Rule

- Applicable only for `Blocked` users.

### UX Rule

- 

### UI Rule

- 



## Make Admin

### System Rule

- Applicable only for `Active Users`.

### UX Rule

- This action is applicable only  `Non-Admin user`.

### UI Rule

- This action is applicable on vertmore of active user records.





## Remove Admin

### System Rule

- Applicable only for `Active Users`.

### UX Rule



### UI Rule





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

- Toast message : 
  - Toast message for `Accept` is: `Activated successfully`.
  - Toast message for `Reject` is: `Rejected successfully`.
  - Toast message for `Make Admin` is : `Marked as admin successfully`.
  - Toast message for `Remove Admin` is: `Removed from admin successfully`.
  - Toast message for `Block` is :`Blocked successfully`.
  - Toast message for `Unblock` is : `Unblocked successfully`.

  