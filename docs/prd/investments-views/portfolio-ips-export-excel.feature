Feature: portfolio-ips-export-excel

        Background: 
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
        Scenario: investment view > portfolio view > export excel > export as excel 
                When User clicks export excel button
                And excel file is downloaded
                When user opens that excel file
                Then IPS records are primary sorted on Family namae
                And secondary sorting on entity type
                And territory sorting on alphabetical order of entity name
                And Dollar target type shows amount values in amount columns
                And Percent target type shows % values in percent columns
                And shows blank cell which has no value

        Scenario: investment view > portfolio view > export excel > export excel with filtered data
                When user applied filter
                And user download the excel file of filtered data
                Then excel file downloaded with fitlered data

