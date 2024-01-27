Feature: select-real-estate-address-auto-remove-due-to-pulled-asset

  Scenario Outline: ux rule > individual > auto remove due to pulled asset > auto remove

        Given '"<individual>"' is an `"<role>"` in one '"<entity>"'
        And `"<entity>"` has 5 real estate type assets where 3 assets has address
        And Asset of real estate type for '"<entity>"' are as follows
        """
        | Name | address avabiable |
        | Dream Homes | yes |
        | Altitude Realty | yes |
        | Magnolia Abodes | no |
        | Prime Estates | no |
        | City Realtors | yes |
        """
        And in `"<individual>"'s` entity the address of Dream homes asset is selected
        When User changes `"<role>"` in `"<entity>"`
        Then address of `"<individual>"` is deleted
        And caption of address is deleted

        Examples:
        | entity | individual | role |
        | patnership | Bhargav | owner |
        | trust | ravi | trustor |
        | trust | pavan | trustee |
        | trust | rutvik | beneficiaries |

  Scenario Outline: ux rule > individual > auto remove due to pulled asset > pulled swtich is off

        Given '"<individual>"' is an `"<role>"` in one '"<entity>"'
        And `"<entity>"` has 5 real estate type assets where 3 assets has address
        And Asset of real estate type for '"<entity>"' are as follows
        """
        | Name | address avabiable |
        | Dream Homes | yes |
        | Altitude Realty | yes |
        | Magnolia Abodes | no |
        | Prime Estates | no |
        | City Realtors | yes |
        """
        When User turn off pulled assests from "<role>"
        Then address of `"<individual>"` is deleted
        And caption of address is deleted

        Examples:
        | entity | individual | role |
        | patnership | Bhargav | owner |
        | trust | ravi | trustor |
        | trust | pavan | trustee |
        | trust | rutvik | beneficiaries |

  Scenario Outline: ux rule > individual > auto remove due to pulled asset > auto delete

        Given '"<individual>"' is an `"<role>"` in one '"<entity>"'
        And `"<entity>"` has 5 real estate type assets where 3 assets has address
        And Asset of real estate type for '"<entity>"' are as follows
        """
        | Name | address avabiable |
        | Dream Homes | yes |
        | Altitude Realty | yes |
        | Magnolia Abodes | no |
        | Prime Estates | no |
        | City Realtors | yes |
        """
        And in `"<individual>"'s` entity the address of Dream homes asset is selected
        When User delete `"<entity>"`
        Then address of `"<individual>"` will be deleted
        And caption of address is deleted

        Examples:
        | entity | individual | role |
        | patnership | bhargav | owner |
        | trust | ravi | trustor |
        | trust | pavan | trustee |
        | trust | rutvik | beneficiaries |

  Scenario Outline: ux rule > individual > auto remove due to pulled asset > auto changed
  
        Given '"<individual>"' is an `"<role>"` in one '"<entity>"'
        And `"<entity>"` has 5 real estate type assets where 3 assets has address
        And Asset of real estate type for '"<entity>"' are as follows
        """
        | Name | address avabiable |
        | Dream Homes | yes |
        | Altitude Realty | yes |
        | Magnolia Abodes | no |
        | Prime Estates | no |
        | City Realtors | yes |
        """
        And in `"<individual>"'s` entity the address of Dream homes asset is selected
        When user changed in `"<entity>"`
        Then address of `"<individual>"` is auto-changed

        Examples:
        | entity | individual | role |
        | patnership | bhargav | owner |
        | trust | ravi | trustor |
        | trust | pavan | trustee |
        | trust | rutvik | beneficiaries |
