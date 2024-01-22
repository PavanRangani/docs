Feature: export-excel

    Scenario Outline: gifting > export excel > export given excel

        Given "<entity>" "<name>" has given multiple gifts to various entities
        When user click export excel 
        Then excel file donload with proper format
        And Gift records are shown in the group by recepient in alphabetically order
        And under each group, records are primary sorted of ascending order of date 
        And for joint, records are primary sorted of ascending order of date
        And secondary sorted on entity type in order of Individual & Joint
        And shows indirect for indirect gift which is not directly given 
        And shows estimated for estimated type 
        And shows FMV Amount in oranage colour 
        And filter createria shows in a separeted table at a top with proper format
        And shows blank cell where no data available in any column

        Examples:
            | entity | name |
            | Individual | I1 |
            | joint | I2 & I3 |

    Scenario Outline: gifting > export pdf > export filtered data

       When user applies any filter
       And export Excel
       Then shows records matching in Excel acccoring to filter
       And filter createria shows in a separeted table at a top with proper format