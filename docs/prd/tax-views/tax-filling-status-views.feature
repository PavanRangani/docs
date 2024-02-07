Feature:  tax-filing-status-views

  Background:
    Given user has `tax filing status` view 
    And family has some entities which have tax return 
    And logged-in user is in a tax return (filed) as a tax component lead
    And other than logged-in user is in a tax return (not filed) as a tax component lead
  
    Scenario: tax views > tax filing status views > browse page 

      When opens `tax filing status` view 
      Then shows filing status records
      And records are grouped by family in alphabetical order
      And under each family records are sorted in alphabetical order of Legal entity name
      And shows new column `tax component lead`
      And shows the old tax component lead in tax return  that has been filed
      And shows new tax component lead in tax return that has not been filed
      And show `-` where no data available in any columns

    Scenario: tax views > tax filing status views > pdf export

      When opens `tax filing status` views  
      And click on export PDf 
      Then PDF download with porper format
      And shows `tax component lead` in new column
      And shows the old tax component lead in tax return  that has been filed
      And shows new tax component lead in tax return that has not been filed
      And shows `-` where no data available in any column

    Scenario: tax views > tax filing status views > excel export

      When opens `tax filing status` views  
      And click on export Excel 
      Then excel download with porper format
      And shows `tax component lead` in new column
      And shows the old tax component lead in tax return  that has been filed
      And shows new tax component lead in tax return that has not been filed
      And shows blank cell which has no value
      And filter criterias are shown at top in a separate table in defined format

    
