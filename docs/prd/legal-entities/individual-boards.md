# Board

## Overview

Individual can be member of board in more than one companies. 

Individual can be on board of his/her own family partnerships or Foundations.

Individual can also be on the board of other companies (Which are not family partnership/foundation). Such companies can be either Non-Profit or For-Profit.

To track the data about in which companies Individual is member of board, Board feature can be used.

## Entity

#### Company 

Name of the company. 

This company will always be Normal companies (No client entities)

Company should be unique across all of the board.

#### Board Role

Possible values can be : `Board Member` or `Advisory Board Member`

Note: Data in Family Partnerships and Family foundations type are being pulled from the Governance tab. Users can not add boards manually in both of these sections. In Governance, we don’t have any such way to specify “Board Role” for the director. So we won’t be able to show “Board role” under  Family Partnerships and Family foundations type. This has been confirmed with Keith and he said that that's OK for now. 

#### Start date

Date on which Individual joined the board.

Its mandatory field

#### End date

Date on which Individual left the board

Its not a mandatory field.

It should be always higher than `Start date` 

#### Notes

Any description about board membership. 



## Add board

- Allows to track Board membership of non client companies
- Board position in Family Partnership and Family Foundation can not be added. In Partnership and Foundation, we have a concept of Governance role. So if any partnership or Foundation where Individual has Director role, it will be pulled here.

- Allows to track current board positions or past board positions
  - If End date is not available, its current board position. If End date is available, its past board position.

### UI Requirement

[Mockup](https://drive.google.com/file/d/1RDCx1QpoQzcg1gDqoah8ixH6I2AEiJZA/view?usp=sharing)

- Default value for Board Role will be `Board Member`
- If a user adds same company, show this error `Board already exists for this company`.

## Edit board

- It can be used to track current board positions or past board positions.

- Edit is possible anytime

### UI Requirement

[Mockups](https://drive.google.com/file/d/1A-PEhZg8e6iBgZFqg92b9yVWhIjmgAGe/view?usp=sharing)

## Delete board

- Delete is possible anytime

### UI Requirement

[Mockup](https://drive.google.com/file/d/1QcLYKjjtbhsKTMgd5r1QcHLzUmBoAQNH/view?usp=sharing)

- Shows delete confirmation dialog

## Browse board

Shows all of the board positions in one place. 

Shows records in four sections : Family Partnerships,  Family Foundations, For-Profit Board, Not-For-Profit Boards

When record is not available in any section, shows `No {Section Name} Available` message for that section

Data under Family Partnerships and Foundations will be pulled from governance role. It can't be added manually.

### Family Partnerships

- Shows partnership entities where this individual is added as Director in Governance role of that partnership
- If role has end available, it will be shown in history
- Records are sorted in alphabetical order

### Family Foundations

- Shows foundation entities where this individual is added as Director in Governance role of that foundation
- If role has end available, it will be shown in history
- Records are sorted in alphabetical order

### For-Profit Board

- Shows For-Profit companies where this individual is in board
- If role has end available, it will be shown in history
- Records are sorted in alphabetical order

### Not-For-Profit Board

- Shows Not-For-Profit companies where this individual is in board
- If role has end available, it will be shown in history
- Records are sorted in alphabetical order

[Mockups](https://drive.google.com/file/d/1Tw20htoLFHVT8DbE2t8YIM7fsec7UtB0/view?usp=sharing)



## Download PDF

#### UX Rule

- Show PDF icon on the header of Boards page. On click of the PDF icon, opens the dropdown.
  - Values of the dropdown are: `Boards` & `Historical Boards`.
    - Current records are shown in the `Boards` report
    - Historical records are shown in the `Historical Boards` report.
- PDF icon won't be applicable when the tab has no records available.

#### PDF File

- Downloaded file name for `Boards`: `boards-of-{legal entity name}.pdf`
- Downloaded file name for `Historical Boards`: `historical-boards-of-{legal entity name}.pdf`
- Records are sorted in alphabetical order of name.

Sample PDF of Current Boards //TODO

Sample PDF of Historical Boards //TODO

