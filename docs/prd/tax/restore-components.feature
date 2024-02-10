Feature: restore-components

    Scenario Outline: tax components > restore components > restore possible

        Given entity has tax return 
        And tax return has some deleted components
        And some pending components 
        And tax return is not filed
        When user restore component form `"<action>"`
        Then component restore successfully
        And component removed from deleted tab

        Examples:
            | action |
            | Vetmore |
            | view dialog |


    Scenario Outline: tax components > restore components > restore is not possible
    
        Given entity has tax return 
        And tax return has some deleted components 
        And some recevied commponents
        And tax return is filed
        When user restore component form `"<action>"`
        Then  restore is not possible
        And component is not restored

        Examples:
            | action |
            | Vetmore |
            | view dialog |


    Scenario Outline: tax components > restore components > disregarded entity's deleted component is restoted only when ssn of/grantor to tax return status for individual is not filed 

        Given `"<entity>"` has disregarded entity tax return of last year 
        And tax return has deleted components
        And `"<individual>"` is a `"<value>"` in `"<entity>"'s` tax return
        And `"<individual>"`has tax return of 1040 for last year
        And `"<individual>"'s` tax return is not filed
        When  user restore component in `"<entity>"`
        Then shows Confirmation dialog 
        When user perform restore action
        Then component restore successfully
        And restored component is pulled in `"<individual>"`'s tax return

        Examples:
            | entity | value | individual |
            | Partnership P10 | SSN Of | Ravi |
            | Trust T10 | Grantor to | Pavan |

    Scenario Outline: tax components > restore components > disregarded entity's component restore not is possible when ssn of/grantor to tax return status for individual is filed

        Given `"<entity>"` has disregarded entity tax return of last year 
        And tax return has deleted components
        And `"<individual>"` is a `"<value>"` in `"<entity>"'s` tax return
        And `"<individual>"` has tax return of 1040 for last year
        And `"<individual>"'s` tax return is  filed
        When user restore any component in `"<entity>"`
        Then  restore is not possible
        And component is not restored
        
        Examples:
            | entity | value | individual |
            | Partnership P11 | SSN Of | Ravi |
            | Trust T11 | Grantor to | Pavan |
       
    Scenario Outline: tax components > restore components > disregarded entity's deleted component is restoted only when  ssn of/grantor to tax return status for joint is not filed 

        Given `"<entity>"` has disregarded entity tax return of last year 
        And tax return has some components
        And `"<individual>"` is added as `"<value>"` in `"<entity>"` tax return
        And `"<individual>"` is a part of `"<joint>"`  
        And `"<individual>"` has no tax return
        But `"<joint>"` has tax return of last year 
        And `"<joint>"'s` tax return is not filed
        When  user restore component in `"<entity>"` from `"<action>"`
        Then component restore successfully
        And restored component is pulled in `"<joint>"`'s tax return

        Examples:
            | entity | value | individual | joint | action |
            | Partnership P11 | SSN Of | I1 | I1 & I2 | vetmore |
            | Trust T11 | Grantor to | I3 | I3 & I4 | view dialog |


    Scenario Outline: tax components > restore components > disregarded entity's deleted component restore not is possible when ssn of/grantor to tax return status for joint is filed

        Given `"<entity>"` has disregarded entity tax return of last year 
        And tax return has some components
        And `"<individual>"` is added as `"<value>"` in `"<entity>"` tax return
        And `"<individual>"` is a part of `"<joint>"` 
        And `"<individual>"` has no tax return
        But `"<joint>"` has tax return of last year
        And `"<joint>"'s` tax return is filed
        When user restore any component in `"<entity>"` from `"<action>"`
        Then  restore is not possible
        And component is not restored

        Examples:
            | entity | value | individual | joint | action |
            | Partnership P11 | SSN Of | I1 | I1 & I2 | vetmore |
            | Trust T11 | Grantor to | I3 | I3 & I4 | view dialog |