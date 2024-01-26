Feature: show-deleted-components

    Scenario Outline: tax > deleted components > delete single component

        Given `"<entity>"` has tax return 
        And tax return has multiple components 
        When user open tax return details page 
        Then shows components in list page 
        And deleted tab is not visible
        When user delete any single component 
        Then that component removed from current tab
        Then delete tab is visible 
        And delete tab  enabled

        Examples:
            | entity |
            | Individual I1 |
            | Joint J1 |
            | Trust T1 |
            | Partnership P1 |
            | Foundation F1 |
            | Estate E1 |

    Scenario Outline: tax > deleted components > delete multiple components
       
        Given `"<entity>"` has tax return 
        And tax return has multiple components 
        When user open tax return details page 
        Then shows components in list page 
        And deleted tab is not visible
        When user delete multiple components 
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
        When opens delete tab for `"<entity>"`
        Then shows list of deleted components
        And current status of the component remains as it is in the Delete tab
        And components are grouped by section
        And under each section components are sorted in alphabetical order of component name
        And shows '-' if columns has no data
        When user click on any component
        Then opens view dialog of that component 
        And shows `Delete on` & `Delete by` details
        And dialog doesn't have edit and restore action
        
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
        And tax return has multiple components
        And in that some components are deleted
        When user delete tax return of 2023
        Then tax return deleted successfully 

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
        And in that some components are deleted
        When user perform disable component track action 
        And type delete in disable components track dilaog 
        Then all components are delete

            Examples:
            | entity |
            | Individual I1 |
            | Joint J1 |
            | Trust T1 |
            | Partnership P1 |
            | Foundation F1 |
            | Estate E1 |

    Scenario Outline: tax > deleted components > deleted components are not carry forward when mannualy created

        Given `"<entity>"` has tax return of last year
        And tax return is filed 
        And tax return has multiple components
        And in that some components are deleted
        When user creates tax return for current year 
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

    Scenario Outline: tax > deleted components > deleted components are not carry forward when created from email

        Given `"<entity>"` has tax return of last year
        And tax return is filed 
        And tax return has multiple components
        And in that some components are deleted
        When user creates tax return via email
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

    Scenario Outline: tax > deleted components > Not pulled deleted component from disregarded to SSN/Grantor to return

        Given `"<entity>"` has disregarded entity tax return
        And tax return has multiple components
        And `"<individual>"` is a `"<value>"` in `"<entity>"'s` tax return
        And `"<individual>"` has tax return of 1040
        And `"<individual>"'s` tax return is not file
        When user delete some components in `"<entity>"`
        Then deleted components doesn't pulled in `"<individual>"'s' tax return
    
        Examples:
        | entity | value | individual |
        | Partnership P10 | SSN Of | Ravi |
        | Trust T10 | Grantor to | Pavan |





new:
 tax-return.feature
    tax return file possible
    tax return file not possible



