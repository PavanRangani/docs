Feature: additional-address

    Scenario Outline: ux scenario > individual > additional address > user enter extra address
        Given "<type>" has 4 address
        When user adds "<address>" new address
        And enter details in new address
        And Save it
        Then "<total>" address are shown in view with proper details

    Examples:
      | type | address | total |
      | individual | two | six |
      | individual | four | eight |
      | family memeber individual | two | six |
      | family memeber individual | four | eight |

    Scenario Outline: ux scenario > individual > additional address > user removed extra addresses
        Given "<type>" has "<address>" address
        When user removed 2 address
        And Save it
        Then `"<total>"` address are shown view with proper details

    Examples:
      | type | address | total |
      | individual | six | four |
      | individual | eight | six |
      | family memeber individual | six | four |
      | family memeber individual | eight | six |

