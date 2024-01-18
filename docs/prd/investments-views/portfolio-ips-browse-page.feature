Feature: portfolio-ips-browse-page

    Scenario: investment view > portfolio view > browse > browse portfolio views

        Given user has one Family having 6 entities
        And entities has IPS as follows:
        """
        | entity | draft | date | portfolio status | type |
        | individual | Yes | 19th Feb 2022 | Yes | Dollar target |
        | patnership | No | 02th march 2023 | No | Dollar target |
        | foundation | Yes | 28th jan 2021 | No | Percent target |
        | joint | No | 21th april 2024 | Yes | Percent target |
        | trust | Yes | 17th july 2021 | Yes | Dollar target| 
        | estate | No | 01st aug 2020 | No | Percent target |
        """
        When User open portfolio views
        Then it will shows horizonatal scroll
        When User scroll horizonatally 
        Then Entity Name, Export as Excel and Filter button will be sticky
        And Dollar target type shows amount values
        And Percent target type shows % values
        And A "-" will appear in the range columns of the percent target for the dollar target type
        And A "-" will appear in the range columns of the dollar target for the percent target type
        And Records are sorted alphabetically in order to entity type under each family 