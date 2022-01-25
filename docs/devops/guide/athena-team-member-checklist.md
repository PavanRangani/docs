# Athena Team member checklist

A list of checklist to perform when a new developer joins or leave the team.


## Common to both server and UI developer for Add/Remove team member
- Grant/Revoke access to Firebase projects: [Here is the firebase projects list](../assets/assets.md#firebase-realtime-database)
    - test
    - admin-test
    - staging
    - admin-staging
- Add/remove to [Clarius Github organization](https://github.com/orgs/clarius-athena/people)

## Server developer
- Grant/Revoke SSH access to deployment environments:
    - test
    - staging
- Add/Remove the email to server error emails for using [this guide](./error-emails.md)
    - test
    - staging
    - production

## Remove team member
All of the above add steps and additonally:

- Verify all of the above for Production environment assets as well.
- If its system admin, also remove AWS IAM access