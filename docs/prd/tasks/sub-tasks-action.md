# Sub-Tasks Action

## Change Due date
### UX Rules
- Applicable only for Open Sub-Task.
- Past date or greater than the parent task due date can't be selected.

### UI Rule
[Mockup](https://drive.google.com/file/d/1mNuvv_SGGEUeI5eO5cxUNIfZaf1o2yBt/view?usp=sharing)


## Change Responsible
### UX Rules
- Applicable only for Open Sub-Task.
- Multiple person can be selected at a time. Role is shown as a secondary information.

### UI Rule
[Mockup](https://drive.google.com/file/d/1p9PylPpt1-cqlwC46lp0YiVUtw7UWCjN/view?usp=sharing)


## Change Status
### UX Rules
- Applicable only for Open Sub-Task.
- When the user changes the status of the sub-tasks to NA or On Hold, the system will RESET the due date of that sub-tasks.

### UI Rule
[Mockup](https://drive.google.com/file/d/1qVEjtvDcPAzZ23gvqZetwPV4m7YaFPS6/view?usp=sharing)


## Mark as Done
### System Rule
- Only open Sub-Tasks can be marked as Done. Done Sub-Tasks can't.
- When any Sub-Task is marked as Done, system sends in-app notification to Accountant person of the parent task.
- When any Sub-Task is marked as Done, system ask for `Done Date`.
- System will allow to done parent task even if it has an open sub-task whose status is NA.

### UX Rule
- Applicable only for Open Sub-Task.
- There are 2 ways to marked Sub-Tasks as done.
    - From the Status change
    - By clicking on the checkbox of Sub-Task.
- Done date is a mandatory field and default value current date is prefilled. User can select any past date otherwise system show error message.
- When any sub-tasks have no due date and the user marks that task or sub-tasks as Done, the system will show the `Enter due date` dialog.

### UI Rule
- Error message when done date is Future date: `Future date is not allowed`.
- [Mockup](https://drive.google.com/file/d/1AJYxYoOEpbJgwv9gTRK6gqYiz7vRgbHV/view)
- [Mockup of Enter due date dialog](https://drive.google.com/file/d/1VZqb135VXtIUB2WQyB4SeJ_GXopDKoLU/view?usp=share_link)


## Reopen
### System Rule
- Only Done Sub-Tasks can be reopened.
- If a done sub-task has no due date and the user reopens that sub-task, the system shows a dialog for entering the due date. 

### UX Rule
- Applicable only for Done Sub-Task.
- Not applicable for the Done parent task.
- There are 2 ways to marked Sub-Tasks as Reopened.
    - From the vertmore action
    - By clicking on the done checkbox of Sub-Task.
- When any Sub-Task is reopened, system shows confirmation dialog.
- On confirmation, Sub-Task will be reopened and set `Pending` status.

### UI Rule
[Mockup](https://drive.google.com/file/d/1PgLd1ng_xAN6yxNBunlKnPA-d-dBIWIC/view)


## Delete Sub-Task
### System Rule
- Sub-Tasks whose status is Done can't be deleted. Sub-Task in any other status can be deleted any time.

### UX Rule
- Applicable only for Open Sub-Task.


### UI Rule
[Mockup]*(https://drive.google.com/file/d/1YuDOgBLY-qnOF8ZiVXKW4HxeP865WB9K/view)