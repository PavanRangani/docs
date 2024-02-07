Feature: open-tax-component-views

    Background:
        Given family has some entities which have tax return 
        And logged-in user is in a tax return (filed) as a tax component lead
        And other than logged-in user is in a tax return (not filed) as a tax component lead

    Scenario: tax views > open tax component > browse page

        When user opens `open tax component view` 
        Then shows all tax components 
        And records are grouped by family in alphabetical order
        And records are primary sorted on entity name in alphabetical order
        And secondary sorted on form
        And tertiary sorted on component name in alphabetical order
        And show `tax component lead` at  right side of the each entity header
        And shows the old tax component lead in tax return  that has been filed
        And shows new tax component lead in tax return that has not been filed
        And shows `-` where no data available in any column

    Scenario: tax views > open tax component > export pdf

        When user opens `open tax component view`
        And click on export pdf
        Then PDF download with porper format
        And shows tax Component Lead user in entity header separated by `|`
        And shows the old tax component lead in tax return  that has been filed
        And shows new tax component lead in tax return that has not been filed
        And shows `-` where no data available in any column


     Scenario: tax views > open component views > export excel

        When user opens `open tax component view` 
        And click on export excel
        Then excel downlaod with proper format
        And shows `tax component lead` in new column
        And shows the old tax component lead in tax return  that has been filed
        And shows new tax component lead in tax return that has not been filed
        And shows blank cell which has no value
        And filter criterias are shown at top in a separate table in defined format