# Task Search

## System Rules
- Search is not tiggerred as you type manner. Search will be triggered on explicit confirmation by user 
- By default search is performed on the login user's own Tasks only. If the user wants to see other user's task, he can see by unchecking the `My Task` checkbox.
- By deault, query is matched on `Open`, `Completed` & `Deleted` tasks. Allows user to modify this and include `Upcoming` tasks 
- Query is matched on: Task Title, Sub-task title, Chats & Task notes. Allow user to modify this. 
    - For e.g. If user searched `Brown` word, it will show all the task where the `Brown` word is used in `Title`, `Sub-task title`, `Chats` & `Task notes`.
- Partially matched results are not shown. 
- System shows top 250 tasks in search results. Not all tasks in result are loaded at once. It shows n (50) tasks first. Next batch is loaded only when required.
- Search result doesn't match on `Recurring trigger` and `Multi-step Template`.
- Matching result is not case sensitive. For e.g. If user searches `Ajay` or `ajay`, the result will be the same for both queries.

### How query will be matched

#### Single word
- When user search with single word, it will be matched exactly in task title, subtask name, notes or chat. Partial word matching won't be performed. For e.g. If user searches with `Ajay`, it won't match with word `Jay`

#### Multiple words
- Whenever user search with multiple words, then only those tasks where all the words present in Tasks title and Subtask name will be matched. In Notes and Chat, matching will be done by breaking the words
    - For example, suppose user has 3 tasks such as `Check balance of VI`, `Balance check of Keith’s account` and `Check fan status`. Now the user searches for `Check balance`, it shows only 2 tasks `Check balance of VI` and `Balance check of Keith’s account` in the result. (Here, Check and Balance both words are not available in task title or subtask name of the 3rd card)
    - For example, suppose a task `Check Fan Status` has a note `Check status of 2 fans`. Now the user searches for `check balance`, it shows the `Check Fan Status` task in the result. (Here, Partial word of `Check` is available in the task notes)


## UX Rules

- Search is available to all the users from the My Task, Group Task & My Chat page

### Search input
- When input field is opened, focus is set to this field
- On Enter key press, search is triggered
- Shows X button to clear search query. on click of X reset the query and close the result container if its open.
- When Search request is in progress, Loader is shown at the place of X icon
- In case of search failure, Error toast is shown and Search query is not reset

### Search Result container
- Shows search result in pop over dialog
- Shows count of the search result, Toggle switch for Own tasks or all tasks and way to filter
- Toggle switches and filter icons will always be visible in the dialog.
- The filter icon is shown in green when filter is applied.
- Shows proper message when no matching results found. 
- Each search result is shows as an individual in itself with metadata providing addtional information to the user for better understanding.
- Search result is preserved: When search result is available and dialog is closed by user, result is not discarded. When user again put focus on search field, previous result is shown.
- This dialog takes full height of the screen. In case of overflow, shows scroll. 
- When search result is loaded, scroll is set to top by default. 
- On sroll down, loads another batch of tasks
- Dialog will be closed
    - When user press the ESC key
    - On outside click
    - On click of X button

#### Keyboard Navigation
- On clicking the down arrow, 1st result comes into a focused state. On focus, background is updated in Grey color.
- User can move focus up and down using up and down arrow.
    - When focus is at last result and user press down arrow, focus will be moved to first result. Same way when focus is at first result and user press up arrow, focus will be moved to last result.
- When user press the Enter key, focused result will open with detail tab


### Single Task
- For each tasks in result shows following details
    - Task name: Never shows ellipses. Full task name is always visible
    - Entity Name, Due date & Status
        - If the due date is already passed then it is shown in red color.
        - Each status is shown as per its colour
    - Shows icon for task type: Recurring or Multi-step
    - Matched on: Title/Sub-task/Notes/Chat (anyone or more than one). In case of more than one matching, shows it separated by comma
    - Last updated: In case of current calendar year, year is not visible


## UI Rule

[Mockups of My Task or Group task page](https://drive.google.com/drive/u/0/folders/1wKN5gpcUI-XIaQEDV6cRn25BxEpyWBDB)

[Mockups of My Chat page](https://drive.google.com/drive/u/0/folders/1JHcXPyKaLEHlbL7FUjjpABkxJ5HxxioQ)

- Message when no matching records available: `No Results Found`



## Design Decision

Why didn't we search on the Recurring Triggers?



Why didn't we search on the Multi-step template?



