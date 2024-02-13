Feature: carryforward-tax-component

    Scenario Outline: tax > carryforward-tax-component > disregarded entity tax retunr is available and `grantor to` tax return is filed

        Given `"<entity>"` has disregarded entity tax return of year 2022 & 2023
        And 2022 return has 4 components
        And `"<individual>"` is added as `"<value>"` in `"<entity>"` tax return 
        And `"<individual>"` has tax return of 1041 in 2022
        And It is not Filed
        When user Files the 2022 returns of `"<individual>"`
        Then for `"<entity>"`, system carryforwad the 2022 disregarded entity's 4 tax components to 2023 return.
        And component status is set to Pending
        And carryforward component flag is set to true

        Examples:
            | entity | value | individual |
            | Partnership P1 | SSN Of | Ravi |
            | Trust T1 | Grantor to | Pavan |


        Scenario Outline: tax > carryforward-tax-component > `grnator to` tax return is filed and user create a disregarded entity return

        Given `"<entity>"` has disregarded entity tax return of year 2022
        And 2022 return has 4 components
        And `"<individual>"` is added as `"<value>"` in `"<entity>"` tax return 
        And `"<individual>"` has tax return of 1041 in 2022
        And tax return is Filed for 2022 returns of `"<individual>"`
        Then user creates a new disregarded entity tax return of 2023 for `"<entity>"` from `"<create>"`
        Then for `"<entity>"`, system carryforwad the 2022 disregarded entity's 4 tax components to 2023 return. 
        And component status is set to Pending
        And carryforward component flag is set to true

        Examples:
            | entity | value | individual | create |
            | Partnership P1 | SSN Of | Ravi | Manually |
            | Partnership P1 | SSN Of | Ravi | Auto create from Email |
            | Trust T1 | Grantor to | Pavan | Manually |
            | Trust T1 | Grantor to | Pavan | Auto create from Email |


        Scenario Outline: tax > carryforward-tax-component > disregarded entity tax retunr is available and `grantor to` tax return is Filed at Joint level

        Given `"<entity>"` has disregarded entity tax return of year 2022
        And 2022 return has 4 components
        And `"<individual>"` is added as `"<value>"` in `"<entity>"` tax return 
        And `"<individual>"` hasn't tax return of 1041 in 2022
        But Joint of `"<individual>"` has tax return of 1041 in 2022
        And It is not Filed
        When user Files the 2022 returns of Joint of the `"<individual>"`
        Then for `"<entity>"`, system carryforwad the 2022 disregarded entity's 4 tax components to 2023 return. 
        And component status is set to Pending
        And carryforward component flag is set to true

        Examples:
            | entity | value | individual |
            | Partnership P1 | SSN Of | Ravi |
            | Trust T1 | Grantor to | Pavan |


        Scenario Outline: tax > carryforward-tax-component > `grnator to` tax return at joint level is filed and user create a disregarded entity return

        Given `"<entity>"` has disregarded entity tax return of year 2022
        And 2022 return has 4 components
        And `"<individual>"` is added as `"<value>"` in `"<entity>"` tax return 
        And `"<individual>"` hasn't tax return of 1041 in 2022
        But Joint of `"<individual>"` has tax return of 1041 in 2022
        And It is not Filed
        And user Files the 2022 returns of Joint of the `"<individual>"`
        And user creates a new disregarded entity tax return of 2023 for `"<entity>"` from `"<create>"`
        Then for `"<entity>"`, system carryforwad the 2022 disregarded entity's 4 tax components to 2023 return. 
        And component status is set to Pending
        And carryforward component flag is set to true

        Examples:
            | entity | value | individual | create |
            | Partnership P1 | SSN Of | Ravi | Manually |
            | Partnership P1 | SSN Of | Ravi | Auto create from Email |
            | Trust T1 | Grantor to | Pavan | Manually |
            | Trust T1 | Grantor to | Pavan | Auto create from Email |


        Scenario Outline: tax > carryforward-tax-component > new components are not carryforwad to new return when grantor to tax return is filed at individual

        Given `"<entity>"` has disregarded entity tax return of year 2022 & 2023
        And `"<individual>"` is added as `"<value>"` in `"<entity>"` tax return 
        And `"<individual>"` has Filed tax return of 1041 in 2022
        When user creates a new tax component in 2022 disregarded entity
        Then system not carryforwad it to the 2023 return

        Examples:
            | entity | value | individual |
            | Partnership P1 | SSN Of | Ravi |
            | Trust T1 | Grantor to | Pavan |

        
        Scenario Outline: tax > carryforward-tax-component > new components are not carryforwad to new return when grantor to tax return is filed at joint

        Given `"<entity>"` has disregarded entity tax return of year 2022 & 2023
        And `"<individual>"` is added as `"<value>"` in `"<entity>"` tax return 
        And `"<individual>"` has Filed tax return of 1041 in 2022 at joint level
        When user creates a new tax component in 2022 disregarded entity
        Then system not carryforwad it to the 2023 return

        Examples:
            | entity | value | individual |
            | Partnership P1 | SSN Of | Ravi |
            | Trust T1 | Grantor to | Pavan |


        Scenario Outline: tax > carryforward-tax-component > when tax component tracking is enabled, system carryforwad tax components

        Given `"<entity>"` has disregarded entity tax return of year 2022 & 2023
        And component tracking disabled for 2023
        And 2022 return has 4 components
        And `"<individual>"` is added as `"<value>"` in `"<entity>"` tax return 
        And `"<individual>"` has tax return of 1041 in 2022
        And It is not Filed
        When user Files the 2022 returns of `"<individual>"`
        Then for `"<entity>"`, system not carryforwad the 2022 disregarded entity's 4 tax components to 2023 return.

        Examples:
            | entity | value | individual |
            | Partnership P1 | SSN Of | Ravi |
            | Trust T1 | Grantor to | Pavan |


        Scenario Outline: tax > carryforward-tax-component > when tax component tracking is enabled, system carryforwad tax components

        Given `"<entity>"` has disregarded entity tax return of year 2022 & 2023
        And component tracking disabled for 2023
        And 2022 return has 4 components
        And `"<individual>"` is added as `"<value>"` in `"<entity>"` tax return 
        And `"<individual>"` has tax return of 1041 in 2022
        And It is Filed
        When user enabled the tax component tracking for 2023 returns of `"<entity>"`
        Then for `"<entity>"`, system carryforwad the 2022 disregarded entity's 4 tax components to 2023 return.

        Examples:
            | entity | value | individual |
            | Partnership P1 | SSN Of | Ravi |
            | Trust T1 | Grantor to | Pavan |


        Scenario: tax > carryforward-tax-component > auto k1 component will not carryforward > individual is owner in Partnership and Partnership and individual both have tax return

            Given individual has tax return of 1040 for 2022 & 2023
            And individual has owner in 2 Partnerships
            And both of Partnership have tax return for year 2022 
            And individual's tax return has 2 `auto K1` components in year 2022
            And individual's tax reurn has some recevied components
            When user files individual's tax return of year 2022
            Then only recevied components carryforward in year 2023
            And `K1` components is not carryforward in year 2023

        Scenario: tax > carryforward-tax-component > auto k1 component will not carryforward > individual is owner in Partnership and it doesn't have tax return but its joint has tax return

            Given individual has owner in 2 Partnerships
            And individual is an part of joint
            And joint has tax return for year 2023 & 2024
            And `K1` commponents is created in joint's tax return in year 2023
            And joint's tax return have some recevied components in year 2023
            And individual doesn't have tax return
            And both of Partnerships have tax return for year 2023
            When user files joint's tax return for year 2023
            Then only recevied components carryforward in year 2024
            And `K1` components is not carryforward in year 2024

        Scenario: tax > carryforward-tax-component > auto k1 component will not carryforward > individual is a grantor to in trust T1's tax return and individual also have tax return

            Given individual has tax return of 1040 for 2022 & 2023
            And individual added as a `Grantor to` in 2 trusts
            And both of trust have tax return of 1041 for year 2022
            And individual's tax return has 2 `auto K1` components in year 2022
            And individual's tax reurn has some recevied components
            When user files individual's tax return of year 2022
            Then only recevied components carryforward in year 2023
            And `K1` components is not carryforward in year 2023

        Scenario: tax > carryforward-tax-component > auto k1 component will not carryforward > individual is a grantor to in trust T1's tax return and it doesn't have tax return but its joint has tax return

            Given individual added as a `Grantor to` in 2 trusts
            And individual is an part of joint
            And joint has tax return for year 2023 & 2024
            And `K1` commponents is created in joint's tax return in year 2023
            And joint's tax return have some recevied components in year 2023
            And individual doesn't have tax return
            And both of trusts have tax return for year 2023
            When user files joint's tax return for year 2023
            Then only recevied components carryforward in year 2024
            And `K1` components is not carryforward in year 2024





        
           