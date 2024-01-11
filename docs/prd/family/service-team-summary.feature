Feature: service-team-summary

Scenario: family > service-team-summary > Family has no entity

    Given Family has no any entity available
    When User opens the “Service team summary” page
    Then page is shown empty
    And Quick team update button is not appear 


Scenario: family > service-team-summary > family has entity but no household available

    Given Family has 4 Individuals, 1 Joint, 2 Partnership, 2 Foundation, 2 Estate & 2 Trusts
    And Household is set to No 
    When User opens the “Service team summary” page
    Then page is shown empty

Scenario: family > service-team-summary > family has household entity

    Given Family has 2 individual & 2 Joint whouse Household is Yes
    When User opens the “Service team summary” page
    Then Page shows only Household section with 4 entities
    And entities are alphabetical sorted 
    And Quick team update button is appear 

Scenario: family > service-team-summary > family has entity but no ASA entity available

    Given Family has 2 Partnership, 2 Foundation, 2 Estate & 2 Trusts
    And ASA entity is No 
    When User opens the “Service team summary” page
    Then no entities shown 
    And Quick team update button is not appear 

Scenario: family > service-team-summary > family has ASA entities
    Given Family has 2 Partnership, 2 Foundation, 2 Estate & 2 Trusts whose ASA entity is Yes
    When User opens the “Service team summary” page
    Then Page shows only ASA entity section with all 8 entites in proper order
    And Quick team update button is appear 


Scenario: family > service-team-summary > family has Household/ASA entity

    Given Family has 2 individual & 2 Joint whouse Household is Yes
    And Family has 2 Partnership, 2 Foundation, 2 Estate & 2 Trusts whose ASA entity is Yes
    When User opens the “Service team summary” page
    Then Page shows Household & ASA entity section with all entities in proper order
    And Quick team update button is appear 


Scenario: family > service-team-summary > Browse Entities - Household

    Given Family F1 has four Entity R1, M2, A3, C4 & Partnership P1, Foundation F2, Estate E3 & Trust T4
    And entity R1, M2, A3, C4 household is Yes
    And entity P1, F2, E3, T4 ASA Entity is Yes 
    And Entity R1 has 2 users in the Director role where one user is mark as lead
    And Entity M2 has 2 users in the Personal Controller role where one user is mark as lead
    And Entity M2 has 2 users in the Reconciliation role where one user is mark as lead
    And Entity A3, C4 has single user in Advisor
    And Partnership P1 has 2 users in the Director role where one user is mark as lead
    And Trust T4 has 2 users in the Personal Controller role where one user is mark as lead
    And Trust T4 has 2 users in the Reconciliation role where one user is mark as lead
    And Estate E3 & Foundation F2 has single user in Advisor
    When user opens the “Service team summary” page
    Then Mark as Lead user shows First for Entity R1, M2, P1 & T4
    And Personal Controller role is shown first & Reconciliation role is shown second for Entity M2, T4.


Scenario: family > service-team-summary > Change entity's team for any entity
Given Service team summary page has 3 entities
And entity `E2` is selected as a service team for one Individual `I1`
And Individual `I1` has triggers where trigges roles are available in the household team of entity `E2` 
When user change the household team of the entity `E2` which are added in the trigger of the I1
Then system updates the household team of Individual `I1`
And system updates the trigger instances of the Individual I1

