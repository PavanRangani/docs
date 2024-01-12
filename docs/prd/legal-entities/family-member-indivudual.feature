Feature: family-member-indivudual

    Scenario: individual > family member individual > add new family member

        Given user has open the current tab of the active family
        When user adds new family member individual for that family
        Then family member contact is added 
        When user opens that family member individual
        Then shows that family member individual in workspace
        And primary level shows `Contact`, `Gifting`, `Partnership` & `Trust` tabs
        And Secondary level shows `General` & `Family Navigator` tabs

    
    Scenario Outline: individual > family member individual > edit family member

        Given user has open workspace page of the family member contact
        When user edit the family member details from the `"<edit information>"`
        Then updated information are shown in the family member view

        Examples:
            | edit information |
            | General Information |
            | Contact Information |
            | Address |
            | Identification |
            | Relationship Status |
            | Family |
            | Other Information | 

    Scenario: individual > family member indidividual > delete family member

        Given user has open workspace page of the family member contact
        When user deletes the family member contact
        And Contact is not linked to any other places
        Then family member contact is deleted
        And family member contact is removed from that family

    Scenario Outline: individual > family member individual > delete not possible family member 

        Given user has open workspace page of the family member contact
        And family member contact is linked in `"<linked>"`
        When user deletes that family member individual
        Then family member contact is not deleted

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


    Scenario Outline: individual > family member individual > mark as deceased family member

        Given family has one active family member individual
        When user mark family member individual as decease from the `"<page>"`
        Then system mark that contact as deceased

        Examples:
            | page |
            | workspace page |
            | family details page |


    Scenario Outline: individual > family member individual > mark as undo deceased family member

        Given family has one deceased family member individual 
        When user undo deceased the family member individual from `"<page>"`
        Then system marks that family member contact as active

        Examples:
            | page |
            | workspace page |
            | family details page |


    Scenario Outline: individual > family member individual > individual family member convert to individual

        Given family has one `"<individual>"` family member individual
        When user convert that family member individual to individual from `"<page>"`
        Then system sets that individual family member to Individual
        And shows all tabs from the workspace

        Examples:
            | page | individual |
            | workspace page | active |
            | workspace page | deceased |
            | family details page | active |
            | family details page | deceased |


    Scenario Outline: individual > family member individual > add family member individual as current owner/governance role in partnership

        Given family has one family member individual 
        When user adds that family member individual from the same family's partnership as `"<type>"`
        Then shows that parntership name in the Active tab of the Partnership module for that family member individual
        And shows Partnership tab enabled

        Examples:
            | type |
            | current governance |
            | current owner |

    
    Scenario Outline: individual > family member individual > add family member individual as an past owner/governance role in partnership

        Given family has one family member individual 
        When user adds that family member individual from the same family's partnership as `"<type>"`
        Then shows that parntership name in the Inactive tab of the Partnership module for that family member individual
        And shows Partnership tab enabled

        Examples:
            | type |
            | Past governance |
            | Past owner |

    Scenario Outline: individual > family member individual > add family member individual as current trustor/trustees/beneficiary in trust

        Given family has one fmaily member individual
        When user adds that family member individual from the same family's trust as `"<type>"`
        Then shows that trust name in the Active tab of the Trust module for that family member individual
        And shows Trusts tab enabled

        Examples:
            | type |
            | Current Trustor |
            | Current Trustees |
            | Current Beneficiary |


    Scenario Outline: individual > family member individual > add family member individual as past trustor/trustees/beneficiary in trust

        Given family has one family member individual
        When user adds that family member individual from the same family's trust as `"<type>"`
        Then shows that trust name in the Active tab of the Trust module for that family member individual
        And shows Trusts tab enabled

        Examples:
            | type |
            | Past Trustor |
            | Past Trustees |
            | Past Beneficiary |


    Scenario Outline: individual > family navigator > shows proper relation for family member individual

        Given family has one family member individual
        When user add a `"<individual>"` as a `"<spouse>"` under that family member individual
        And family member individual is added to that `"<individual>"` as a `"<spouse>"`
        Then family navigator shows proper Relationship

        Examples:
            | individual | spouse |
            | Individual | Married |
            | family member individual | Married |
            | Individual | Cohabitating |
            | family member individual | Cohabitating |
            | Individual | Separated |
            | family member individual | Separated |
            | Individual | Divorce |
            | family member individual | Divorce |

    
    Scenario Outline: individual > family navigator > shows proper relation for family member individual in relationship status

        Given family has one family member individual
        When user add a `"<individual>"` as a `"<spouse>"` under that family member individual
        And family member individual is added to that `"<individual>"` as a `"<spouse>"`
        Then family navigator shows proper Relationship

        Examples:
            | individual | spouse |
            | Individual | Married |
            | family member individual | Married |
            | Individual | Cohabitating |
            | family member individual | Cohabitating |
            | Individual | Separated |
            | family member individual | Separated |
            | Individual | Divorce |
            | family member individual | Divorce |

    
    Scenario Outline: individual > family member individual > family navigator > shows proper relation for family member individual in family

        Given family has one family member individual
        And user add a `"<individual 1>"` as a father under that `family member individual H1`
        And user add a `"<individual 2>"` as a mother under that `family member individual H1`
        When user add a `family member individual H1` as child under `"<individual 1>"` & `"<individual 2>"`
        Then family navigator shows proper relationship

        Examples:
            | individual 1 | individual 2 |
            | Individual I1 | Individual I2 |
            | family member Individual F1 | family member Individual F2 |


    Scenario: individual > family member individual > gifting > add gift to family member individual

        Given family has one family member individual H1
        When Individual `I1` gives one `"<gifting>"` to family member individual H1
        Then gift is shown in the family member individial H1
        And Gifting tab is shown enabled

        Examples:
            | gifting |
            | Normal gift |
            | GST Exempt gift |