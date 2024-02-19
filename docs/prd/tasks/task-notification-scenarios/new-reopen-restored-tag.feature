Feature: new-reopen-restored-tag

    Scenario: task > browse my task > new-reopen-restore tag > new tag > task added to queue

        Given Application has 4 active users
        When `Sheetal` add new task 
        And assign `Bhargav` as an responsible
        And assign `Ravi` as an accountable
        And assign `Pavan` as an informed
        Then All RAI users see task with new tag 

    Scenario: task > browse my task > new-reopen-restore tag > new tag > when logged in user adds a new task he will not see tag

        Given Application has 4 active users
        When `Sheetal` add new task 
        And assign `Sheetal` as an responsible
        And assign `Ravi` as an accountable
        And assign `Pavan` as an informed
        Then All `Ravi` & `Pavan` shows task with new tag 
        But `Sheetal` won't see any new tag with task 
        
    Scenario: task > browse my task > new-reopen-restore tag > reopen tag > reopen completed task 

        Given user has one completed task 
        And `Bhargav` is added as an responsible
        And `Ravi` is added as an accountable
        And `Pavan`added as an informed
        When `Sheetal` reopen task 
        Then task moved to open
        And All RAI users shows task with reopen tag

    Scenario: task > browse my task > new-reopen-restore tag > reopen tag > see always latest tag
      
        Given Application has 2 avtive users
        When `Sheetal` add new task 
        And assign `Bhargav` as an responsible
        Then task added successfully 
        When Sheetal marks task as done 
        Then Task moved to completed tab 
        When sheetal Reopen task 
        Then Task moved to open tab
        When `Bhargav` Open my task page
        Then shows task with reopen tag

    Scenario: task > browse my task > restored tag > restore deleted task 

        Given user has one delete task 
        And `Bhargav` is added as an responsible
        And `Ravi` is added as an accountable
        And `Pavan`added as an informed
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