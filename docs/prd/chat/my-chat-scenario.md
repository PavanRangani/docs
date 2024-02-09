# My Chat Scenario

## Background
Given: User have following families

| Family Name      | Associated                             | Task                                                         |
| ---------------- | -------------------------------------- | ------------------------------------------------------------ |
| Family1          | Yes                                    | Task 1 - Status is Pending and login user is added in RAI roles and Task having Chat<br />Task 2 - Status is Pending and Task doesn't have Chat<br /> Task 3 - Status is other than Done or Pending and login user is added in RAI roles and Task having Chat<br /> Task 4 - Status is other than Done or Pending and Task doesn't have Chat and login user is not added in RAI roles<br /> Task 5 - Status is other than Done or Pending and Task doesn't have Chat and login user is not added in RAI roles<br /> Task 6 - Status is  Done and Task doesn't have Chat |
| Family2          | Yes                                    | Task 1 - Status is Done and having Chat<br />Task 2- Status is Pending and doesn't have Chat<br /> Task 3- Staus is Pending and having Chat |
| Family3          | No                                    | Task 1 - Status is Done and having Chat<br />Task 2- Status is Pending and doesn't have Chat<br /> Task 3- Staus is Pending and having Chat |
| Family4          | No                                    | Task 1 - Status is other than Done and login user doesn't available in RAI of the task and task having Chat |
| Family5          | No                                    | Task 1 - Status is Pending and having Chat and login user is added in RAI roles. |
| Family6          | No                                    | Task 2- Status is other than Done and login user is available in RAI roles and task doesn't have Chat. |

### Scenario: Family Panel
When: User opens My Chat page 
Then: It shows me `Family1` in `My Families` section
And `Family6` in `Other Families` section

### Scenario: Chat in Particular Family
When: User open `Family1`
And: `My Task` toggle is ON
And: `Active Chat` toggle is ON
And: `Only Unread` toggle is OFF
Then: it shows me `Task 3`
When: User turn OFF the `My Tasks` switch
Then: it shows me `Task 3` & `Task 4`
When: User turn OFF the `Active Tasks` switch
Then: it shows me `Task 3` & `Task 4` & `Task 5`
When: User turn ON the `Only Unread` switch
Then: Shows placeholder page `No Matching Task` available (Here consider all Task and Chat notification are mark as read)
When: User open `Family6`
Then: it shows me `Task 3`
And: `My Task` toggle is ON
And: `Active Chat` toggle is ON
And: `Only Unread` toggle is OFF
Then: it shows me `Task 2`


## Bug Scenario: Done task is removed
Given: User have one `Family7` 
And: login user is associated with that family
And: It has one Active task `Task 8`
And: Status of the task is other than Done or Pending
When: User opens the `My Chat` page
Then: it shows me `Family7` in `My Families` section
When: User mark that task as done
Then: task `Task 8` is removed from the `Family7`
And: On refresh of the page, `Family7` is also removed from the `My Chat` page.


