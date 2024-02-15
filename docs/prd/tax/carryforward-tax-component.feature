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

    
    Scenario Outline: tax > carryforward-tax-component > `grantor to` tax return is filed and user create a disregarded entity return

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


    Scenario Outline: tax > carryforward-tax-component > `grantor to` tax return at joint level is filed and user create a disregarded entity return

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


    Scenario: tax > carryforward tax component > componentsare not carryforward when partnership tax id type eni and its owner's tax return not filed 

        Given Tax ID type of `Partnership P2` has `EIN`
        And `Partnership P2` has disregarded entity tax return of year 2023 year
        And Partnership's tax return has some components
        And `Bhargav` is an owner in `Partnership P2
        And `Bhargav` have tax return of 1040 for 2023 year 
        And Bhargav's tax return is not filed 
        When user creates new tax return for 2024 year of Disregarded entity for 'Partnership P2'
        Then commponents are not carryforward in 2024

    Scenario: tax > carryforward tax component > components are not carryforward when partnership tax id type eni and owner is a part of joint and its joint have tax return with pending status
       
        Given Tax ID type of `Partnership P2` has `EIN`
        And `Partnership P2` has disregarded entity tax return of 2023 year
        And Partnership's tax return has some components
        And `Bhargav` is an owner in `Partnership P2
        And `Bhargav` doesn't have tax return
        But `Bhargav` is a part of joint 
        And joint have tax return of 1041 for year 2023
        When user creates new tax return for 2024 year of Disregarded entity for 'Partnership P2'
        Then commponents are not carryforward in 2024

    Scenario: tax > carryforward tax component > partnership tax id type eni and it has single owner and owner's tax return is not created

        Given Tax ID type of `Partnership P2` has `EIN`
        And `Partnership P2` has disregarded entity tax return of year 2023 year
        And Partnership's tax return has some components
        And `Bhargav` is an owner in `Partnership P2
        And `Bhargav` doesn't have tax return
        When user creates new tax return for 2024 year of Disregarded entity for 'Partnership P2'
        Then commponents are not carryforward in 2024

    Scenario: tax > carryforward tax component > componentsare not carryforward when trust tax id type eni and its `grantor to` tax return is not filed

        Given Tax ID type of `Trust T2` has `EIN`
        And Trust T2 has disregarded entity tax return of 2023 year
        And Trust has some commponents
        And Bhargav is an `Grantor to` in trust's tax return
        And `Bhargav` have tax return of 1040 for 2023 year 
        And Bhargav's tax return is not filed  
        When user creates new tax return for 2024 year of Disregarded entity for 'Trust T2'
        Then commponents are not carryforward in 2024

    Scenario: tax > carryforward tax component > components are not carryforward when trust tax id type eni and its `grantor to` is a part of joint and its joint have tax return with pending status
       
        Given Tax ID type of `Trust T2` has `EIN`
        And Trust T2 has disregarded entity tax return of 2023 year
        And Trust has some commponents
        And Bhargav is an `Grantor to` in trust's tax return
        And `Bhargav` doesn't have tax return
        But `Bhargav` s a part of joint 
        And joint have tax return of 1041 for year 2023
        When user creates new tax return for 2024 year of Disregarded entity for 'Partnership P2'
        Then commponents are not carryforward in 2024

    Scenario: tax > carryforward tax component > trust tax id type eni and its `grantor to` tax return is not created

        Given Tax ID type of `Trust T2` has `EIN`
        And Trust T2 has disregarded entity tax return of 2023 year
        And Trust has some commponents
        And Bhargav is an `Grantor to` in trust's tax return
        And `Bhargav` doesn't have tax return
        When user creates new tax return for 2024 year of Disregarded entity for 'Trust T2'
        Then commponents are not carryforward in 2024
