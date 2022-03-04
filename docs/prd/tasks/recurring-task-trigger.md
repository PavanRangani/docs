# Recurring task trigger

## Entity Details

### Dates

### Start Date: 
Defined as an offset of `N days before Due Date`. Its a mandatory field.

### Due Date: 
Date input field. It’s a mandatory field. It’s not a past date.

### Repeats on: 
- Frequency at which this task should be auto created by system. 
- Its possible values are Monthly, Quarterly, Semi-Annual, Annually

### End Date:
  - Its value is always greater than `Due date` or `Current date` otherwise the system shows an error message. 
    - Error message is: `Should be > Due date`”` or `“`Should be > Current date`

## RACI

## Add Recurring trigger
- Add logic of upcoming 3 years

## Edit Recurring Trigger
- Trigger can be edited any time.
- During the Edit of the Trigger, Due date can not be set less than current date.
- Start date?
- End date?
- Repeats on?
- When the dates or RACI roles of the trigger is updated, those changes will be only reflected in the upcoming instance of the task. It won't be reflected in open instances of the task. For that, system shows a proper warning message.
- This warning message appears only when the trigger has an open task. 

- When details of the Trigger other than Dates and RACI is updated, those changes will be reflected in all the instance of the task (Upcoming or already created)

  > One recurring tasks has two instances. One in Open tab and one in Upcoming tab. Name of this task is `Task1`. 
  >
  > - If user rename the task to `Task2`, both instances will be updated with new name `Task2`
  > - If user updates the RACI role, only Upcoming instance will be updated with new RACI roles
  > - If user updates the Due date, only Upcoming instance will be updated. Open instance won't be updated.
  > - Here done task will not be update.


## Delete Recurring Trigger


- When the user deletes any of the trigger then the system deletes trigger and all of its upcoming task. 
- Already Open instances of that trigger won't be deleted. 


## View Recurring Trigger

## Browse all Recurring Trigger

## Known Case
  - If the user changes the date of the trigger in such a way that the first task of the trigger will come in the open tab. So the system will always add new tasks in the Open tab. (Here the system will add a new task even if the old task of that trigger is already open tab) 
    - For e.g.
      - Suppose I have created a Trigger where the Due date is `10 Mar 2022` and the Start date is set to `6` days and the Notification date is set to `6` days. So the first task of this trigger will appear in the `Open` tab and the rest of the tasks will appear in the `Upcoming` tab. 
      - Now When the user opens the Edit trigger dialog and change both dates of `Notification date` and `Start date` from `6` days to `7` days and Save the Trigger.
      - Then system will updates all the upcoming tasks based on the new dates and the Open task will remain as it is. But in this case, the system will again create a new open task in the Open tab.
  
## Fallback logic for the Roles

- If the assigned role is not available at family level, system follows the fallback logic as below:
  - If no Client associate- task rolls to Client Manager
  - If no associate advisor - task rolls to Advisor
  - If no Investment Direct - task rolls to Advisor
  - If no Director, roll to Advisor
  - If no Personal Controller, roll to Advisor

 