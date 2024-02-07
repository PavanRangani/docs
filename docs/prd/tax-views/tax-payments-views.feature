Feature: tax-payments-views

    Background:
        Given user has `tax payments` view 
        And family has some entities which have tax return 
        And logged-in user is in a tax return (filed) as a tax component lead
        And other than logged-in user is in a tax return (not filed) as a tax component lead

    Scenario: tax views > tax payments views > browse page 

        When opens `tax payments` views 
        Then shows tax payments records
        And records group by Family name in alphabetical order
        And under each gruop records are primary sorted of entity name in alphabetical order
        And secondary sorted on year 
        And tertiary sorted on type 
        And shows `tax component lead` in new column
        And shows the old tax component lead in tax return  that has been filed
        And shows new tax component lead in tax return that has not been filed
        And shows `-` where no data available in any column

    Scenario: tax views > tax payments views > export pdf 

        When opens `tax payments` views 
        And click on export PDf 
        Then PDF download with porper format
        And shows `tax component lead` in new column
        And shows the old tax component lead in tax return  that has been filed
        And shows new tax component lead in tax return that has not been filed
        And shows `-` where no data available in any column
        
      Scenario: tax views > tax component views > export excel

        When opens `tax payments` views 
        And click on export excel
        Then excel downlaod with proper format
        And shows `tax component lead` in new column
        And shows the old tax component lead in tax return  that has been filed
        And shows new tax component lead in tax return that has not been filed
        And shows blank cell which has no value
        And filter criterias are shown at top in a separate table in defined format
