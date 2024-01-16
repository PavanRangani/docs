Feature: tax-component-lead

    Scenario: admin console > tax-component-lead > Browse family

    Given user has 6 families where 3 families has Tax Component lead
    And 3 families has no tax component lead set
    When user opens the Tax Component Lead from the Admin console
    Then it shows 6 families in alphabetical order
    And 3 families have tax component lead
    And 3 families are blank


    Scenario: admin console > tax-component-lead > excel export

    Given user has 6 families where 3 families has Tax Component lead
    And 3 families has no tax component lead set
    And user open the Tax Component Lead from the Admin console
    When user export the excel
    Then excel file is downloaded with proper format