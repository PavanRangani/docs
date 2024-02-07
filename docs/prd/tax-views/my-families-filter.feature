Feature: my-families-filter

  Scenario Outline: tax views > my families filter > login user is associated as a tax component lead but not associated with household
    
    Given Application has some families 
    And login user is associated as a tax component lead in some families
    And login user is not associated with household in any entity in the family
    And some entities have text returns
    And user has view using `My families` filter in "<views>"
    And some entities don't have tax returns
    When user opens the view from "<views>"
    Then shows only those families entities tax return where login user is associated as tax component lead in family

    Examples: 
      | views |
      | Tax filing status |
      | Tax Components |
      | Tax Payments |

  Scenario: tax views > my families filter > login user is associated as a tax component lead and associated with household

    Given Application has some families 
    And login user is associated as a tax component lead in some families
    And login user is associated in some entities with household in the family
    And some entities have tax returns
    And some entities don't have tax returns
    And user has view using `My families` filter in "<views>"
    When user opens the view from "<views>"
    Then shows families entities tax return where login user is associated as tax component lead in family
    And shows families entities tax where login user associated with household in family 


    Examples:
      | views |
      | Tax filing status |
      | Tax Components |
      | Tax Payments |

  Scenario: tax views > my families filter > login user is not associated as a tax component lead but associated with household  

    Given Application has some families 
    And login user is not associated as a tax component lead in any family
    And login user is associated in some entities with household in the family
    And some entities have tax returns
    And some entities don't have tax returns
    And user has view using `My families` filter in "<views>"
    When user opens the view from "<views>"
    Then shows only those families entities tax where login user associated with household in family 

    Examples: 
      | views |
      | Tax filing status |
      | Tax Components |
      | Tax Payments |

Scenario: tax views > my families filter > login user is not associated as a tax component lead and not associated with household  

    Given Application has some families 
    And login user is not associated as a tax component lead in any family
    And login user is not associated in some entities with household in the family
    And some entities have text returns
    And some entities don't have tax returns
    And user has view using `My families` filter in "<views>"
    When user opens the view from "<views>"
    Then shows no records 
    And  list page shows proper message

    Examples: 
      | views |
      | Tax filing status |
      | Tax Components |
      | Tax Payments |
