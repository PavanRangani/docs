Feature: amend-publish-workspace

    Scenario: investment workspace > amend/published > amend workspace

        Given entity has published version of workspace
        And entity doesn't have any historical version
        And entity has portfolio notes
        When user amend current version of workspace
        Then shows amend confirmation dialog
        And system ask note and date in dialog
        And there is no logic in amend date filed 
        When user perform amend action 
        Then current version amended successfully
        And current version moved to history tab
        And portfolio notes are not amendmend
        And shows new workspace in current tab
        And shows pre-filled data from the old workspace to the new workspace
        And shows draft tag in new workspace

    Scenario: > investment workspace > amend/published > amend workspace > date is grater than latest historical version

        Given entity has published version of workspace
        And entity has 2 verisons in history tab 
        And amendmend date of both verisons are as follows
        """
        | Versions | Amend date |
        | V1 | 01th Jan 2024 |
        | V2 | 28th Nov 2023 |
        """
        When user amend current version
        And set amend date less than latest historical version date 
        Then shows error message 
        And current version is not amend 

    Scenario: investment workspace > amend/published > amend not possible for draft workspace

        Given entity has draft version of workspace
        When user amend workspace
        Then amend action is not available

    Scenario: investment workspace > amend/publish > publish workspace

        Given entity has draft version of workspace
        And draft tag is visible  
        When user publish current draft version of workspace
        Then shows publish confirmation dialog
        When user perform publish action
        Then draft version successfully published
        And draft tag is not visible

     Scenario: investment workspace > amend/published > publish not possible for published workspace

        Given entity has publish version of workspace
        When user publish workspace
        Then publish action is not available
