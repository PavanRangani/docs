Feature: carryforward-tax-component

    Scenario Outline: tax > carryforward-tax-component > disregarded entity : `grantor to` tax return is filed

        Given `"<entity>"` has disregarded entity tax return of year 2022 & 2023
        And 2022 return has 4 components
        And `"<individual>"` is added as `"<value>"` in `"<entity>"` tax return 
        And `"<individual>"` has tax return of 1041 in 2022
        And It is not Filed
        When user Files the 2022 returns of `"<individual>"`
        Then for `"<entity>"`, system carryforwad the 2022 disregarded entity's 4 tax components to 2023 return.
        And component status is set to Pending
        And carryforward component flag is set to true
        When user enters a 2 new component in disregarded 2022 return
        Then system not carryforwad it to the 2023 return

        Examples:
            | entity | value | individual |
            | Partnership P1 | SSN Of | Ravi |
            | Trust T1 | Grantor to | Pavan |


        Scenario Outline: tax > carryforward-tax-component > disregarded entity : disregarded entity tax return is created

        Given `"<entity>"` has disregarded entity tax return of year 2022
        And 2022 return has 4 components
        And `"<individual>"` is added as `"<value>"` in `"<entity>"` tax return 
        And `"<individual>"` has tax return of 1041 in 2022
        And It is not Filed
        When user Files the 2022 returns of `"<individual>"`
        And user creates a new disregarded entity tax return of 2023 for `"<entity>"`
        Then for `"<entity>"`, system carryforwad the 2022 disregarded entity's 4 tax components to 2023 return. 
        And component status is set to Pending
        And carryforward component flag is set to true
        When user enters a 2 new component in disregarded 2022 return
        Then system not carryforwad it to the 2023 return

        Examples:
            | entity | value | individual |
            | Partnership P1 | SSN Of | Ravi |
            | Trust T1 | Grantor to | Pavan |


        Scenario Outline: tax > carryforward-tax-component > disregarded entity : `grantor to` tax return is Filed at Joint level

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
        When user enters a 2 new component in disregarded 2022 return
        Then system not carryforwad it to the 2023 return

        Examples:
            | entity | value | individual |
            | Partnership P1 | SSN Of | Ravi |
            | Trust T1 | Grantor to | Pavan |


        Scenario Outline: tax > carryforward-tax-component > disregarded entity : disregarded entity tax return is created (joint case)

        Given `"<entity>"` has disregarded entity tax return of year 2022
        And 2022 return has 4 components
        And `"<individual>"` is added as `"<value>"` in `"<entity>"` tax return 
        And `"<individual>"` hasn't tax return of 1041 in 2022
        But Joint of `"<individual>"` has tax return of 1041 in 2022
        And It is not Filed
        When user Files the 2022 returns of Joint of the `"<individual>"`
        And user creates a new disregarded entity tax return of 2023 for `"<entity>"`
        Then for `"<entity>"`, system carryforwad the 2022 disregarded entity's 4 tax components to 2023 return. 
        And component status is set to Pending
        And carryforward component flag is set to true
        When user enters a 2 new component in disregarded 2022 return
        Then system not carryforwad it to the 2023 return

        Examples:
            | entity | value | individual |
            | Partnership P1 | SSN Of | Ravi |
            | Trust T1 | Grantor to | Pavan |
