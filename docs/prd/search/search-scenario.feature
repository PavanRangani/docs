Feature: search-scenario

    Scenario: search > family member individual > shows tag for family member contact

        Given family has one family member individual `Mary Alberg`
        When user search `Mary Alberg` in global search
        Then result shows family member individual `Mary Alberg`
        And shows `Family Member` tag


    Scenario: search > family member individual > shows tag for deceased family member contact

        Given family has one deceased family member individual `Carry Alberg`
        When user search `Carry Alberg` in global search
        Then result shows family member individual `Carry Alberg`
        And shows `Family Member` tag for Carry Alberg
        And shows `Deceased` tag for Carry Alberg
