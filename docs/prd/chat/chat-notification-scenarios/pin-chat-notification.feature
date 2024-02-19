Feature: pin-chat-notification

    Scenario: chat > chat notification > pin chat > chat is mark as read

        Given User 1 have pin chat for task 1
        And chat is mark as read
        And User 1 is added as an responsible in task 1
        When User 2 adds new chat in task 1
        Then User 1 recevied pined chat notification

    Scenario: chat > chat notification > pin chat > chat is unread chat

        Given User 1 have pin chat for task 1
        And chat is unread 
        And User 1 is added as an responsible in task 1
        When User 2 adds new chat in task 1
        Then User 1 recevied pined chat notification
        And shows latest notification 