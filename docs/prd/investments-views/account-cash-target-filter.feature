Feature account-cash-target-filter

    Scenario investments view > account cash target > filter > apply filter 

        Given User has 2 familes 
        And "<family>" family has 5 active, 1 deceased and 1 terminate entities
        And each of entities has funding accounts
        And User is in Account cash target view
        When user open family filter dropdown 
        Then user shows only Active family having active entities 
        When user apply any filter 
        Then Browse page will show the records according to the criteria of the filter
        And The loader will appear in the table header until the records are fetched
        And the records are primarily sorted alphabetically by family
        And Records are secondary  sorted alphabetically to entity type under each family

        Examples:
             | family | 
             | active |
             | archived |

    Scenario investments view > account cash target > filter > apply filter > export excel
        
        Given User has 2 familes 
        And family has 5 active, 1 deceased and 1 terminate entities
        And User is in Account cash target view
        When user apply any filter
        And clicks export excel button
        Then excel file will be download with proper format
        And Sorting order and layout will be the same as the UI
        And Filter Creteria will be same as applied filter in the acoount target view 
        And If the record has no data, the cell of that column will appear blank


    Scenario investments view > account cash target > filter > apply filter > No records found 

        Given User has 2 familes 
        And familes has 5 active, 1 deceased and 1 terminate entities
        But only 1 family's entities have fuunding accounts
        And User is in Account cash target view
        When user selects family in filter which has no funding accounts
        Then shows No record found 
        And Excel button should be disabled 

        

