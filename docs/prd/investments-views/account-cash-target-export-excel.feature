Feature account-cash-target-export-excel

    Scenario investments view > account cash target > export excel > export as excel 

        Given Family 1 has various funding accounts in multiple entities
        And User is in Account cash target view
        When User clicks export excel button
        Then excel file will be download with proper format
        And Sorting order and layout will be the same as the UI
        And Filter Creteria will be same as applied filter in the acoount target view 
        And If the record has no data, the cell of that column will appear blank
