Feature: chat-notification

    Scenario: chat > chat notification > send chat notification all user except informed user
    Scenario: chat > chat notification > send Chat notification when informed user is mentioned


Folder
    - Chat notification to RA user
        - System send Chat notication to only RA user
        - Informed user doesn't receive Chat notification
        - System also send Chat notication for Responsible users of the multi step task
    - Mentioned chat
        - When user mentioned RA user
        - When someone mentioned other user which is not added in RAI roles
        - When informed user is mentioned in Chat notification
    - Send Chat notication to CA users
        - CA user is mentioned in chat
            - system send only one notification to CA user (not 2 like mention + ca user)
        - CA user is also added in RAI roles    
            - Here, I didn't receive notification as task but he receive the Chat notication as CA user
        - CA user is not added in RAI role
    - Browse Chat notification   
        - latest chat is shown at top & Profile picture & task information
        - If task has more than one chat, shows unread chat count at top.
        - Pinned chat or unpinned chat


- Common- Te user mate browse task ma chat icon orange color no dekhase.
    


