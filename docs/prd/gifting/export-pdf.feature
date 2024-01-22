Feature: export-pdf

    Background: 
        Given "<entity>" "<name>" has given multiple gifts to various entities
        
    Scenario Outline: gifting > export pdf > export given pdf 

        When user click export PDF
        Then PDF file download with proper format
        And Gift records are shown in the group by recepient in alphabetically order
        And under each group, records are primary sorted of ascending order of date 
        And for joint, records are primary sorted of ascending order of date
        And secondary sorted on entity type in order of Individual & Joint
        And tetroary sorted on entity name in alphabetically order 
        And under each group, shows total gift value at a bottom of each entity group 
        And shows `-` where no data available in any columns
        And shows notes as secondary information under gifor name 

        Examples:
            | entity | name |
            | Individual | I1 |
            | joint | I2 & I3 |

    Scenario Outline: gifting > export  pdf > export recevied pdf

        When user click export PDF
        Then PDF file download with proper format

        Examples:
            | entity | name |
            | Individual | I1 |
            | joint | I2 & I3 |

    Scenario Outline: gifting > export pdf > export filtered data

       When user applies any filter
       And export PDF
       Then shows records matching in PDF acccoring to filter