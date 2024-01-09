Feature: family-testing

Scenario: Quick update action button is not available when family has no entity available
Given Family has no any entity available
When User opens the “Service team summary” page
Then page is shown empty
And button is not appear 


Scenario: Quick update action button is not available when family hasn’t “Household/ASA Entity = Yes”
Given Family has 4 Individuals, 1 Joint, 2 Partnership, 2 Foundation, 2 Estate & 2 Trusts
And Household or ASA entity is set to No for all entities
When User opens the “Service team summary” page
Then page is shown empty
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
And a button appears.


Scenario: User associated in only one role - Replace
Given Family F1 has two Entity E1 & E2
And household is set to Yes for E1
And household is set to No for E2
And E1 is selected as a service team in E2
And Ravi is added as Director role for E1
And E1 & E2 has Open or Upcoming tasks where Ravi is associated
And E1 & E2 has triggers where Director role is associated
When user select Ravi as replace by user
Then shows one line `Ravi H. is is associated as Director`
And Ravi H. is shown in bold 
And Role name is shown in blue color
And role is auto select to Director
When replaced from user is select to Pavan
Then shows one message that "Total 1 entities out of 1 are updated"
When user user save it
Then Ravi is replaced by Pavan
And Triggers or Tasks of entity E1 & E2 are updated.



Scenario: User associated in multiple role - Replace at all places
Given Family F1 has 2 household & 3 ASA Entity
And Ravi is added as Advisor role for 1 Household & 1 ASA Entity
And Ravi is added as Director role for 1 Household & 1 ASA Entity
And Ravi is added as Associate Advisor for 1 ASA Entity
When User replace Ravi to Pavan
And select All roles
And select Pavan as replaced user
Then shows one message that "Total 5 entities out of 5 are updated"
When user saved it
Then Ravi is replaced by Pavan for all 5 entities
And Triggers or Task of these entities are also updated.


Scenario: User associated in multiple role - Replace at single role
Given Family F1 has 2 household & 3 ASA Entity
And Ravi is added as Advisor role for 1 Household & 1 ASA Entity
And Ravi is added as Director role for 1 Household & 1 ASA Entity
And Ravi is added as Associate Advisor for 1 ASA Entity
When User replace Ravi to Pavan
And select Advisor role
Then Shows one message that "Total 2 entities out of 5 are updated"
When user saved it
Then Ravi is replaced by Pavan for 1 Household & 1 ASA Entity
And Triggers or Task of these entities are also updated.
