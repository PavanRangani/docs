# Task Count Widget

Note: This feature was removed when we introduced Chat. We wanted to show two separate icons for Tasks and Chats. So after adding it, header becomes congested. 

Widget shows the open tasks counts of the login user where the login user has been added as Responsible.

It shows 3 types of counts – 

- Overdue- It shows count of those tasks whose `Due date` is passed and status is not `Done`.
- This week- It shows count of those tasks whose `Due date` in this week (After the current date to end of the this week) and status is not `Done`. ()
- Next week- It shows count of those tasks whose `Due date` in the next week and status in not `Done`.

This widget will show real time counts.

## UX Rules

This widget is available in application header. Application header is common throughout the application, So widget is visible from any page of the application. 

When any particular count is zero, it will show 0 in widget. When all counts are zero, it will show 0 for all three counts. 

On hover of count, shows tooltip message.

On click of this widget, it navigates user to the  `Open tasks` page.

**Case**

- A task whose due date has passed means that the task is overdue but the due date of that task is in `This Week`. So consider that task as `Overdue`.
  - For e.g. Suppose I have one open task whose due date is `28 Dec, 2021` and current date is `29 Dec, 2021` . So here that task is `Overdue` even if the `Due date` of that task in `this week (26 Dec - 31 Dec)`. 

## UI Notes

Overdue count is shown in red colour. While other counts are shown in white colour

Tooltip message: `bucket name` tasks.

Mockups //TODO



