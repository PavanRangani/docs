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
        Then shows horizonatal scroll in list
        When user horizonatally scroll the page
        Then `Family Group`, `Entity Name`, `Export as Excel and Filter button is sticky
        And IPS are shown in group by family in alphabetically order
        And under each family group, IPS are primary sorting on entity type
        And Secondary sorting on alphabetically order of name
        And Dollar target type IPS shows amount values in some of the columns
        And Percent target type shows % values in some of the columns
        And show `-` where no data available in any columns 
