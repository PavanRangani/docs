Feature: chat-notification-to-ra-user

    Scenario: chat > chat notification > chat-notification-to-ra-user > system send chat notification to all task's users except informed user

        Given entity has one task 
        And User 1 is added as an responsible 
        And User 2 is added as an accountable 
        And User 3 is added as an informed
        When User 4 adds chat in task 
        Then User 1 & User 2 received chat notification
        But User 4 isn't received chat notification

    Scenario: chat > chat notification > chat-notification-to-ra-user > system doesn't send chat notification to user of done subtask

        Given entity has one task with 2 sub task 
        And User 1 is added as an accountable 
        And User 2 is added as an informed
        And User 3 is added as an responsible of sub task 1
        And User 4 is added as an responsible of sub task 2
        And sub task 1 is mark as done 
        When User 5 adds chat in task
        Then User 1 & User 4 recevied chat notification
        But User 2 & User 4 isn't received chat notification 

    Scenario Outline: chat > chat notification > chat-notification-to-ra-user > system send chat notification only for open & upcoming task

        Given entity has one `"<task>"` 
        And User 1 is added as an responsible 
        And User 2 is added as an accountable 
        And User 3 is added as an informed
        When User 4 adds chat in task 
        Then User 1 & User 2 recevied chat notification
        But User 3 isn't received chat notification

        Examples:
            | task |
            | Open task |
            | Upcoming task |

    Scenario Outline: chat > chat notification > chat-notification-to-ra-user > system doesn't allows to send chat notification for completed & deleted task

        Given entity has one `"<task>"` 
        And User 1 is added as an responsible 
        And User 2 is added as an accountable 
        And User 3 is added as an informed
        When User 4 opens chat 
        Then system is not allows to add chat in `"<task>"` 

        Examples:
            | task |
            | Completed task |
            | Deleted task |

