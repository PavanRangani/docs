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
- System will set the `Start Date` of task same as the Activity `Issue Date`.
- For `Cash Distribution` & `Stock Distribution` template, task due date will be set using the task's `Start Date`.
- Task Source will set to `Email` for System template.
- For capital call tasks,
    - If template has `Client Associate-Money Movement` sub-tasks, system will prefill the `From`, `To` & `Amount` based on Capital call or Wire Instruction details.
- System will add a note with each task with the below information.
    - {Activity Type} Details - Shows type in bold
        - Issue date: {Issue date of the Activity}
        - Due date: {Due date of the Activity}
        - Capital Call:
            - `Capital Call amount: {Amount}`
        - Distribution
            - `Cash Distribution amount: {Amount}`
            - `Stock Value: Shows calculation of (Quantity * Distribution Price/Share) for the Investor`
                - When distribution type is `Both`, shows both values in the notes or type is `Stock`, shows only stock value or type is `Cash`, shows only cash distribution.  
            - Investment: 
                - Applicable only for Stock and Both type distribution. 
                - Shows `Investment` company name with its stock symbol. If stock symbol is not available, shows `-`.       
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
    - Wire Instructions Details - Shows it in bold style
        - If Fund has `International Wire Instruction`, header of the will be shown like `International Wire Instruction Details` in bold style.
        - For `International Wire Instruction`,
            - Currency: 
            - Receiving Bank Name:
            - Receiving Bank Address:
            - Account Number:
            - ABA:
            - BIC:
            - SWIFT Code: 
            - IBAN: 
            - Name on Receiving Bank Account: 
            - Final Beneficiary:  
            - Address of Final Beneficiary:
            - Wire Reference:  
            - For Further Credit Account Number: 
        - For `Regular Wire Instruction`, 
            - Bank Name: {Name of the selected Bank}
            - ABA Routing No:
            - Account Number:
            - Beneficiary/Account Holder Address: 
            - Reference: It is hard coded word `Always Reference Investor Name`
            - Intermediary Information: It is either `Yes` or `No`
            Below information is shown only when `Intermediary Information` is Yes
            - Intermediary Account Number: 
            - Intermediary Name (Registration):
            - Intermediary Address: 
            - Intermediary Phone: Formar is `xxx-xxx-xxxx` 
        - If any details is too long, shows it in multiline.
- Nagative amount is shown in the `()`.
- If activity has Note, system will carryforward activity note to the activity task.
- Activity type details and Wire Instruction is shown in the single note. [See this](https://drive.google.com/file/d/16hTdB2xtgudaC8qlo17czyZEVOQRknCV/view?usp=sharing)
- Once a task is created and the user will update the activity note or wire instruction note, the system will not update the existing task note. 
    
    
## Prefill From, To & Amount for `Client Service - Money Movement` category sub-tasks

### System Rule
- This feature is applicable only for Capital call tasks. (For any type of activity except Distribution)
- This feature will work same for the sytsematic template or manually template.
- If any template will have more than one subtasks, system will prefill the same value of `From`, `To` & `Amount` for all subtasks.
- When user approve the activity task having template which has `Client Service - Money Movement` category subtask, system will prefill `From, To & Amount` based on the Capital call or Wire Instruction details of the activity. 
    - From: Show selected Funding account & Number of the Investor
    - To: Show `Account Name` & `Number`.
    - Amount: Show Capital call amount for `Capital Call` activty and show `Net` amount for `Net` and `Net with separate fund` activity type.
- When user create Distribution tasks using `Cash Distribution` or `Stock Distribution` template, the system will not prefill From, To & Amount data. It will show blank.