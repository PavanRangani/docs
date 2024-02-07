Feature: filter-open-tax-component

    Scenario: tax view > open tax component > filter 

        Given `Bhargav` added as a tax component lead in some families in year 2023
        And `Ravi`added as a tax component lead in some families in year 2022
        When user opens `open tax comp view`
        Then shows all records of all tax component lead users
        When user select `Bhargav` in tax co lead filter
        And 2023 in year filter
        Then shows only those records where `Bhargav` added as a tax component lead
        When user change year to 2022 
        Then tax component lead filter will be reset 
        And shows all records of all tax component lead users of 2022
        When user opens `tax component lead` filter dropdown 
        Then `Bhargav` is remove from `tax component lead` dropdown
        And shows `Ravi` in dropdown
        When user select `Ravi` 
        Then shows only those records where `Ravi` added as a tax component lead

