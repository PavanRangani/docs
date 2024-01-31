Feature: account-cash-target

    Background:
        Given application various entities having funding accounts 
        And total number of funding accounts is more than 50

    Scenario: investments view > account cash taget > browse page 

        When user opens the account cash target view
        Then shows loader in the page till records are loaded
        And after loader shows funding accounts list
        And records are grouped by family in alphabetical order
        And records are primarily sorted on entity type 
        And secondary sorted on alphabetical order of entity name
        And shows Entity ID in a proper format 
        And shows funding account number in a proper format
        And shows `-` for columns which has no data
        When user scrolls the page
        Then shows loader at the bottom
        And shows next 50 records

    Scenario: investments view > account cash taget > navigate to workspace tab

        When user clicks on any record
        Then user redirected to the Workspace tab in new page.

    Scenario: investments view > account cash target > apply filter 

        When user open family or entity filter dropdown 
        Then shows only active family or active entities 
        When user applies any filter
        Then loader will appear in the table header till te records are loaded
        And  after loadeer list page shows matching records 
        When applied filter doesn't have any matching records
        Then list page shows proper message 
        And excel button is disabled

    Scenario: investments view > account cash target > export as excel 

        When user clicks export excel button
        Then excel file downloaded with proper format
        And records are grouped by family in alphabetical order
        And records are primarily sorted on entity type 
        And secondary sorted on alphabetical order of entity name
        And shows empty cell which has no records available
        And shows filter criteria at a top with a defined format

     Scenario: investments view > account cash target > export filtered data 
        
        When user apply any filter
        And clicks export excel button
        Then excel file will be download
        And data appears as the filter is applied
