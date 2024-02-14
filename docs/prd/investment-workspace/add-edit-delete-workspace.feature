Feature: add-edit-delete-workspace

    Scenario: investment workspace > add > initial draft workspace

        Given user add new entity
        When user opens workspace tab 
        Then shows draft tag 
        And history tab is disable

    Scenario: investment workspace > edit > edit draft workspace

        Given entity has draft version of workspace
        And some of sections has data 
        When user open current tab of workspace
        Then shows data in some sections
        And draft tag is visible
        When user changes anything in any section
        And save the changes 
        Then section details changed successfully
        And shows updated details in browse page 
        And draft tag is visible 

    Scenario: investment workspace > edit > edit published workspace

        Given entity has published version of workspace
        And some of sections has data 
        When user open current tab of workspace for entity
        Then  shows data in some sections
        And draft tag is not visible
        When user changes anything in section
        And save the changes 
        Then section details changed successfully
        And shows updated details in browse page 
        And draft tag is not visible 

    Scenario: investment workspace > delete > delete draft version > delete possible

        Given entity has draft version of workspace
        And entity has some historical versions
        And entity has portfolio notes
        And draft tag is visible
        When user delete draft version of workspace
        Then shows delete confirmation dialog 
        When user perform delete action 
        Then draft version is deleted successfully
        And latest historical version moved to current tab 
        And draft tag is not visible
        And portfolio notes are not deleted
        And amendmend details of historical version are not visible
           

    Scenario: investment workspace > delete > delete draft version > delete not possible

        Given entity has draft version of workspace
        And entity doesn't have any historical version
        And draft tag is visible 
        When user delete draft version of workspace
        Then delete action is not available

          
    Scenario: investment workspace > delete > delete published version > delete possible

        Given entity has publish version of workspace
        And draft tag is not visible 
        And entity has portfolio notes
        And entity has one historical versions
        When user delete publish version of workspace
        Then shows delete confirmation dialog 
        When user perform delete action 
        Then publish version is deleted successfully
        And latest histrory version moved to current tab 
        And amendmend details are removed 

    Scenario Outline: investment workspace > delete > delete published version > delete not possible
    
        Given entity has publish version of workspace
        And draft tag is not visible 
        And entity doesn't have any historical version
        When user delete publish version 
        Then delete action is not available

    

