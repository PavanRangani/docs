Feature: open-all-components-report

    Scenario Outline: tax > open-all-components-report > export excel : show `auto` flag true for carryforwad components

        Given User has one family having entities 
        And `"<form>"` has 8 components where 4 components are carryforwad
        And 4 components are not carryforwad
        When user export the excel of `"<excel>"`
        Then shows Yes in Auto column for 4 components
        And shows blank cell in Auto column for other 4 components
        When Tax return status is Filed
        And user export the excel of `"<excel>"`
        And Shows Filed On & Filed By in details criteria

        Examples:
            | form | excel |
            | 1040 | Open Tax Component |
            | 1040 | All Tax Component |
            | 709 | Open Tax Component |
            | 709 | All Tax Component |
            | 1065 | Open Tax Component |
            | 1065 | All Tax Component |
            | 1120-S | Open Tax Component |
            | 1120-S | All Tax Component |
            | Partnership - Disregarded entity | Open Tax Component |
            | Partnership - Disregarded entity | All Tax Component |
            | 990PF | Open Tax Component |
            | 990PF | All Tax Component |
            | Estate - 1041 | Open Tax Component |
            | Estate - 1041 | All Tax Component |
            | Trust - 1041 | Open Tax Component |
            | Trust - 1041 | All Tax Component |
            | 5227 | Open Tax Component |
            | 5227 | All Tax Component |
            | Trust - Disregarded entity | Open Tax Component |
            | Trust - Disregarded entity | All Tax Component |


    Scenario Outline: entity status tab > open-all-components-report > export excel : show `auto` flag true for carryforwad components

        Given Entity status tab shows tax return of entity type as follows:
            """
            | entity type |
            | Individual |
            | Joint |
            | Partnership |
            | Foundation |
            | Estate |
            | Trust |
            """
        And Each entity has tax return having carryforwad components
        When user export the excel of `"<excel>"`
        Then shows Yes in Auto column for carryforwad components
        And shows blank cell in Auto column for not carryforwad components
        When Tax return status is Filed
        And user export the excel of `"<excel>"`
        And Filed On & Filed By doesn't appear

        Examples:
            | excel |
            | Open Tax Component |
            | All Tax Component |
            
    

