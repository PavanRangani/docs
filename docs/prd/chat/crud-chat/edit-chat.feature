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

    Scenario: chat > crud chat > edit chat > user only edit own chats

        Given entiy has one task with notes 
        And user 1 is added as a responsible
        And user 2 is added as an accountable
        And both users adds some chats
        When user 1 open task view dialog 
        And hover on chat which is added by user 2
        Then system is not allows to edit another users chat 

    Scenario Outline: chat > crud chat > edit chat > edit mutiple chats at a same time 

        Given user 1 have one task with mutiple chats 
        When user 1 edit chat 1, chat 2 & chat 3 from `"<action>"`
        And save chat 1 & chat 2 
        Then chat edits successfully
        And chat 3 remains as it is 
        And shows update date with chat 1 & Chat 3
        And on hover of date shows date with proper edited time

        Examples:
            | action |
            | task view dialog |
            | my chat page |