Feature: export-excel-pdf

    Scenario Outline: gifting > export excel > export as excel from given tab

        Given `"<entity>"` has multiple gifts in given tab as follows:
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
        When user export the excel
        Then file is downloaded with proper name
        When user opens the excel file
        Then shows all gifting records 
        And records are primary sorted on alphabetical order of recipient name
        And secondary sorting on ascending order of gift date
        And shows `Indirect` as word for Indirect gift
        When shows `Estimated` or `Final` as a word for the estimated gift
        And shows FMV & Total Gift Value in orange color for estimated gift
        And shows Yes in GST Exempt for GST gift
        And shows blank cell for column having no value
        And shows total of `FMV` & `GTV` & Discount in filter criateria
        And shows excel specification in filter criteria

        Examples:
            | entity |
            | Individual I1 |
            | Joint J1 |


    Scenario Outline: gifting > export excel > export as excel from received tab

        Given `"<recipient>"` has multiple gifts in received tab as follows:
            """
            | Giftor | Gift Mode | GST Exempt | Notes |  
            | Individual I1 | Cash | Yes | No |
            | Individual I1| Public stock | No | No |
            | Individual I1 | Digital currency | Yes | Yes |
            | Joint J1 | Private stock | Yes | No |
            | Joint J1 | Investment Fund (ETF type) | No | Yes |
            | Joint J1 | Investment Fund (Mutual Fund type) | No | Yes |
            | Joint J1 | Investment Fund (Limited Partnership type) | No | Yes |
            """
        When user export the excel
        Then excle file is downloaded with proper name
        When user opens that file
        Then shows all gifting records 
        And records are primary sorted on alphabetical order of recipient name
        And secondary sorting on ascending order of gift date
        And shows `Indirect` as word for Indirect gift
        When shows `Estimated` or `Final` as a word for the estimated gift
        And shows FMV & Total Gift Value in orange color for estimated gift
        And shows Yes in GST Exempt for GST gift
        And shows blank cell for column having no value
        And shows total of `FMV` & `GTV` & Discount in filter criateria
        And shows excel specification in filter criteria 

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



    Scenario Outline: gifting > export pdf > export as pdf from given tab

        Given `"<entity>"` has multiple gifts in given tab as follows:
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
        When user export the pdf
        Then file is downloaded with proper name
        When user opens the pdf file
        Then shows all gifting records 
        And records are grouped by recipient
        And under each group, records are secondary sorting on ascending order of gift date
        And shows tickmark icon in GST column for GST gift
        And shows `-` when no data available
        And shows grand total of `FMV` & `GTV` & Discount at bottom at last of PDF
        And shows total of `GTV` at last of each recipient group
        And shows gift notes as a secondary information

        Examples:
            | entity |
            | Individual I1 |
            | Joint J1 |

        
    Scenario Outline: gifting > export pdf > export as pdf from received tab

        Given `"<recipient>"` has multiple gifts in received tab as follows:
            """
            | Giftor | Gift Mode | GST Exempt | Notes |  
            | Individual I1 | Cash | Yes | No |
            | Individual I1| Public stock | No | No |
            | Individual I1 | Digital currency | Yes | Yes |
            | Joint J1 | Private stock | Yes | No |
            | Joint J1 | Investment Fund (ETF type) | No | Yes |
            | Joint J1 | Investment Fund (Mutual Fund type) | No | Yes |
            | Joint J1 | Investment Fund (Limited Partnership type) | No | Yes |
            """
        When user export the pdf
        Then excle file is downloaded with proper name
        When user opens that file
        Then shows all gifting records 
        And records are grouped by giftor
        And under each group, records are sorted in ascending order of gift date
        And shows tickmark icon in GST column for GST gift
        And shows `-` when no data available
        And shows grand total of `FMV` & `GTV` & Discount at bottom at last of PDF
        And shows total of `GTV` at last of each giftor group
        And shows gift notes as a secondary information

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

        