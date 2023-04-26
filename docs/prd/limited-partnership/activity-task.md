# Activity Tasks

## Overview

- System will create an activity task for each Investor based on the type of activity like `Capital Call`, `Distribution`, `Net` & `Net with Separate Fund`.
- System will create activity task for `Initial Capital call` or Subsequent `Capital call`.
- Distribution can be of 3 types. For each type, the system will create an activity task.  


### System Rule

- System will have some pre-defined template. Using that template, the system will create an activity task.
- Some of the activities will be performed in multi-step. For that, the system will have some system templates in the multi-step tab. For e.g. `Capital Call`, `Initial Capital Call`, `Stock Distribution`
- Some of the activities will be performed in a single step. For this, the system will hard code that template in a code base. For e.g. `Cash Distribution`  
- If the activity type is `Capital Call`, the system will create activity task of either [Capital call](https://drive.google.com/file/d/14gsdNtyM3hE57rqExFCcPLAQXgtfTkDP/view?usp=share_link) or [Initial Capital Call](https://drive.google.com/file/d/1VzZBZC5-XgVB4LpiPTzS_iLhSw2fvY5J/view?usp=share_link).
- Distribution can be 3 types: Cash, Stock & Both.
    - When type is `Cash`, the system will use the [Cash Distribution](https://drive.google.com/file/d/1e0r-NA4DnMCk-9xmCI1h6pJyAnFrypZM/view?usp=share_link) template.
    - When type is `Stock`, the system will use the [Stock Distribution](https://drive.google.com/file/d/15AkRwebVSnF97EAA99RQ18f-Sc4GLXnA/view?usp=share_link) template.
    - When type is `Both`, the system will create two tasks for each Investor – One for `Cash Distribution` & one for `Stock Distribution`
- If activity type is `Net` or `Net with Separate Fund`, system will create either a `Capital Call` or `Cash Distribution` task based on the difference amount for `Net`.
    - If the difference amount is `Negative`, the system will use a `Capital Call` template to create a task.
    - If the difference amount is `Positive`, the system will use the `Cash Distribution` template to create tasks.

**Activity Task Information**
- Task name will be set to this format: `{Capital Call name} | {Fund Name}`
- Start date will be set to the date when activity is approved.
- Task Source will set to Email for System template. 
- System will add a note with each task with the below information.
    - {Activity type} Issue date: {Issue date of the Activity}
    - {Activity type} Due date: {Due date of the Activity}
    - Funding Account: {Funding Account of the Investor}
    - SLOA: {Yes or No}
    
