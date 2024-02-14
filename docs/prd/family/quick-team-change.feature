Feature: quick-team-change

Scenario: family > quick team change > button is not available when family has no entity available

    Given Family has no any entity available
    When User opens the “Service team summary” page
    Then page is shown empty
    And button is not appear 

Scenario: family > quick team change > button is not available when family hasn’t “Household/ASA Entity = Yes”

    Given Family has 8 Individuals, 1 Joint, 2 Partnership, 2 Foundation, 2 Estate & 2 Trusts
    And Household or ASA entity is set to No for all entities
    When User opens the “Service team summary” page
    Then shows proper message 
    And button is not appear 
    When user set the household of any Individual or Joint to Yes 
    And user open the “Service team summary” page
    Then page shows only Household section
    And button is appears
    When user set the ASA entity for 1 partnership or 1 foundation or 1 Trust or 1 Estate
    And set the ASA entity = Yes 
    And Service team = own
    Then page shows both Household & ASA Entity section
    And button is appears 
    When user set the household = no for Joint & Individual 
    And opens the “Service team Summary” page
    Then page shows only ASA Entities section
    And button appears.


Scenario: family > quick team change > `which user` dropdown only shows users who have been added to household/asa entity in the family

    Given Family F1 has 2 household & 3 ASA Entity
    And some of entities has task and triggers
    And Bhargav is not added to any household/asa Entity
    When user open quick change team dialog 
    Then `Bhargav is not visible in which user dropdown


Scenario: family > quick team change > replace
   
    Given Family F1 has two Entity E1 & E2
    And E1 & E2 has some tasks & triggers
    And household is set to Yes for E1
    And household is set to No for E2
    And E1 is selected as a service team in E2
    And Ravi is added as Advisor role for E1
    And E1 & E2 has Open or Upcoming tasks where Ravi is associated
    And E1 & E2 has triggers where a role is associated
    When user replace Ravi 
    Then shows one line "Ravi is associated as Advisor role in 1 entity."
    When select pavan as replaced user
    Then shows one message that "Ravi will be replaced by Pavan at the only Advisor role in this family."
    When user user save it
    Then Ravi is replaced by Pavan
    And Triggers or Tasks of entity E1 & E2 are updated.



Scenario: family > quick team change > replace at all places
    
    Given Family F1 has 2 household & 3 ASA Entity
    And some of entities has task and triggers
    And Ravi is added as Advisor role for 1 Household & 1 ASA Entity
    And Ravi is added as Director role for 1 Household & 1 ASA Entity
    And Ravi is added as Associate Advisor for 1 ASA Entity
    When User replace Ravi
    Then shows one message that "Ravi is associated as Advisor, Director & Associate Advisor roles in 5 entities."
    And select All roles
    And select Pavan as replaced user
    Then shows one message that "Ravi will be replaced by Pavan at any role in this family."
    When user saved it
    Then Ravi is replaced by Pavan for all 5 entities
    And Triggers or Task of these entities are also updated.


Scenario: family > quick team change >  replace at single role

    Given Family F1 has 2 household & 3 ASA Entity
    And some of entities has task and triggers  
    And Ravi is added as Advisor role for 1 Household & 1 ASA Entity
    And Ravi is added as Director role for 1 Household & 1 ASA Entity
    And Ravi is added as Associate Advisor for 1 ASA Entity
    When User replace Ravi
    And select Advisor role
    Then shows one message that "Ravi is associated as Advisor, Director & Associate Advisor roles in 5 entities."
    And select Pavan as replaced user
    And select Advisor role
    Then message is changed that "Ravi is associated as Advisor, Director & Associate Advisor roles in 2 entities."
    And shows new message that "Ravi will be replaced by Pavan at the only Advisor role in this family."
    When user saved it
    Then Ravi is replaced by Pavan for 1 Household & 1 ASA Entity
    And Triggers or Task of these entities are also updated.

Scenario: family > quick team change > replace ca pool

    Given Family F1 has 2 household & 3 ASA Entity
    And some of entities has task and triggers
    And 
    When User replace CA Pool 
    Then shows one message that "CA Pool is associated as Client Associate roles in 5 entities"
    When select Bhargav as replaced user
    Then shows one message that "CA Pool will be replaced by Bhargav at the only Client Associate role in this family."
    When user saved it
    Then CA Pool is replaced by Bhargav for all 5 entities
    And Triggers or Task of these entities are also updated




 

