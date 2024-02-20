Feature: mark-as-read-chat-notification

    Scenario: chat > crud chat > mark as read > mark as read from chat notification dialog and task is pined 

        Given user have unread chat notification
        And task is pinned 
        When user mark chat as read form chat notification dialog
        Then chat successfully mark as read 
        And notification count is decreased 
        But task appears in chat notification dialog 
    
    Scenario: chat > crud chat > mark as read > mark as read from chat notification dialog and task is unpined

        Given user have unread chat notification
        When user mark chat as read form chat notification dialog
        Then chat successfully mark as read 
        And chat notification is removed 

    Scenario: chat > crud > mark as read > mark as read from browse page of my task 

        Given user have unread chat notification
        When user open my task page 
        Then shows ornage colour chat icon with task 
        When open task view dialog
        Then chat is mark as read
        And ornage colour is also removed 
