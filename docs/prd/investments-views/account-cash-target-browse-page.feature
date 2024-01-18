Feature account-cash-target-browse-page

    Scenario investments view > account cash taget > browse > browse page 

        Given Family 1 has various entities having funding accounts 
        And the total number of funding accounts is more than 50
        When the user opens the account cash target view
        Then shows the loader on the user's browse page until records are fetched 
        And the records are primarily sorted alphabetically by family
        And Records are secondary  sorted alphabetically to entity type under each family
        And Columns that have no data will show "-"
        When the user scrolls down
        Then user will see pagination after 50 records
        And after pagination, it will show the available records