Feature: restore-components

    Scenario: tax components > restore components > restore possible

        Given entity has tax return 
        And tax return has some deleted components 
        And tax return is not filed
        When user restore component
        Then shows Confirmation dialog 
        When user perform restore action
        Then component restore successfully
        And component moved to all tab 

    Scenario: tax components > restore components > restore is not possible
    
        Given entity has tax return 
        And tax return has some deleted components 
        And tax return is filed
        When user restore component
        Then shows restore not possible dialog 
        And component is not restored

    Scenario: tax components > restore commponents > components are carry forward to next year 

        Given entity has tax return of last year
        And entity hs tax return of current year
        And  tax return has some deleted components
        And both tax return is not filed
        When user restore any component from last 
        Then component restore successfully
        When file last year's tax return
        Then all components are carry forward in current year

    Scenario Outline: tax components > restore components > disregarded entity restore is possible when ss of/grantor to tax return for individual is not filed

        Given `"<entity>"` has disregarded entity tax return
        And tax return has deleted components
        And `"<individual>"` is a `"<value>"` in `"<entity>"'s` tax return
        And `"<individual>"` has tax return of 1040
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

    Scenario Outline: tax components > restore components > disregarded entity restore not is possible when ss of/grantor to tax return for individual is filed

        Given `"<entity>"` has disregarded entity tax return
        And tax return has deleted components
        And `"<individual>"` is a `"<value>"` in `"<entity>"'s` tax return
        And `"<individual>"` has tax return of 1040
        And `"<individual>"'s` tax return is  filed
        When user restore any component in `"<entity>"`
        Then shows restore not possible dialog
        And component is not restore 

        Examples:
            | entity | value | individual |
            | Partnership P11 | SSN Of | Ravi |
            | Trust T11 | Grantor to | Pavan |
       
    Scenario Outline: tax components > restore components > disregarded entity restore is possible when ss of/grantor to tax return for joint is not filed

        Given `"<entity>"` has disregarded entity tax return
        And tax return has some components
        And `"<individual>"` is added as `"<value>"` in `"<entity>"` tax return
        And `"<individual>"` is a part of `"<joint>"`  
        And `"<individual>"` has no tax return
        But `"<joint>"` has tax return
        And `"<joint>"'s` tax return is not filed
        When  user restore component in `"<entity>"`
        Then shows Confirmation dialog 
        When user perform restore action
        Then component restore successfully
        And restored component is pulled in `"<joint>"`'s tax return

        Examples:
            | entity | value | individual | joint |
            | Partnership P11 | SSN Of | I1 | I1 & I2 |
            | Trust T11 | Grantor to | I3 | I3 & I4 |


    Scenario Outline: tax components > restore components >disregarded entity restore is possible when ss of/grantor to tax return for joint is not filed

        Given `"<entity>"` has disregarded entity tax return
        And tax return has some components
        And `"<individual>"` is added as `"<value>"` in `"<entity>"` tax return
        And `"<individual>"` is a part of `"<joint>"`  
        And `"<individual>"` has no tax return
        But `"<joint>"` has tax return
        And `"<joint>"'s` tax return is not filed
        When user restore any component in `"<entity>"`
        Then shows restore not possible dialog
        And component is not restore 

        Examples:
            | entity | value | individual | joint |
            | Partnership P11 | SSN Of | I1 | I1 & I2 |
            | Trust T11 | Grantor to | I3 | I3 & I4 |