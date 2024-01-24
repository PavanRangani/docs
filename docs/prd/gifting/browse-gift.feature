Feature: browse-gift

    Scenario: ux scenario > gifting > browse page > browse gifts in given tab for Individual

        Given `Individual I1` has given multiple gifts to various entities in current year
        And details of gifts are as follows:
            """
            | Recipient | Gift Mode | GST Exempt | Notes |
            | Individual I2 | Cash | Yes | Yes |
            | Joint J2 | Investment Fund (Limited Partnership type) | No | Yes |
            | Family Member Individual | Investment Fund (Mutual Fund type) | No | Yes |
            | Trust (CRUT) | Private stock | No | No |
            | Trust (CRAT) | Public stock | Yes | No |
            | Trust (CLAT) | Digital currency | No | Yes |
            | Trust (GRAT) | Investment Fund (ETF type) | Yes | Yes |
            | Trust (QPRT) | Private stock | No | No |
            | Trust (Crummey trust) | Cash | Yes | No |
            | Trust (Non Crummey trust) | Public stock | No | Yes |
            """
        When user opens given tab of `Individual I1`
        Then shows all gitfing records of current year
        And records are shown in the group by Recipient in alphabetical order
        And under each group, records are primary sorted of ascending order of gift date
        When `Individual I1` has some Indirect gifts
        Then shows Indirect tag in Giftor column
        And `Allocation Gift Amount` column shows amount according to Allocation percentage & Total Gift Value
        And shows total of `Allocation Gift Amount` of each Recipient group at right side of header
        And Discount column shows discount as per formula
        And shows total of `FMV`, `GTV` & `Discount` at top right side of the page
        And gift notes appear as a secondary information
        And shows tickmark icon in GST Exempt column for GST gift
        When gift is estimated
        Then shows Total FMV & Tax Value column in orange color
        When any column has no data
        Then shows `-` for that column
        And shows `$0` for gift which has no Charitable Gift / Retained Interest / Gift


    Scenario: ux scenario > gifting > browse page > browse gifts in given tab for Joint

        Given `Joint J1` has given multiple gifts to various entities in current year
        And details of gifts are as follows:
            """
            | Recipient | Gift Mode | GST Exempt | Notes |
            | Individual I2 | Cash | Yes | Yes |
            | Joint J2 | Investment Fund (Limited Partnership type) | No | Yes |
            | Family Member Individual | Investment Fund (Mutual Fund type) | No | Yes |
            | Trust (CRUT) | Private stock | No | No |
            | Trust (CRAT) | Public stock | Yes | No |
            | Trust (CLAT) | Digital currency | No | Yes |
            | Trust (GRAT) | Investment Fund (ETF type) | Yes | Yes |
            | Trust (QPRT) | Private stock | No | No |
            | Trust (Crummey trust) | Cash | Yes | No |
            | Trust (Non Crummey trust) | Public stock | No | Yes |
            """
        When user opens given tab of `Joint J1`
        Then shows all gitfing records of current year
        And records are shown in the group by Recipient in alphabetical order
        And under each group, records are primary sorted of ascending order of gift date
        And `Allocation Gift Amount` column shows amount according to Allocation percentage & Total Gift Value
        And shows total of `Allocation Gift Amount` of each Recipient group at right side of header
        And Discount column shows discount as per formula
        And shows total of `FMV`, `GTV` & `Discount` at top right side of the page
        And gift notes appear as a secondary information
        And shows tickmark icon in GST Exempt column for GST gift
        When gift is estimated
        Then shows Total FMV & Tax Value column in orange color
        When any column has no data
        Then shows `-` for that column
        And shows `$0` for gift which has no Charitable Gift / Retained Interest / Gift



    Scenario Outline: gifting > browse page > browse gift of recevied tab

        Given `"<recipient>"` has received multiple gifts from various entities in current year
        And details of gifts are as follows:
            """
            | Giftor |  
            | Individual I1 | 
            | Joint J1 |
            """
        When user opens the recevied tab of `"<recipient>"`
        Then shows gitfing records of current year
        And records are shown in the group by Giftor in alphabetical order
        And under each giftor group, records are primary sorted of ascending order of gift date
        And `Allocation Gift Amount` column shows amount according to Allocation percentage & Total Gift Value
        And shows total of `Allocation Gift Amount` of each Giftor group at right side of header
        And Discount column shows discount as per formula
        And shows total of `FMV`, `GTV` & `Discount` at top right side of the page
        And gift notes appear as a secondary information
        And shows tickmark icon in GST Exempt column for GST gift
        When gift is estimated
        Then shows Total FMV & Tax Value column in orange color
        When any column has no data
        Then shows `-` for that column
        And shows `$0` for gift which has no Charitable Gift / Retained Interest / Gift

        Examples:
            | recipient |
            | Individual I2 |
            | Joint J2 |
            | Family Member Individual |
            | Trust (CRUT) | 
            | Trust (CRAT) | 
            | Trust (CLAT) | 
            | Trust (GRAT) |
            | Trust (QPRT) | 
            | Trust (Crummey trust) | 
            | Trust (Non Crummey trust) |

    


    

    





