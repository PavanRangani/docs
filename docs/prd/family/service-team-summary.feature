Feature: service-team-summary

Scenario: family > service-team-summary > Family has no entity

Given Family has no any entity available
When User opens the “Service team summary” page
Then page is shown empty
And Quick team update button is not appear 


Scenario: family > service-team-summary > Family has no “Household/ASA Entity = Yes” entities

Given Family has 4 Individuals, 1 Joint, 2 Partnership, 2 Foundation, 2 Estate & 2 Trusts
And Household or ASA entity is set to No for all entities
When User opens the “Service team summary” page
Then page is shown empty
When user set the household of any Individual or Joint to Yes 
And user open the “Service team summary” page
Then page shows only Household section
When user set the ASA entity for 1 partnership or 1 foundation or 1 Trust or 1 Estate
And set the ASA entity = Yes 
And Service team = own
Then page shows both Household & ASA Entity section 
When user set the household = no for Joint & Individual 
And opens the “Service team Summary” page
Then page shows only ASA Entities section


Scenario: family > service-team-summary > Browse Entities - Household
Given Family F1 has four Entity R1, M2, A3 & C4
And household is set to Yes for all entities
And Entity R1 has 2 users in the Director role where one user is mark as lead
And Entity M2 has 2 users in the Personal Controller role where one user is mark as lead
And Entity M2 has 2 users in the Reconciliation role where one user is mark as lead
And Entity A3, C4 has single user in Advisor
When user opens the “Service team summary” page
Then Household table shows Entity in order of - A3, C4, M2 & R1
And Mark as Lead user shows First for Entity R1 & M2
And Personal Controller role is shown first & Reconciliation role is shown second for Entity M2.



Scenario: family > service-team-summary > Browse Entities - ASA Entity
Given Family F1 has one Partnership P1, Foundation F2, Estate E3 & Trust T4
And ASA Entity is set to Yes for all entities
And Service Team is selected to Own
And Partnership P1 has 2 users in the Director role where one user is mark as lead
And Trust T4 has 2 users in the Personal Controller role where one user is mark as lead
And Trust T4 has 2 users in the Reconciliation role where one user is mark as lead
And Estate E3 & Foundation F2 has single user in Advisor
When user opens the “Service team summary” page
And Mark as Lead user shows First for Entity P1 & T4
And Personal Controller role is shown first & Reconciliation role is shown second for Entity M2.


Scenario: family > service-team-summary > Change entity's team for any entity
Given Service team summary page has 3 entities in Household/ASA Entity table in which 1 `E1` entity has Bill Pay service
And 1 entity `E2` has Portfolio
And 1 entity `E3` has no any service
And entity E1 is selected as a service team for one Individual `I1`
And Individual `I1` has triggers
And all entities have triggers
When user hovers on entity `E1`
And click on Pencil icon
Then Household team dialog is open
And diaog shows default Roles 
And dialog shows Personal Controller and Reconciliation roles
When user updates any roles
And Save it
Then Roles of that entity is updated
And system also update the household team of Individual `I1`
And system also update the triggers of the Individual `I1`
When User opens the Household team dialog of Entity E2
Then diaog shows default Roles 
And dialog shows Investment roles
When User opens the Household team dialog of Entity E3
Then diaog shows only default Roles
And user edit/delete/add user for any role
Then system update the service team
And triggres of each entity is also update.
But entity is selected in other 
