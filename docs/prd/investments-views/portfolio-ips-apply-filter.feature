Feature: portfolio-ips-filter

     Scenario: investment view > portfolio view > filter > apply filter 

        
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
        When User will apply any filter
        Then Browse page will show the records according to the criteria of the filter
        And if there are no records according to the criteria of the filter
        Then it will not see any records in the browse page
        And Dollar target type shows amount values
        And Percent target type shows % values
        And A "-" will appear in the range columns of the percent target for the dollar target type
        And A "-" will appear in the range columns of the dollar target for the percent target type
        And Records are sorted alphabetically in order to entity type under each family 
        When user will download excel after applying filter criteria
        Then it will show the records in excel according to the filters criteria
        And Sorting order and layput will be same as the UI.

    Scenario: investment view > portfolio view > apply filter  > Show only 1-year old IPS

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
        When User apply Show only 1-year old IPS filter 
        Then It will shows only those IPS whose date is more than 1-year old from current date
        And Dollar target type shows amount values
        And Percent target type shows % values
        And A "-" will appear in the range columns of the percent target for the dollar target type
        And A "-" will appear in the range columns of the dollar target for the percent target type
        And Records are sorted alphabetically in order to entity type under each family
        When user will download excel after applying filter criteria
        Then it will show the records in excel according to the filters criteria
        And Sorting order and layput will be same as the UI.
