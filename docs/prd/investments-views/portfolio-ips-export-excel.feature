Feature: portfolio-ips-export-excel

        Scenario: investment view > portfolio view > export excel > export as excel 

        Given Family 1 has 6 entities
        And 6 entities have added IPS as following
        """
        | entity | draft | date | portfolio status | type |
        | individual | Yes | 19th Feb 2022 | Yes | Dollar target |
        | patnership | No | 02th march 2023 | No | Dollar target |
        | foundation | Yes | 28th jan 2021 | No | Percent target |
        | joint | No | 21th april 2024 | Yes | Percent target |
        | trust | Yes | 17th july 2021 | Yes | Dollar target| 
        | estate | No | 01st aug 2020 | No | Percent target |
        """
        When User clicks export excel button
        Then excel file will be download with proper format
        And In excel Dollar target type shows amount values
        And Percent target type shows % values
        And Blank cell appear in the range columns of the percent target for the dollar target type
        And Blank cell appear in the range columns of the dollar target for the percent target type
        And Sorting order and layout will be the same as the UI.