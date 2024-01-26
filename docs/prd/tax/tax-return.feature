Feature: tax-return

  Scenario Outline: tax > tax return file is possible with deleted components

   Given `"<entity>"` has a tax return
   And tax return has some received and deleted components
   And some deleted components have pending status
   When user files a tax return
   Then tax return is successfully filed

   Examples:
      | entity |
      | Individual I1 |
      | Joint J1 |
      | Trust T1 |
      | Partnership P1 |
      | Foundation F1 |
      | Estate E1 |

  Scenario Outline: tax > tax return file possible 

    Given `"<entity>"` has a tax return
    And tax return has received components
    When user files a tax return
    Then tax return is successfully filed
    
    Examples:
      | entity |
      | Individual I1 |
      | Joint J1 |
      | Trust T1 |
      | Partnership P1 |
      | Foundation F1 |
      | Estate E1 |

  Scenario Outline: tax >  tax return file not possible with deleted components

    Given `"<entity>"` has a tax return
    And tax return has some pending and deleted components
    And some deleted components have pending status
    When user files a tax return
    Then shows error message 
    And tax return is not filed

  Examples:
      | entity |
      | Individual I1 |
      | Joint J1 |
      | Trust T1 |
      | Partnership P1 |
      | Foundation F1 |
      | Estate E1 |

  Scenario Outline: tax >  tax return file not possible

    Given `"<entity>"` has a tax return
    And tax return has some pending and received components
    When user files a tax return
    Then shows error message 
    And tax return is not filed

  Examples:
      | entity |
      | Individual I1 |
      | Joint J1 |
      | Trust T1 |
      | Partnership P1 |
      | Foundation F1 |
      | Estate E1 |