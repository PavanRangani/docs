Feature: chat-notification-to-ca-user

    Scenario: chat > chat notification > chat-notification-to-ca-user > system send chat notification to all task users except informed user

        Given entity has one task with 2 sub task 
        And User 1 is a CA user in appllication
        And User 2 added as a responsible 
        And CA Pool added as a accountable
        And User 3 added as a informed
        And User 4 adds chat in task
        Then User 1 & User 2 recevied chat notification

    Scenario: chat > chat notification > chat-notification-to-ca-user > system doesn't send chat notification to user of done subtask

        Given entity has one task with 2 sub task 
        And User 1 is a CA user in appllication
        And User 2 added as a accountable
        And User 3 added as a informed
        And User 4 added as a responsible of sub task 1
        And CA Pool added as a responsible of sub task 2
        And sub task 1 is mark as done 
        When User 5 adds chat in task
        Then User 1, User 2 & User 4 recevied chat notification

    Scenario Outline: chat > chat notification >  chat-notification-to-ca-user > system send chat notification only for open & upcoming task

        Given entity has one `"<task>"` 
        And User 1 is a CA user in appllication
        And User 2 added as a responsible 
        And CA Pool added as a accountable
        And User 3 added as a informed
        And User 4 adds chat in `"<task>"`
        Then User 1 & User 2 recevied chat notification

        Examples:
            | task |
            | Open task |
            | Upcoming task |
    

    Scenario Outline: chat > chat notification > chat-notification-to-ca-user > system doesn't allows to send chat notification for completed & deleted task

        Given entity has one `"<task>"` 
        And User 1 is a CA user in appllication
        And User 2 added as a responsible 
        And CA Pool added as a accountable
        And User 3 added as a informed
        And User 4 adds chat in task
        Then system doesn't allows to add chat in `"<task>"` 

        Examples:
            | task |
            | Completed task |
            | Deleted task |