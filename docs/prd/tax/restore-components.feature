Feature: restore-components

    Scenario: tax components > restore components > restore possible

    Given `"<entity>"` has tax return 
    And tax return has some deleted components 
    And tax return is not filed
    When user restore component
    Then shows Confirmation dialog 
    When user perform restore action
    Then component restore successfully
    And component moved to all tab 

    Scenario: tax components > restore components > restore is not possible

    Scenario: tax components > restore commponents > components are carry forward to next year 

    Scenario: tax components > restore components > disregarded entity restore is possible when ss of/grantor to tax return for individual is not filed

    Scenario: tax components > restore components > disregarded entity restore not is possible when ss of/grantor to tax return for individual is filed

    Scenario: tax components > restore components > disregarded entity restore is possible when ss of/grantor to tax return for joint is not filed

    Scenario: tax components > restore components >disregarded entity restore is possible when ss of/grantor to tax return for joint is not filed




    