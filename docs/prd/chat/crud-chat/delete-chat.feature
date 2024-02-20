Feature: delete-chat

    Scenario Outline: chat > crud chat > delete chat > system allows to add chat only for open & upcoming task

        Given entity has one `"<task>"` with chat 
        When user delete chat from `"<action>"`
        Then shows background message in red colour
        And chat deleted successfully
        And shows proper placeholder message
        And shows date when chat is deleted
        When user hover on deleted date
        Then shows date with proper time 

        Examples:
          | task  | action |
          | open task  | task view dialog |
          | upcoming task  | my chat page |

    Scenario Outline: chat > crud chat > delete chat > system doesn't aalows to delete chat for completed and deleted task 
        
        Given entity has one `"<task>"` 
        And User 1 is added as a responsible 
        And User 2 is added as an accountable 
        And User 3 is added as an informed
        When User 4 opens chat 
        Then system is not allows to delete chat in `"<task>"` 

        Examples:
            | task |
            | Completed task |
            | Deleted task |

     Scenario: chat > crud chat > edit chat > user only delete own chats

        Given entiy has one task with notes 
        And user 1 is added as a responsible
        And user 2 is added as an accountable
        And both users adds some chats
        When user 1 open task view dialog 
        And hover on chat which is added by user 2
        Then system is not allows to delete another users chat 



        