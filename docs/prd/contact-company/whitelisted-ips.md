# Whitelisted IPs

## Overview

Athena application is currently accessible from only allowed IPs. Its for the security measure taken to lock down access to Athena to only validated people (Clarius employees + Dreamworld team)

Previously we had manually added allowed IPs to the AWS security group. But each time when someone's IP is changed, Clarius team needs to notify us to update that IP.

For self management of allowed IP address by Clarius team, application allows to add IP address to Clarius contact. This IP address will be updated to AWS security rules by system.



## IP address management

- Clarius contact can have more than one IP entries.
- With each entry, allows to enter IP address and its description.
- Only admin users can manage (Add/edit) this IP address
- Non admin users will only see IP address in view dialog. 

- When Clarius contact is archived, IP entries will be removed from AWS
- When Clarius contact is active, IP entries will be made to AWS



### UI Requirement

[Mockup](https://drive.google.com/file/d/1QWcuQZNYVZEk48dedf0wu4_oFFMI-BJO/view)

- For Clarius contacts, shows `Whitelisted IPs` section for admin users. [See this](https://drive.google.com/file/d/1Gx8wwb9XOemcjC-blv3n3MaPSXQ_eEzu/view?usp=sharing)
- IP can only be added by admin user.  Non admin user can only seeing IP address. 
  - Column Name : `IP` , `Description` and `Editor`.
- Allows to add more than one records
- With each record ask for `IP address` and `Description`
- IP address 
  - it allows only numbers and dot (.)
  - When IP address is not valid it shows `Invalid` error
- Description
  - It is a single line text field. 
  - it will allow maximum 255 characters. 
  - Allowed characters are “ a-z, A-Z, 0-9, spaces, and -  ”
- Editor
  - Name of the Clarius user who Created/Updated this IP Address.



### Notes

- IPv6 address in IP address field is not allowed currently intentionaly. 
- Currently we are maintaining IP Uniqueness at mysql database level. 