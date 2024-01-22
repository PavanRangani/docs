Feature: browse-gift

    Scenario Outline: gifting > browse page > browse gift given 

        Given "<entity>" "<name>" has given multiple gifts to various entities
        And deatils of gifts are as follows
        """
        | Entity name | Recepient | Giftor mode | GST Exmpe | Notes |
        | I1 | Individual | Cash | yes | yes |
        | I1 | Joint | Cash | No | Yes |
        | I1 | Trust | Private stock | No | No |
        | I1 | Foundation | Public stock | Yes | No |
        | I1 | Estate | Digital currency | No | No |
        | I2 & I3 | Individual | Cash | No | Yes |
        | I2 & I3 | Joint | Cash | Yes | Yes |
        | I2 & I3 | Trust | Private stock | No | Yes |
        | I2 & I3 | Foundation | Public stock | Yes | Yes |
        | I2 & I3 | Estate | Digital currency | No | No |
        """
        When user open browse page for given tab 
        Then shows gitfing records 
        And Gift records are shown in the group by recepient in alphabetically order
        And under each group, records are primary sorted of ascending order of date 
        And for joint, records are primary sorted of ascending order of date
        And secondary sorted on entity type in order of Individual & Joint
        And tetroary sorted on entity name in alphabetically order
        And shows gift date and gifor name 
        And shows notes as secondary information under giftor name 
        And show indirect tag if giftor is joint 
        And shows Gift mode 
        And estimate amount shows in oranage colour 
        And shows amount of charitable/retained interest gift for appropriate records
        And shows `0` in the Charitable/Retained Interest column where there is no record
        And shows discount value in tearms of percentage
        And shows Allocation value 
        And shows tick mark in GST Exemp 
        And under each group, shows `Total gift value` at a right side of recepient name 
        And shows total FMV, gift value ane discount at a Top right side
        And shows `-` where no data available in any columns

        Examples:
            | entity | name |
            | Individual | I1 |
            | joint | I2 & I3 |


    Scenario Outline: gifting > browse page > browse gift recevied 

        Given "<entity>" "<name>" has recevied multiple gifts to various entities
        When user open browse page for recevied tab 
        Then shows gitfing records 
        And Gift records are shown in the group by recepient in alphabetically order
        And under each group, records are primary sorted of ascending order of date 
        And for joint, records are primary sorted of ascending order of date
        And secondary sorted on entity type in order of Individual & Joint
        And tetroary sorted on entity name in alphabetically order
        And shows gift date and gifor name under giftor name 
        And shows notes as secondary information 
        And shows indirect tag if giftor is joint 
        And shows Gift mode 
        And estimate amount shows in oranage colour 
        And shows amount of charitable/retained interest gift for appropriate records
        And shows `0` in the Charitable/Retained Interest column where there is no record
        And shows discount value in tearms of percentage
        And shows Allocation value 
        And shows tick mark in GST Exemp 
        And under each group, shows `Total gift value` to the right side of the header
        And shows total FMV, gift value ane discount at a Top right side 
        And show `-` where no data available in any columns

        Examples:
            | entity | name |
            | Individual | I1 |
            | joint | I2 & I3 |





