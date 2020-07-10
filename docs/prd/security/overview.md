# Security

## Overview

This module is used to keep track of the security measures individual has taken for his accounts likes Banking, investment or any taxation portal.

Purpose of this module is to just keep track of the security measure individual has taken for any particular account.  

Security module is applicable to only Individuals. For other type of Legal entities its not applicable.

Currently system allows to track following type of account or service.

1. Schwab Security Settings
2. Password Keeper
3. Credit Monitoring
4. Credit Freeze
5. Fraud Alert
6. IRS Lock
7. Employment Security Department

Individual can have one record for each above service. Only for Employment Security Department individual can have more than one record.

### Schwab Security Settings

Schwab is various investment service provider. Schwab account is used for the investment in various products. For a security of that account, Schwab account offers security options like Dual factor, Voice recognition and Verbal password.

Status of each of these feature can be : Unknown -> Yes or No -> Turned Off

Unknown means Clarius doesn't know that user has activated particular feature or not. Yes means activated. No means not activated. Turned Off means previously it was activated but now its Turned Off



### Password Keeper

People uses some type of password managers to keep their password secure.

Status can be : Unknown -> Yes or No -> Turned Off

Unknown means Clarius doesn't know that Individual is using any password keeper service or not. Yes means Individual is using. No means not using. Turned Off means previously Individual was using any service but now its Turned Off

If user selects `No` , `Services` is not applicable. Show 'Ellipsis' if the name of the `Service` is more.



### Credit Monitoring 

It can be helpful to know when changes happen to your credit data. When you open any bank account or credit card or loan, your credit data is updated. If someone tries to open an account in your name it will alert you.

In USA many agencies provide Credit monitoring services. 

Its Status can be : Unknown -> Yes or No -> Turned Off

Unknown means Clarius doesn't know that Individual is using Credit monitoring service or not.

When its value is Yes, it means Individual is using. it asks for Company and Account number. User can select any company from company dropdown and enter account number. Company and Account number is applicable only for `Yes`.

No means Individual is not using any Credit monitoring service. Turned Off means previously Individual was using that service but now its Turned Off



### Credit Freeze

A credit freeze limits access to your credit data. No one can access your credit data.

3 major Credit bureau are there in USA market: Equifax, Experian and Transunion who provides this service. Individual can take service from any of these.  It is also possible that Individual has taken service from multiple bureau.

System keeps track for each of the Credit bureau. For each bureau status can be : Unknown -> Yes or No -> Turned Off. 

Unknown means Clarius doesn't know that Individual is using Credit monitoring service of that buerue or not. 

Yes means Individual is using service. System will ask for Date started. Date Started is mandatory field. Date is aplicable only in `Yes`.

No means not using. Turned Off means previously Individual was using that service but now its Turned Off



### Fraud Alert

When fraud alert is in place, no one can open new account on your name. They need to contact you before doing so.

3 major Credit bureau are there in USA market: Equifax, Experian and Transunion who provides this service. Individual can take service from any of these.  It is also possible that Individual has taken service from multiple bureau.

System keeps track for each of the Credit bureau. For each bureau status can be : Unknown -> Yes or No -> Turned Off. 

Unknown means Clarius doesn't know that Individual is using Credit monitoring service of that buerue or not. 

Yes means Individual is using service. System will ask for Date started. Date Started is mandatory field. Date is aplicable only in `Yes`.

No means not using. Turned Off means previously Individual was using that service but now its Turned Off



### IRS Lock

If IRS Lock is enabled, no  one can file tax return on the name of Individual.

Status can be : Unknown -> Yes or No -> Turned Off



### Employment Security Department

Individual will have account in Employment Security Department for the state in which he is doing job. Individual can have more than one account in different states. For one state there can be only one account.

System allow to keep track one account for one state.

Status can be : Unknown -> Yes or No -> Turned Off
