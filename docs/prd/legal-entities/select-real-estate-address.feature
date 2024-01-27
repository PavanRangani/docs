Feature: select-real-estate-address


  Scenario: ux rule > individual > select real estate address >  select asset address in individual's address
    
        Given family has one individual
        And individual has 5 real estate type assets where 3 assets has address
        And 2 assets has no address
        When user opens individual address edit dialog
        Then shows `Select Address` action
        When user perform that action
        Then shows one dropdown
        And drodpown shows real estate type asset in alphabetical order
        And address of that asset is shown in secondary information.
        When user select any asset
        Then asset address is prefilled
        And addresses fields are disabled
        And caption is changed with asset name
        When user save the changes
        Then view page shows asset name as an address header
        And header has one redirect icon
        When user click on that icon
        Then it opens asset view dialog in the same page

  Scenario: ux rule > individual > select real estate address > change the asset address in individual

        Given Individual `I1` has 2 type of real estate assets where both of Assets address
        And address of Asset `A1` is selected in Individual `I1`
        When user selects the address of asset `A2` instead of `A1` in Individual `I1`
        Then caption & address is changed in address edit dialog of Individual `I1`
        When user save the changes
        Then view page shows new asset address with proper caption

  Scenario: ux rule > individual > select real estate address > remove the asset address in individual
  
        Given Individual `I1` has 2 type of real estate assets where Asset `A1` has address
        And address of Asset `A1` is selected in Individual `I1`
        When user remove the asset address in Individual `I1`
        Then select address dropdown is removed
        And shows `Select Address` button
        And address fields are enabled
        And caption is reset to default state
        When user save the chanages
        Then asset address is removed
        And view page shows '-' in address fileds
        And view page show default caption name

  Scenario: ux rule > individual > select real estate address > delete individual

        Given Individual `I1` has 2 type of real estate assets where Asset `A1` has address
        And address of Asset `A1` is selected in Individual `I1`
        When user delete Individual `I1`
        Then Individual `I1` deleted successfully

  Scenario: ux rule > individual > select real estate address > change address of real estate asset

        Given Individual `I1` has 2 type of real estate assets where Asset `A1` has address
        And address of Asset `A1` is selected in Individual `I1`
        When user changed address of Asset `A1`.
        And save the chnages
        Then address of `Asset A1` is changed
        And address of Individual `I1` is also changed

  Scenario: ux rule > individual > select real estate address > remove address of real estate asset

        Given Individual `I1` has 2 type of real estate assets where Asset `A1` has address
        And address of Asset `A1` is selected in Individual `I1`
        When user removed address of Asset `A1`
        And save the changes
        Then address is deleted from Individual `I1`
        And caption is deleted from Individual `I1`
        And caption & address of Individual `I1` is reset to default state

  Scenario: ux rule > individual > select real estate address > delete real estate asset
    
        Given Individual `I1` has 2 type of real estate assets where Asset `A1` has address
        And address of Asset `A1` is selected in Individual `I1`
        When user delete Asset `A1`
        Then Asset `A1` deleted successfully
        And address is deleted from Individual `I1`
        And caption is deleted from Individual `I1`
        And caption & address of Individual `I1` is reset to default state

  Scenario: ux rule > individual > select real estate address > transfer real estate asset
        Given Individual `I1` has 2 type of real estate assets where Asset `A1` has address
        And address of Asset`A1` is selected Individual `I1`
        When user tranfer Asset`A1` to Individual `I2`
        Then address of Individual`I1` remains as it is
        And caption of address  is remains as it is

  Scenario: ux rule > individual > select real estate address > disposed real estate asset

        Given Individual `I1` has 2 type of real estate assets where Asset `A1` has address
        And address of Asset `A1` is selected in Individual `I1`
        When user dispoed Asset `A1`
        Then address is removed from `I1`
        And address is deleted from Individual `I1`
        And caption is deleted from Individual `I1`
        And caption & address of Individual `I1` is reset to default state
