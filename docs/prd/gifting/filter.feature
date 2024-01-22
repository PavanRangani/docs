Feature: filter

    Scenario: gifting > filter > apply filter 

         Given "<entity>" "<name>" has given multiple gifts to various entities
         When user applies any filter 
         Then list page shows matching records 
         When user applies ajy filter
         And list have doesn't have matching records 
         Then shows proper message 

        Examples:
            | entity | name |
            | Individual | I1 |
            | joint | I2 & I3 |