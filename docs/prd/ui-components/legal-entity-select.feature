Feature: legal-entity-select

    Scenario: search > family member individual > shows tag for family member contact

        Given family has one family member individual `Mary Alberg`
        When user search `Mary Alberg` in entity search
        Then result shows family member individual `Mary Alberg`
        And shows `Family Member` as word in secondary information