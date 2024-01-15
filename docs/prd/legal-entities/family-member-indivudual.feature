Feature: family-member-indivudual

    Scenario: individual > family member > add new family member

        Given user has open the current tab of the active family
        When user adds new family member for that family
        Then family member is added 
        When user opens that family member
        Then shows that family member in workspace
        And primary level shows `Contact`, `Gifting`, `Partnership` & `Trust` tabs
        And Secondary level shows `General` & `Family Navigator` tabs

    
    Scenario Outline: individual > family member > edit family member

        Given user has open workspace page of the family member contact
        When user edit the `"<edit information>"`
        And changes the any details
        Then updated information are shown

        Examples:
            | edit information |
            | General Information |
            | Contact Information |
            | Address |
            | Identification |
            | Relationship Status |
            | Family |
            | Other Information | 

    Scenario Outline: individual > family member > delete family member

        Given user has open workspace page of the family member
        And Contact is not linked to any other places
        When user deletes the family member from `"<page>"`
        Then family member contact is deleted
        And family member contact is removed from all places

        Examples:
            | page |
            | workspace page |
            | family details page |

    Scenario Outline: individual > family member > delete not possible family member 

        Given user has open workspace page of the family member 
        And family member contact is linked in `"<linked>"`
        When user deletes that family member 
        Then family member is not deleted

        Examples:
            | linked |
            | Recipient in Gifting |
            | Partnership current Owner |
            | Partnership past Owner |
            | Partnership current Governance |
            | Partnership past Governance |
            | Trust - current - Trustor, Trustees, Beneficiary | 
            | Trust - past - Trustor, Trustees, Beneficiary |
            | Father |
            | Mother |
            | Children |
            | Spouse |
            | Partner |


    Scenario Outline: individual > family member > mark as deceased family member

        Given family has one active family member
        When user mark family member individual as decease from the `"<page>"`
        Then that family member is shown in the deceased tab
        And shows deceased tag in the workspace page

        Examples:
            | page |
            | workspace page |
            | family details page |


    Scenario Outline: individual > family member > mark as undo deceased family member

        Given family has one deceased family member  
        When user undo deceased the family member from `"<page>"`
        Then that family member is shown in the active tab
        And removed deceased tag in the workspace page

        Examples:
            | page |
            | workspace page |
            | family details page |


    Scenario Outline: individual > family member > family member convert to individual

        Given family has one `"<individual>"` family member
        When user convert that family member to individual from `"<page>"`
        Then it entity is shown in the Individual group
        When user opens that individual's workspace page
        And shows all tabs

        Examples:
            | page | individual |
            | workspace page | active |
            | workspace page | deceased |
            | family details page | active |
            | family details page | deceased |


    Scenario Outline: individual > family member > add family member as current owner/governance role in partnership

        Given family has one family member individual 
        And that family has one Partnership
        And Family member is added as as `"<type>"` in Partnership
        When user opens the workspace page of the family member
        Then shows Partnership tab enabled 
        And shows that parntership in the Active tab

        Examples:
            | type |
            | current governance |
            | current owner |

    
    Scenario Outline: individual > family member > add family member as an past owner/governance role in partnership

        Given family has one family member individual 
        And that family has one Partnership
        And that family member is added as as current `"<type>"` in Partnership
        When user marks that family member as past `"<type>"`
        And user opens the workspace page of the family member
        Then shows Partnership tab enabled 
        And shows that parntership in the Inactive tab

        Examples:
            | type |
            | governance |
            | owner |

    Scenario Outline: individual > family member > add family member individual as current trustor/trustees/beneficiary in trust

        Given family has one fmaily member individual
        And that family has one Trust
        And that family member is added as as `"<type>"` in Trust
        When user opens the workspace page of the family member
        Then shows Trust tab enabled 
        And shows that trust in the Active tab

        Examples:
            | type |
            | Current Trustor |
            | Current Trustees |
            | Current Beneficiary |


    Scenario Outline: individual > family member > add family member individual as past trustor/trustees/beneficiary in trust

        Given family has one family member individual
        And that family has one Trust
        And that family member is added as `"<type>"` in that Trust
        When user amend the trust 
        And change the `"<type>"`
        And opens the workspace page of the family member
        Then shows Trust tab enabled 
        And shows that tust in the Inactive tab

        Examples:
            | type |
            | Trustor |
            | Trustees |
            | Beneficiary |


    Scenario Outline: individual > family member > family navigator > shows proper relation for family member added in relationship status 

        Given family has one family member individual
        And `"<individual>"` added as a `"<spouse>"` under that family member
        When family member is added as a `"<spouse>"` under `"<individual>"`
        Then family navigator shows proper Relationship between `"<individual>"` & `"<spouse>"`

        Examples:
            | individual | spouse |
            | Individual I1 | Married |
            | family member F1 | Married |
            | Individual I1 | Cohabitating |
            | family member F1| Cohabitating |
            | Individual I1 | Separated |
            | family member F1 | Separated |
            | Individual I1 | Divorce |
            | family member F1 | Divorce |

    
    Scenario Outline: individual > family member > family navigator > shows proper relation for family member added in family details

        Given family has one family member
        And user add a `"<individual 1>"` as a father under that family member
        And user add a `"<individual 2>"` as a mother under that family member
        When user add a family member as child under `"<individual 1>"` & `"<individual 2>"`
        Then family navigator shows proper relationship

        Examples:
            | individual 1 | individual 2 |
            | Individual I1 | Individual I2 |
            | family member Individual F1 | family member Individual F2 |


    Scenario: individual > family member > gifting > add gift to family member

        Given family has one family member
        When Individual `I1` gives one gift to family member individual H1
        Then gift is shown in the family member individial H1
        And Gifting tab is shown enabled
