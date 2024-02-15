Feature: edit-chat

     Scenario: chat > crud chat > edit chat > edit exsting chat and change mention user

        Given entity has one task
        And task has chat
        And User 1 is mention in chat 
        And User 1 added as a responsible 
        And User 2 added as a accountable
        When User 3 update in chat
        And mention User 4 insted of User 1 
        Then Chat notification is auto remove in User 1's chat notification
        And User 4 recevied chat notification

    Scenario: chat > crud chat > edit chat > edit exsting chat and mention user in chat

        Given entity has one task
        And task has chat
        And User 1 added as a responsible 
        And User 2 added as a accountable
        When User 3 update in chat
        And mention User 4 in chat 
        Then User 4 recevied chat notification

cover - when chat is edited, system doesn't send chat notification