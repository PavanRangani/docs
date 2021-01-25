# Browse Legal entities of any family

## System Rules

- It shows all Current/Deceased legal entities of that family.
  - There is total 6 types of legal entity available : `Individuals`, `Joint`, `Partnership`, `Foundation`, `Estate`, `Trust`.
- Show `Clarius` team information in the Browse page.
- User can add/edit/delete legal entity of that family.
- Current and Deceased legal entity are shown different tab.

## UX Rules

- Legal Entity has two tabs: `Current` and `Deceased/Terminated`.
  - `Current` - It shows all current legal entities.
  - `Deceased/Terminated` - It shows deceased or terminated legal entity.
- Both tab show separate table for each types. each table records are sorted in Alphabetical order. 
- When no records available then show a valid message.
  - For `Deceased/Terminated`, do not show section when it has no records available.
- For `Current`, each types has `+` button. On click of `+` button, it opens the Add dialog. 
- On hover, It shows vertmore actions:
  - For `Current` tab 
    - For `Inviduals` actions are: `Deceased` & `Delete`
    - For other types action are: `Terminate` & `Delete`
  - For `Deceased/Terminated`  tab
    - For `Individuals`  actions are: `Undo Deceased` & `Delete`
    - For other types action are : `Undo Terminate` & `Delete`

## UI Rules

Mockup //TODO

- Show `Clarius team` information at the top side.
- Both tab show separate table for each types. 
  - For `Current` tab, each table has one column `Name`. 
  - For `Deceased/Terminated`, It shows `Name` and `Deceased or Termination Date`.
    - For `Trust` , It show one extra column `Termination Notes`.
- When no records available then show a message `No {Types name} Available`.
  - For e.g If `Foundation` has no records, show a message `No Foundation Available`.
    - For `Deceased/Terminated ` tab , show this `No Records Available` message if records are not available.
- On click of vertmore action, dialog opens according to that action.
  - On click of `Deceased` & `Terminate`. [See this](../legal-entities/deceased-terminated-legal-entity.md#browse-legal-entities-of-any-family)
  - On click of `Undo Terminate`& `Undo Deceased`. [See this](../legal-entities/deceased-terminated-legal-entity.md#browse-legal-entities-of-any-family)
  - On click of Delete, open delete confirmation dialog. [See this](../legal-entities/delete-legal-entity.md#browse-legal-entities-of-any-family)

