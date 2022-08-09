# Prefill Unsaved Notes

## Overview
When user has entered some notes but close the task add/edit dialog without save, system will store that notes in local storage so when user comes again to create new task for that family, previous notes will be prefilled.

## Tasks/Triggers

- In add mode, new note will be managed based on the selected family.
- In edit mode, new note will be managed based on the task/trigger id. 

### Add new note for New task
- When the user adds notes/trigger for a new task of a family and closes the task/trigger without saving. That note will be saved in the local storage for that family. So in future whenever the user adds a new task/trigger for that particular family, previous unsaved notes will be prefilled. 
  - For e.g. If `Sue` create a new task and select family `Family 1` and `Sue` adds a notes for that task and closes that task without saving. Now `Sue` adds a new task and select `Famiily 1`, unsaved notes for that family is prefilled in notes tab.
- If the user enters the notes but closes the Task/Trigger Create dialog without selecting the family, that note will not be saved in local storage. That note won’t be prefilled in future.

### Add new note for existing task/trigger
- When user adds a new note for a existing task/trigger and closes task/trigger without saving. That new note will be saved to the user's local storage and it will be prefilled in future when the user opens that task/trigger notes tab.
  - For e.g. Suppose the `Sue` has a task that contains 3 notes. Now the `Sue` adds a new note to that task and closes the task without saving that new note. Then that new note will be saved to the `Sue`'s local storage. That unsaved note will be prefilled in future when the `Sue` opens that task’s notes tab.


** Case: When family is changed **
- If the task/trigger has some unsaved notes and the user changes the family and that family has some unsaved notes, unsaved notes will be changed. 
    - For e.g. Suppose `Sue` has two unsaved notes for `Family 1` and `Family 2`. Now, `Sue` opens a new task and selects `Family 1` in it, the notes tab will be prefilled with unsaved notes of `Family 1`. Now if `Sue` changes the family to `Family 2` without saving the unsaved note, the unsaved note for that task will also change.
- In the above case, if the user saved the unsaved notes and then changes the family, the notes won't be changed.
- Once the user clicks on the SAVE button from the notes editor, notes won't be saved in local storage.


## Known Case : When user edits any existing notes
- We haven't managed unsaved notes in local storage while user edits any exisitng notes.
    - For e.g. Suppose the `Sue` has a task that contains 3 notes. Now the `Sue` updates one of those notes and closes the task without saving the updates. This updated note is not saved to local storage so when `Sue` comes back to this task she won't get last unsaved changes.