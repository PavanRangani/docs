Feature: portfolio-view

    Background: 
        Given user has one Family having 6 entities
        And entities has IPS as follows:
            """
            | Entity | Draft | Date | Portfolio status | Type |
            | individual | Yes | 19th Feb 2022 | Active | Dollar target |
            | patnership | No | 02th march 2023 | Implementation | Dollar target |
            | foundation | Yes | 28th jan 2021 | Limited | Percent target |
            | joint | No | 21th april 2024 | - (blank) | Percent target |
            | trust | Yes | 17th july 2021 | Active | Dollar target| 
            | estate | No | 01st aug 2020 | Review | Percent target |
            """
    Scenario: investment view > portfolio view  > browse portfolio views

        When user open portfolio views
        Then it shows loader till data is not loaded
        And after loader shows IPS records in list
        And available roles of the team are visible
        And some columns are hidden 
        And shows horizonatal scroll in list
        When user horizonatally scroll the page
        Then shows hidden columns
        And 1st column and headers are sticky
        And draft column shows a tick mark for Draft IPS
        And IPS date shows date of the active or draft IPS
        And status Appear in the Portfolio Status column 
        And IPS records are shown in group by family in alphabetically order
        And under each family group, IPS are primary sorted on entity type
        And secondary sorted on alphabetically order of name
        And before 2023, '-' appears in the range column of IPS
        And Dollar target type IPS shows amount values in some of the columns
        And Percent target type IPS shows % values in some of the columns
        And show `-` where no data available in any columns

    Scenario: investment view > portfolio view > apply filter 
        When user applies any filter
        Then it shows loader till data is not loaded in the header 
        And list page shows the matching records
        When applied filter doesn't have any matching records
        Then list page shows proper message
        
    Scenario: investment view > portfolio view >  apply `show only 1-year old ips` filter
        When user applies `Show only 1-year old IPS` filter 
        Then list page shows IPS whose IPS date is more than 1-year old from current date

    Scenario: investment view > portfolio view >  export as excel 

        When User exports excel file
        Then excel file is downloaded
        When user opens that excel file
        Then it shows IPS records in excel file 
        And available roles of the team are visible
        And yes written in the Draft column for Draft IPS
        And status Appear in the Portfolio Status column
        And IPS records are shown in group by family in alphabetically order
        And under each family group, IPS are primary sorted on entity type
        And secondary sorted on alphabetically order of name
        And Dollar target type shows amount values in amount columns
        And Percent target type shows % values in percent columns
        And shows blank cell which has no value
        And filter criterias are shown at top in a separate table in defined format

    Scenario: investment view > portfolio view > export excel with filtered data

        When user applies filter
        And user download the excel file of filtered data
        Then excel file downloaded with fitlered data
        And filter criteria are shown at top in a separate table according to the applied criteria


    Scenario: investment view > portfolio view > navigate to IPS

        When user clicks on any record
        Then it redirects to the Current IPS tab in the same page 