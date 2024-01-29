Feature: filter

    Scenario: gifting > apply filter > apply filter in given tab

        Given "<entity>" has given multiple gifts as follows:
            """
            | Gift Name | Gift Date | GST |
            | Gift 1 | Jan 01, 2024 | Yes |
            | Gift 2 | Jan 13, 2024 | No |
            | Gift 3 | Mar 12, 2023 | Yes |
            | Gift 4 | Nov 30, 2023 | No |
            | Gift 5 | May 21, 2022 | Yes |
            | Gift 6 | Sep 13, 2022 | No |
            """
        When user select `2022` in From 
        And select Yes in the GST
        Then list page shows all gifts whose GST is Yes
        And gift is is between current date to any date of 2022 year

        Examples:
            | entity |
            | Individual I1 |
            | Joint J1 |


    Scenario: gifting > apply filter > apply filter in received tab

        Given "<entity>" has received multiple gifts as follows:
            """
            | Gift Name | Gift Date | GST |
            | Gift 1 | Jan 01, 2024 | Yes |
            | Gift 2 | Jan 13, 2024 | No |
            | Gift 3 | Mar 12, 2023 | Yes |
            | Gift 4 | Nov 30, 2023 | No |
            """
        When user select `2023` in From 
        And select No in the GST
        Then list page shows all gifts whose GST is No
        And gift is is between current date to any date of 2023 year

        Examples:
            | entity |
            | Individual I2 |
            | Joint J2 |
            | Family Member Individual |
            | Trust (CRUT) | 
            | Trust (CRAT) | 
            | Trust (CLAT) | 
            | Trust (GRAT) |
            | Trust (QPRT) | 
            | Trust (Crummey trust) | 
            | Trust (Non Crummey trust) |