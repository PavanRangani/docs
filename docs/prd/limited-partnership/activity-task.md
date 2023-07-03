# Activity Tasks

## Overview

- System will create an activity task for each Investor based on the type of activity like `Capital Call`, `Distribution`, `Net` & `Net with Separate Fund`.
- System will create activity task for `Initial Capital call` or Subsequent `Capital call`.
- Distribution can be of 3 types. For each type, the system will create an activity task.  


### System Rule

- System will have some pre-defined template. Using that template, the system will create an activity task.
- Activities will be performed in multi-step. For that, the system will have some system templates in the multi-step tab. For e.g. `Capital Call`, `Initial Capital Call`, `Cash Distribution`, `Stock Distribution` 
- If the activity type is `Capital Call`, the system will create activity task of either [Capital call](https://drive.google.com/file/d/14gsdNtyM3hE57rqExFCcPLAQXgtfTkDP/view?usp=share_link) or [Initial Capital Call](https://drive.google.com/file/d/1VzZBZC5-XgVB4LpiPTzS_iLhSw2fvY5J/view?usp=share_link).
- Distribution can be 3 types: Cash, Stock & Both.
    - When type is `Cash`, the system will use the [Cash Distribution](https://drive.google.com/file/d/1e0r-NA4DnMCk-9xmCI1h6pJyAnFrypZM/view?usp=share_link) template.
    - When type is `Stock`, the system will use the [Stock Distribution](https://drive.google.com/file/d/15AkRwebVSnF97EAA99RQ18f-Sc4GLXnA/view?usp=share_link) template.
    - When type is `Both`, the system will create two tasks for each Investor – One for `Cash Distribution` & one for `Stock Distribution`
- If activity type is `Net` or `Net with Separate Fund`, system will create either a `Capital Call` or `Cash Distribution` task based on the difference amount for `Net`.
    - If the difference amount is `Negative`, the system will use a `Capital Call` template to create a task.
    - If the difference amount is `Positive`, the system will use the `Cash Distribution` template to create tasks.
- When activity task is deleted, system first delete all its task or chat notifications and the delete that tasks.

**Activity Task Information**
- Task name will be set to this format: `{Capital Call name} | {Fund Name}`
- For `Cash Distribution` & `Stock Distribution` template, task due date will be set using the Due date of Activity.
- For other templates, task due date will be set using the date when activity is approved.
- Start date will be set to the date when activity is approved.
- Task Source will set to Email for System template. 
- System will add a note with each task with the below information.
    - {Shows activity type header in bold}
    - Issue date: {Issue date of the Activity}
    - Due date: {Due date of the Activity}
    - Capital Call:
        - `Capital Call amount: {Amount}`
    - Distribution
        - `Cash Distribution amount: {Amount}`
        - `Stock Distribution: {Stock}`
            - When distribution type is `Both`, shows both values in the notes or type is `Stock`, shows only stock distribution or type is `Cash`, shows only cash distribution.         
    - Net
        - `Call Amount: {Amount}`
        - `Cash Distribution amount: {Amount}`
        - `Net amount: {Amount}`
    - Net with Separate Fund
        - `{Fund 1} | Capital Call amount: {Amount}`
        - `{Fund 2} | Distribution amount: {Amount}`
        - `{Fund 1 or Fund 2 whose task is created} | Net amount: {Amount}`
    - Funding Account: {Funding Account of the Investor}
    - SLOA: {Yes or No}
- Nagative amount is shown in the `()`.
- If activity has Note, system will carryforward activity note to the activity task.
- Once a task is created and the user will update the activity note, the system will not update the existing task note. 
    
