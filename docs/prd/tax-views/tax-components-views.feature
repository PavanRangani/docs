Feature: tax-components-views

    Background:
        Given user has `tax components` view 
        And family has some entities which have tax return 
        And logged-in user is in a tax return (filed) as a tax component lead
        And other than logged-in user is in a tax return (not filed) as a tax component lead

    Scenario: tax views > tax component views > browse page 

        When open `tax components` views
        Then shows components records
        And records are primary sorted on family name in alphabetical order
        And secondary sorted on entity name 
        And tertiary sorted on year
        And Under each group records are sorted in ascending order of Name
        And shows `tax component lead`at right side of the entity header.
        And shows the old tax component lead in tax return  that has been filed
        And shows new tax component lead in tax return that has not been filed
        And show `-` where no data available in any columns

    Scenario: tax views > tax component views > export pdf

        When open `tax components` views
        And click on export PDf 
        Then PDF download with porper format
        And shows tax Component Lead user in entity header separated by `|`
        And shows the old tax component lead in tax return  that has been filed
        And shows new tax component lead in tax return that has not been filed
        And shows `-` where no data available in any column

    Scenario: tax views > tax component views > export excel

        When open `tax components` views
        And click on export excel
        Then excel downlaod with proper format
        And shows `tax component lead` in new column
        And shows the old tax component lead in tax return  that has been filed
        And shows new tax component lead in tax return that has not been filed
        And shows blank cell which has no value
        And filter criterias are shown at top in a separate table in defined format

