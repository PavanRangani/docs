Feature: portfolio-ips-filter

    Background:
    Given Family 1 has 6 entities
    And 6 entities have added IPS as following
    """
    | Entity | Draft | Date | Portfolio Status | Type |
    | individual | Yes | 19th Feb 2022 | Yes | Dollar target |
    | patnership | No | 02th march 2023 | No | Dollar target |
    | foundation | Yes | 28th jan 2021 | No | Percent target |
    | joint | No | 21th april 2024 | Yes | Percent target |
    | trust | Yes | 17th july 2021 | Yes | Dollar target| 
    | estate | No | 01st aug 2020 | No | Percent target |
    """

    Scenario: investment view > portfolio view > filter > apply filter 
        When user applies any filter
        Then list page shows the records using filter
        When applied filter doesn't have any matching records
        Then list page shows proper message
        When list page have matching records
        Then shows matching IPS records


    Scenario: investment view > portfolio view > filter > apply show only 1-year old ips filter
        When user select `Show only 1-year old IPS` from filter 
        Then list page shows IPS whose IPS date is more than 1-year old from current date

