Feature: browse-workspace

    Scenario: investment workspace > browse workspace > browse current draft version

        Given entity has draft version of workspace
        And current tab appers enabled 
        And some of sections has data 
        And some of section has notes
        And entity has some funding accounts (active + dispoed)
        And entity has some capital call and distribution type activities 
        And entity has data in annual cash flow table 
        And entity has data Portfolio Constraints and Considerations (Pulled from IPS)
        When user open current tab of workspace for entity
        Then shows data in some sections
        And shows draft tag
        And shows portfolio notes
        And shows entity name in the Overview & Preferences section
        And shows notes in multiline where its too long
        And shows latest data of private capital target
        And shows all funding accounts (active + dispoed)
        And shows latest data of Cash Sources & Uses 
        And shows latest data of annual cash flow 
        And shows latest data of Portfolio Constraints and Considerations
        And shows '-' where no data available in any column
        And way to PDF export is available


    Scenario: investment workspace > browse workspace > browse current publish version

        Given entity has published version of workspace
        And current tab appers enabled 
        And some of sections has data 
        And some of section has notes
        And entity has some funding accounts (active + dispoed)
        And entity has some capital call and distribution type activities 
        And entity has data in annual cash flow table 
        And entity has data Portfolio Constraints and Considerations (Pulled from IPS)
        When user open current tab of workspace for entity
        Then shows data in some sections
        And shows portfolio notes
        And shows entity name in the Overview & Preferences section
        And shows notes in multiline where its too long
        And shows latest data of private capital target
        And shows all funding accounts (active + dispoed)
        And shows latest data of Cash Sources & Uses 
        And shows latest data of annual cash flow 
        And shows latest data of Portfolio Constraints and Considerations
        And shows '-' where no data available in any column
        And way to PDF export is available
        

    Scenario: investment workspace >  browse workspace > browse historical versions

    Given entity has some historical versions 
    And history tab appers enabled
    When user open history tab of workspace for entity
    Then shows historical versions
    And versions are sorted on descending order of Date
    And shows amendmend date & notes
    And way to PDF export with each version is available


    Scenario: investment workspace >  browse workspace > browse single historical version

    Given entity has some historical versions 
    And details of versions are as follows
    """
    | Version | Funding account |
    | V1 | 5 funding accounts |
    | V2 | no funding account |
    """
    And history tab appers enabled 
    When user open history tab of workspace for entity
    Then shows historical versions
    When user click on any version
    Then shows view dialog of selected version
    And shows amendmend details at top
    And shows private capital target filed with proper message 
    And shows only those funding a/c which has data while amend workspace
    And shows Cash Sources & Uses section with proper message 
    And shows annual cash flow section with proper message 
    And shows Portfolio Constraints and Considerations section with proper message 
    And historical verison has no other actions available
    And shows `-` where any column has no data 

