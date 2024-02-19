Feature: edit-chat

     Scenario: chat > crud chat > edit chat > edit exsting chat and change mention user

        Given entity has one task
        And task has chat
        And User 1 is mention in chat 
        And User 2 is added as an responsible 
        When User 3 update in chat
        And mention User 2 insted of User 1 
        Then Chat notification is auto remove in User 1's chat notification dialog 
        And User 2 recevied chat notification

    Scenario: chat > crud chat > edit chat > edit exsting chat and mention user in chat

        Given entity has one task
        And task has chat
        And User 2 is added as an responsible 
        And User 2 is added as an accountable
        When User 3 update in chat
        And mention User 4 in chat 
        Then User 4 recevied chat notification