Feature: show-deleted-components

    Scenario Outline: tax > deleted components > delete single component

        Given `"<entity>"` has tax return 
        And tax return has multiple components 
        And tax return has no deleted component
        When  user opens the tax component page
        Then shows components in list page 
        And deleted tab is not visible
        When user delete any single component from "<action>"
        Then that component removed from current tab
        And delete tab is visible 
        And deleted tab is shown always enabled

        Examples:
            | entity | action |
            | Individual I1 | view dialog |
            | Joint J1 | vetmore |
            | Trust T1 | multi-select action |
            | Partnership P1 | vetmore |
            | Foundation F1 | view dialog |
            | Estate E1 | multi-select action |

    Scenario Outline: tax > deleted components > delete multiple components
       
        Given `"<entity>"` has tax return 
        And tax return has multiple components 
        When user open tax return details page 
        Then shows components in list page 
        And deleted tab is not visible
        When user deletes the components using multi-select action
        Then those components removed from current tab
        Then delete tab is visible 
        And delete tab enabled

        Examples:
            | entity |
            | Individual I1 |
            | Joint J1 |
            | Trust T1 |
            | Partnership P1 |
            | Foundation F1 |
            | Estate E1 |

    Scenario: tax > delete components > browse delete components 

        Given `"<entity>"` has tax return 
        And tax return has some deleted components
        When opens delete tab from tax component list page for the tax return of `"<entity>"`
        Then shows all deleted components
        And components are grouped by section
        And under each section components are sorted in alphabetical order of component name
        And status column shows the tax component status
        And shows date/time when component is deleted
        And shows user name who deleted the component           
        And shows '-' when any columns has no data
        And records doesn't have any action
        When user click on any component
        Then opens view dialog of that component 
        And shows `Delete on` & `Delete by` details
        And dialog doesn't show any action
        
        Examples:
            | entity |
            | Individual I1 |
            | Joint J1 |
            | Trust T1 |
            | Partnership P1 |
            | Foundation F1 |
            | Estate E1 |

    Scenario Outline: tax > deleted components > delete tax return

        Given `"<entity>"` has tax return
        And tax return has some components
        And it has some deleted components
        When user delete tax return 
        Then tax return is deleted successfully 

         Examples:
            | entity |
            | Individual I1 |
            | Joint J1 |
            | Trust T1 |
            | Partnership P1 |
            | Foundation F1 |
            | Estate E1 |

    Scenario Outline: tax > deleted components > disable component track

        Given `"<entity>"` has tax return
        And tax return has multiple components
        And some components are deleted
        And delete tab is visible 
        When user perform `disable component track` action for tax return
        Then all components are remvoed from tax return
        And shows `disable component track` enable button
        And deleted tab is also removed
    
            Examples:
            | entity |
            | Individual I1 |
            | Joint J1 |
            | Trust T1 |
            | Partnership P1 |
            | Foundation F1 |
            | Estate E1 |

    Scenario Outline: tax > deleted components >  deleted components aren't carryforward when manually tax return is created > tax return is filed

        Given `"<entity>"` has tax return of last year
        And tax return has some received components
        And some deleted components
        And tax return is filed 
        When user creates tax return for current year 
        Then all components except Deleted components are carry forward
    
        Examples:
            | entity |
            | Individual I1 |
            | Joint J1 |
            | Trust T1 |
            | Partnership P1 |
            | Foundation F1 |
            | Estate E1 |

    Scenario Outline: tax > deleted components >  deleted components aren't carryforward when manually tax return is created > tax return is not filed

        Given `"<entity>"` has tax return of last year
        And tax return has some received components
        And some deleted components
        And tax return is not filed 
        When user creates tax return for current year 
        Then any commponents are not carryforward in current year 
        When user files tax return of last year 
        Then all components except Deleted components are carry forward
        
        Examples:
            | entity |
            | Individual I1 |
            | Joint J1 |
            | Trust T1 |
            | Partnership P1 |
            | Foundation F1 |
            | Estate E1 |

    Scenario Outline: tax > deleted components >  deleted components aren't carryforward when tax return is created from mail

        Given `"<entity>"` has tax return of last year
        And tax return is filed 
        And tax return has multiple components
        And some components are deleted
        When user creates tax return for current year via mail
        Then deleted components are not carry forward in current year 
        And shows only active components in current year 

        Examples:
            | entity |
            | Individual I1 |
            | Joint J1 |
            | Trust T1 |
            | Partnership P1 |
            | Foundation F1 |
            | Estate E1 |
    
    Scenario Outline: tax > deleted components >  deleted components aren't carryforward when tax return is created from mail > after carry forward delete component

        Given `"<entity>"` has tax return of last year
        And tax return has multiple components
        And tax return doesn't have deleted components
        And tax return is filed 
        When user creates tax return for current year via mail
        Then all the components are carryforward in current year 
        When user delete some component in last year
        Then deleted components are not carry forward in current year 
        And deleted tab is not visible
       
        Examples:
            | entity |
            | Individual I1 |
            | Joint J1 |
            | Trust T1 |
            | Partnership P1 |
            | Foundation F1 |
            | Estate E1 |


    Scenario Outline: tax > deleted components > Not pulled deleted component from disregarded to ssn/grantor to return

        Given `"<entity>"` has disregarded entity tax return
        And tax return has some components
        And `"<individual>"` is a `"<value>"` in `"<entity>"'s` tax return
        And `"<individual>"` has tax return of 1040
        And `"<individual>"'s` tax return is not file
        When user delete some components in `"<entity>"`
        Then deleted components doesn't pulled in `"<individual>"'s' tax return
    
        Examples:
        | entity | value | individual |
        | Partnership P10 | SSN Of | Ravi |
        | Trust T10 | Grantor to | Pavan |




