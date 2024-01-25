Feature: show-deleted-components
common update: 2023 lkhvani jarurat nathi
                5 and 10 componenet lkhvani jarur nathi
    Scenario Outline: tax > deleted components > delete single  component

        Given `"<entity>"` has tax return 
        And 2023 return has multiple components 
        When user open tax return details page 
        Then shows componenets in list page 
        And deleted tab is not visible
        When user delete any single component 
        Then that component removed from current tab
        Then delete tab is visible 
        And delete tab  enabled
        Examples:
            | entity |
            | individual |
            | joint |
            | trust |
            | partnership |
            | foundation |
            | estate |

    Scenario Outline: tax > deleted components > delete multiple components
       
        Given `"<entity>"` has tax return 
        And 2023 return has multiple components 
        When user open tax return details page 
        Then shows componenets in list page 
        And deleted tab is not visible
        When user delete multiple components 
        Then those components removed from current tab
        Then delete tab is visible 
        And delete tab enabled
        Examples:
            | entity |
            | individual |
            | joint |
            | trust |
            | partnership |
            | foundation |
            | estate |

    Scenario: tax > delete components > browse deleted components 

    delete tab open kari
    list page nu observation 
    view page nu observation
    je status sathe delete kariye tej status dekhase 

        Given `"<entity>"` has tax return of year 2023
        And 2023 return has 5 deleted components
        When user click on any deleted tab 
        Then opens view dialog of that component 
        And shows delete on and delete by details 
        And components are grouped by section
        And each section components are sorted in alphabetical order of component name
        And user can't edit any delete component
        edit not possible for deleted components (include in browse scenario)

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
        Then all componenets is also deleted (tax return delete thay jay chhe)

         Examples:
            | entity |
            | individual |
            | joint |
            | trust |
            | partnership |
            | foundation |
            | estate |

    Scenario Outline: tax > deleted components > deleted components are not carry forward when mannualy created

        Given `"<entity>"` has tax return of year 2023
        And tax return is filed 
        And 2023 return has total 10 components
        And in that 5 components are deleted
        When user creates tax return for 2024 
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
 //TODO

 Should we show deleted components in the PDF or Excel?


new:
 tax-return.feature
    tax return file possible
    tax return file not possible

deleted components are not carry forward when created from email
Not pulled deleted component from disregarded to SSN/Grantor to return
When tax return in deleted or when component tracking is disabled, all components including deleted components  will be removed



