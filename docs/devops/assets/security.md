# Security and Restrictions

## Athena web application access:

- Athena's access is restricted by IP addresses. Only whitelisted IPs are allowed to access Athena. (Even the first login page).
- Its login is done by Microsoft using Azure Active Directory for Production and Google login for Staging.
- After login, only Activated users can access Athena. For any new users, Athena Admin first needs to activate the user; only after that, she can access Athena.


## Infrastructure
- Athena uses AWS Infrastructure to host its servers and data along with Firebase. See [assets](./assets.md)
- It is hosted at AWS' Oregon region
- It is secured via AWS security groups, to allow access to whitelisted IPs only. This is for **ALL** of the services like Nexus, Jenkins as well

## Misc
- There is no way to share data out of Athena other than by printing/downloading and sharing a report PDF.