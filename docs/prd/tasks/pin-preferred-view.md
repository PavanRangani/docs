# Pin Preferred View

When user opens My task or Group tasks page, it opens with some default filter criterias. Many user always wants to see this page with some filters set. So those users need to always change the filter when they come to this page. To make their life easy, we have provided this feature so that user can set default filters as per his need.


## System Rule
- Applicable for Group task and My Task page.
- By default, tasks appears based on some default filters. Users can change this default as per his need.
- Dfault filters is managed for each user. E.g. If one user sets a default filters for an open task, other users can't use that. 
- When a user sets a default filter view for any page, the default filter view of that page will be changed for that user. So when the user reopens that page, the tasks will be shown according to the new default filter view.

## UX Rule

- Shows pin icon when the user changes the default filter view. On click, the system marks that filter as default.
- Shows RESET button when a filter is not in a default state. On Reset, set filters back to the default. Default can be either system default or user defined defaults.
- On hover of Pin icon, show the tooltip message.

## UI Rule
[Mockup](https://drive.google.com/file/d/1JZ3_FAgEF1MS94KXmYqW3vGO1NZjCayj/view?usp=sharing)
- Tooltip message: `Set as Default`

