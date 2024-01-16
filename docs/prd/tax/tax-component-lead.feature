Feature: tax-component-lead

    Scenario Outline: tax > tax-component-lead : set tax component lead

        Given user has one active family where tax component lead is not set
        And entity of that family has Open & Filed tax return
        When user opens the edit dialog from `"<dialog>"`
        Then dropdown show all active CA user in alphabetical order
        When user select any user
        Then user is set as Tax Component lead for that family
        And user is set as Tax Component lead for Open tax return
        But user is not set as Tax Component lead for Field Tax Return.

        Examples:
            | dialog |
            | Family details page |
            | Admin console |


    Scenario Outline: tax > tax-component-lead : change tax component lead

        Given user has one active family where tax component lead is set
        And user is set as Tax Component Lead for Filed & Pending tax return
        When user change the CA user for that family from `"<dialog>"`
        Then system shows warning message
        And user is change at family
        And new user is set to only Open tax return
        And Filed tax return have exsiting user
        When user change the return status from Filed to Open
        Then new user is not set

        Examples:
            | dialog |
            | Family details page |
            | Admin console |


    Scenario Outline: tax > tax-component-lead : Remove user from CA role

        Given Ravi is associated with one family as Tax Component Lead 
        And entity of that family has Open & Filed return
        And Ravi is added as Tax Component Lead
        When user remove the Ravi as CA user from the clarius contact
        Then Ravi is not removed from the existing family
        And Ravi is not removed from the Open and Filed tax return


    Scenario Outline: tax > tax-component-lead : Change/Set not allowed for Archive family

        Given Ravi is associated with one active family as Tax Component Lead 
        When user mark that family as Archive
        Then pencil icon doesn't appear
        When user restore family
        Then pencil icon appear