Feature: quick-reply-from-chat-notification

    Scenario: chat > crud chat > quick reply > quick reply from chat notification 

        Given user have one unread chat notification
        When user opens chat notification  
        And clicks on quick reply
        Then opens empty chat box
        And other action is not visible 
        And send button is disabled 
        When user write anything in chat box 
        Then send button becomes enabled
        When user send reply 
        Then shows toast message 
        And chat notification is auto mark as read

    Scenario: chat > crud chat > quick reply > reply multiple chat

        Given user have some unread chat notifications
        When user opens chat notification
        Then shows latest chat at top
        When user clciks on quick reply for chat 1 & chat 2 
        Then open empty chat box with each chats
        When user write anything in chat box 
        Then send button becomes enabled
        When user send reply 
        Then shows toast message 
        And chat notification is auto mark as read
 

