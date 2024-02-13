Feature: new-reopen-restored-tag

    Scenario: task > browse my task > new-reopen-restore tag > new tag > task added to queue

        Given Application has 4 active users
        When `Sheetal` add new task 
        And assign `Bhargav` as a responsible
        And assign `Ravi` as a accountable
        And assign `Pavan` as a informed
        Then All RAI users see task with new tag 

    Scenario: task > browse my task > new-reopen-restore tag > new tag > when logged in user adds a new task he will not see tag

        Given Application has 4 active users
        When `Sheetal` add new task 
        And assign `Sheetal` as a responsible
        And assign `Ravi` as a accountable
        And assign `Pavan` as a informed
        Then All `Ravi` & `Pavan` shows task with new tag 
        But `Sheetal` won't see any new tag with task 
        
    Scenario: task > browse my task > new-reopen-restore tag > reopen tag > reopen completed task 

        Given user has one completed task 
        And `Bhargav` added as a responsible
        And `Ravi` added as a accountable
        And `Pavan`added as a informed
        When `Sheetal` reopen task 
        Then task moved to open
        And All RAI users shows task with reopen tag

    Scenario: task > browse my task > new-reopen-restore tag > reopen tag > see always latest tag
       mari queue ma new task add thayu hatu ane ar have done thae gyu che and pachi reopen thyu che. (aa badhu thyu tyare me ek pan tag ne remove karelo hato nahi) to mne lastest tag j dekhase.

        Given Application has 2 avtive users
        When `Sheetal` add new task 
        And assign `Bhargav` as a responsible
        Then task added successfully 
        When Sheetal mark task as done 
        Then Task moved to open tab 
        When sheetal Reopen task 
        Then Task moved to completed tab
        When`Bhargav` Open my task page
        Then shows task with reopen tag

    Scenario: task > browse my task > restored tag > restore deleted task 

        Given user has one delete task 
        And `Bhargav` added as a responsible
        And `Ravi` added as a accountable
        And `Pavan`added as a informed
        When `Sheetal` restore task 
        Then task moved to open
        And All RAI users shows task with restored tag

    Scenario Outline: task > browse my task > new-reopen-restore tag > mark as read

        Given user has `"<tag>"` tag some in open tasks
        And user has also task notification according to tag
        When user perform mark as read from `"<action>"`
        Then tag is removed from task 
        And notification is also removed for that task

        Examples: 
            | tag | action |
            | new | task view dialog |
            | reopen | task vetmore |
            | restored | task notification dialog |

Mark as read

    - Browse task
        - open task view dialog
        - click on Mark as read action in vertmore

    - task notification dialog 

    - My Chat