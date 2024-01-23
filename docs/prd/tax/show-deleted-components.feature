Feature: show-deleted-components

    Scenario Outline: tax > deleted components > show deleted components

        Given `"<entity>"` has tax return of year 2023
        And 2023 return has 10 components 
        When user open tax return deatail page for year 2023
        Then shows componenets in list page 
        And deleted tab is hidden
        When user delete any componenets 
        Then delete tab appers 
        And components are grouped by section
        And each section components are sorted in alphabetical order of component name
        And user can't edit any delete components
        And deleted components counts do not show up in all counts

        Examples:
            | entity |
            | individual |
            | joint |
            | trust |
            | partnership |
            | foundation |
            | estate |

    Scenario: tax > delete components > browse deleted components 

        Given `"<entity>"` has tax return of year 2023
        And 2023 return has 5 deleted components
        When user click on any deleted componenenet 
        Then opens view dialog of that component 
        And shows delete on and delete by details 

        Examples:
            | entity |
            | individual |
            | joint |
            | trust |
            | partnership |
            | foundation |
            | estate |

    Scenario Outline: tax > deleted components > delete tax return

        Given `"<entity>"` has tax return of year 2023
        And 2023 return has total 10 components
        And in that 5 components are deleted
        When user delete tax return of 2023
        Then all componenets is also deleted

         Examples:
            | entity |
            | individual |
            | joint |
            | trust |
            | partnership |
            | foundation |
            | estate |

    Scenario Outline: tax > deleted components > carry forward to next year 

        Given `"<entity>"` has tax return of year 2023
        And tax return is filed 
        And 2023 return has total 10 components
        And in that 5 components are deleted
        When user creates tax return for 2024 in ravi 
        Then deleted componenets are not carry forward in 2024
        And shows only 5 componenets in 2024

        Examples:
            | entity |
            | individual |
            | joint |
            | trust |
            | partnership |
            | foundation |
            | estate |
 
