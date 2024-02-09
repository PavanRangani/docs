# Filter

Filtering results helps user to find exactly what they want, quicker. Users can either narrow or broaden search

## System Rule
- Provides a way to filter search result with following criterias:
    - Last Updated
    - Due Date
    - Family
    - Entity
    - Status
    - Priority
    - Section
    - Tags
    - My Role
    - User
    - Task Type

## UX Rule
- Filters are: 
    - Last Updated
        - Default value is `Any`. Possible values are: `Today`, `This Week`, `Last Week`, `This Month`, `Last Month`, `Custom`
    - Due Date
        - Default value is `Any`. Possible values are: `No Due date`, `Today`, `This Week`, `Last Week`, `This Month`, `Last Month`, `Custom`
    - Family
        - See this for [More details](../tasks/browse-my-tasks.md#family)
        - Its disable for `Entity search` task. On hover, shows tooltip with proper message.
    - Entity
        - See this for [More details](../tasks/browse-my-tasks.md#entity)
        - For `Entity Search`, 
            - It's a disabled. On hover, shows tooltip with proper message.
            - For Individual and Joint, Shows the total count of associated entities.
            - For other entities, shows the entity name.
    - Status 
        - It is a multi select filter. Default value is `All`. Possible values are: `Pending`, `Ready`, `In Progress`, `On Hold`, `Blocked`, `Done`, `Deleted`
    - Priority
        - See this for [More details](../tasks/browse-my-tasks.md#priority)
    - Section
        - See this for [More details](../tasks/browse-my-tasks.md#section)
    - Tags
        - See this for [More details](../tasks/browse-my-tasks.md#tag)
    - My Role
        - It is a multi select filter. Default value is `Any`. Possible values are: `Any`, `Responsible`, `Accountable`, `Informed`
        - Show `My Role` filter disabled if user has applied `User`filter.
        - Shows a custom tooltip message when it's disabled and the user hover on it. 
        - Its disable for `Entity search` task. On hover, shows tooltip with proper message.
    - User
        - It is a multi select filter. Default value is `All`. Shows all clarius users in the alphabetical order.
        - Show `User` filter disabled if user has applied `My Role` filter.
        - Shows a custom tooltip message when it's disabled and the user hover on it.
    - Task Type
        - See this for [More details](../tasks/browse-my-tasks.md#task-type)

- APPLY button is disabled until the any of the filter is apply. once the filter is applied, Apply button is enabled. On click of Apply, search query is triggered.
- Reset button is always available to the user. On click of Reset, all filters will be reset to default state and closes the dialogue.
- on click of `X` button, closes the dialogue.
- Shows proper message when matching records not available.


## UI Rule
[Mockups](https://drive.google.com/drive/u/0/folders/1fIm9BsDVMOY0CzQZE43O9URbHoCNZTWY)

- Matching task is not available: `No Results Found` 
- Entity Search tooltip message: `Not available for Entity task search`
- Tootlip message for `User`: `Not available when My Task checkbox is checked`
- Tooltip message for `My Role`: `Not available when My Task checkbox is unchecked`

