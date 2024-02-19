Feature: add-chat

    Scenario: chat > crud chat > add chat > add new chat 

        Given entity has one task
        And task has no chat 
        And User 1 is added as a responsible
        And User 2 is added as an accountable
        And User 3 is added as an informed 
        When User 1 adds chat in task 
        Then chat added successfully 
        And shows creatd date with chat
        And on hover of date shows proper time where chat is added 

    Scenario: chat > crud chat > add chat > other than rai user adds chat 

        Given entity has one task with chat 
        And User 1 is added as a responsible
        And User 2 is added as an accountable
        And User 3 is added as an informed 
        When User 4 adds chat in task
        Then chat added successfully 

    Scenario Outline: chat > crud chat > add chat > add a new chat to a user existing task that already has a chat

        Given entity has one task with chat 
        And User 1 is added as a responsible
        And User 2 is added as an accountable
        And User 3 is added as an informed 
        When user 1 adds chat in task from `"<action>"`
        Then chat added successfully 

        Examples:
            | action |
            | Task view dialog |
            | My chat page |
            | Chat norification |

    Scenario Outline: chat > crud chat > add chat > system allows to add chat only for open & upcoming task

        Given  entity has one `"<task>"`
        And User 1 is added as a responsible
        And User 2 is added as an accountable
        And User 3 is added as an informed 
        When User 1 adds chat in task 
        Then chat added successfully 

        Examples:
            | task |
            | open task |
            | upcoming task|

    Scenario Outline: chat > crud chat > chat-notification-to-ra-user > system doesn't allows to add chat for completed & deleted task

        Given entity has one `"<task>"` 
        And User 1 is added as a responsible 
        And User 2 is added as an accountable 
        And User 3 is added as an informed
        When User 4 opens chat 
        Then system is not allows to add chat in `"<task>"` 

        Examples:
            | task |
            | Completed task |
            | Deleted task |



