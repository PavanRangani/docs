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
- Board position in Family Partnership and Family Foundation can not be added. In Partnership and Foundation, we have a concept of Governance role. So if any partnership or Foudnation where Individual has Director role, it will be pulled here.

- Allows to track current board positions or past board positions
  - If End date is not available, its current board position. If End date is available, its past board position.

### UI Requirement

// TODO: Mockups

## Edit board

- It can be used to track current board positions or past board positions.

- Edit is possible anytime

### UI Requirement

// TODO: Mockups

## Delete board

- Delete is possible anytime

### UI Requirement

- Shows delete confirmation dialog

## Browse board

Shows all of the board positions in one place. 

Shows records in four sections : Family Partnerships,  Family Foundations, For-Profit Board, Not-For-Profit Boards

When record is not available in any section, shows `No Records Found` message for that section

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

// TODO: Mockups