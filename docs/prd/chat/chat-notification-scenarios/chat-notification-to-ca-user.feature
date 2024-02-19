Feature: chat-notification-to-ca-user

    Scenario: chat > chat notification > chat-notification-to-ca-user > system send chat notification to all task users except informed user

        Given entity has one task with 2 sub task 
        And User 1 is a CA user in appllication
        And User 2 is added as an responsible 
        And CA Pool is added as an accountable
        And User 3 is added as an informed
        And User 4 adds chat in task
        Then User 1 & User 2 received chat notification
        But User 3 isn't received chat notification

    Scenario: chat > chat notification > chat-notification-to-ca-user > system doesn't send chat notification to user of done subtask

        Given entity has one task with 2 sub task 
        And User 1 is a CA user in appllication
        And User 2 is added as an accountable
        And User 3 is added as an informed
        And User 4 is added as an responsible of sub task 1
        And CA Pool is added as an responsible of sub task 2
        And sub task 1 is mark as done 
        When User 5 adds chat in task
        Then User 1, User 2 & User 4 received chat notification
        But User 3 isn't received chat notification

    Scenario: chat > chat notification > chat-notification-to-ca-user > user doesn't received notification when a user is an ca user and ca pool added as an informed role in a task 

        Given entity has one task with 1 sub task 
        And User 1 is a CA user in appllication
        And User 2 is added as an accountable
        And CA Pool is added as an informed
        And User 3 is added as an responsible of sub task 
        When User 4 adds chat in task 
        Then User 2 & User 3 received chat notification
        But User 1 isn't received chat notification

        
    Scenario: chat > chat notification > chat-notification-to-ca-user > user received single notification when ca pool and ca user both added in a task as an accountable and responsible

        Given entity has one task with 1 sub task 
        And User 1 is a CA user in appllication
        And User 1 is added as an accountable
        And User 2 is added as an informed
        And CA Pool is added as an responsible of sub task
        When User 4 adds chat in task 
        Then User 1 received single chat notification
        But User 3 isn't received chat notification
    
    Scenario:  chat > chat notification > chat-notification-to-ca-user > ca pool added as a responsible in task 

        Given entity has one task 
        And User 1 is a CA user in appllication
        And CA Pool added as an responsible
        When User 2 adds chat in task 
        Then User 1 received chat notification


    Scenario:  chat > chat notification > chat-notification-to-ca-user > ca pool added as a accountable and informed

        Given entity has one task
        And User 1 is a CA user in appllication
        And CA Pool added as an accountable & informed
        When User 2 adds chat in task 
        Then User q received chat notification

    Scenario Outline: chat > chat notification >  chat-notification-to-ca-user > system send chat notification only for open & upcoming task

        Given entity has one `"<task>"` 
        And User 1 is a CA user in appllication
        And User 2 is added as an responsible 
        And CA Pool is added as an accountable
        And User 3 is added as an informed
        And User 4 adds chat in `"<task>"`
        Then User 1 & User 2 received chat notification
        But User 3 isn't received chat notification

        Examples:
            | task |
            | Open task |
            | Upcoming task |
    

    Scenario Outline: chat > chat notification > chat-notification-to-ca-user > system doesn't allows to send chat notification for completed & deleted task

        Given entity has one `"<task>"` 
        And User 1 is a CA user in appllication
        And User 2 is added as an responsible 
        And CA Pool added as a accountable
        And User 3 is added as an informed
        When User 4 opens chat 
        Then system is not allows to add chat in `"<task>"` 

        Examples:
            | task |
            | Completed task |
            | Deleted task |