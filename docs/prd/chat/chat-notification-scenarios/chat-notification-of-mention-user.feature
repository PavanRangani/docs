Feature: chat-notification-of-mention-user

    Scenario: chat > chat notification > mention user > shows only active user in dropdown

        Given entity has one tasks
        And User 1 added as a responsible
        When User 2 type `@` in the chat box and type some alphabets
        Then dropdown shows only active user

    Scenario: chat > chat notification > mention user > mentioned ra user in chat 

        Given entity has one task
        And User 1 added as a responsible 
        And User 2 added as a accountable 
        And User 3 added as a informed
        When User 4 adds a chat to a task by mentioning to User 1
        Then User 1 & User 2 recevied chat notification

    Scenario: chat > chat notification > mention user > mentioned informed user in Chat

        Given entity has one task
        And User 1 added as a responsible 
        And User 2 added as a accountable 
        And User 3 added as a informed
        When User 4 adds a chat to a task by mentioning to User 3
        Then User 1, User 2 & User 3 recevied chat notification


    Scenario: chat > chat notification > mention user > mentioned other user which is not added in rai roles

        Given entity has one task
        And User 1 added as a responsible 
        And User 2 added as a accountable 
        And User 3 added as a informed
        When User 4 adds a chat to a task by mentioning to User 5
        Then User 1, User 2 & User 5 recevied chat notification

    Scenario: chat > chat notification > mention user > mention more than one user in chat

        Given entity has one task 
        And User 1 added as a responsible & accountable
        And User 2 added as a informed
        When User 3 adds a chat to a task by mentioning to User 4 & User 5
        Then User 1, User 4 & User 5 recevied chat notification

    
    Scenario: chat > chat notification > mention user > mention same user in multiple time in chat

        Given entity has one task
        And User 1 added as a responsible 
        And User 2 added as a informed
        When User 3 adds a chat to a task by mentioning to User 1 in multiple times
        Then Only User 1 recevied one chat notification

    Scenario: chat > chat notification > mention user > mention user can't recevied more than one notification for chat 

        Given entity has one task 
        And task has chat
        And User 1 is mention in chat 
        And User 2 added as a responsible 
        When User 2 adds new chat 
        Then User 1 doesn't recevied any notification


    




