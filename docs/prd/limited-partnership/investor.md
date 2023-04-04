# Investor

## Browse Investor

### UX rule
- Shows proper message when no investor is selected. [See this](https://drive.google.com/file/d/1ydeA8duT4EJ7abQMQp4w4Fr6_hvU9cnQ/view?usp=share_link)
- Shows + button to the header. On click, opens add investor dialog.
- Column name
    - Family
    - Investor
        - It should be a link. On click, open the individual in the other tab.
    - SLOA
        - Pulls its value from the wire instruction tab.
        - If SLOA is true then shows `✔` otherwise shows `-`.
    - Funding Account
        - Pulls its value from the wire instruction tab.
        - It shows the funding account name.
- Sorting order: Alphabetically sorted on the Investor name.
- When any new investor is added to the Investor tab, system will be auto added to the current wire instruction tab with SLOA = false.
- Shows tab disabled when it has no investor available.

### UI Rule
[Mockup](https://drive.google.com/file/d/1rnD7FtkcRHaiKHv65WHPFeMJ1UxX9Q0p/view?usp=share_link)

- Placeholder message: `No Records Found`


## Add Investor
### System Rule
- Investors can be added only for Active Asset managers.
- All types of Active legal entities can be added as Investor. (Not deceased or Terminated)
- When any investor is added, system will add that investor to the current wire instructions.

### UX Rule
- On click of + button, opens the `Manage Investors` dialog where users can add investors
- Allows to add multiple investors. 
- Shows proper message when no investor is available. [See this](https://drive.google.com/file/d/1xCR7nqWRWy22d0gnNDLeeO5_mm_kOx0L/view?usp=share_link)
- Investor is an alphabetically sorted dropdown of all types of entities.
- Shows entity type in the secondary information.
- Shows X button with each investor. On click, investor will be removed.
- Duplicate investors won't be allowed. System shows a proper error message.

### UI Rule
[Mockup](https://drive.google.com/file/d/1TlthBsQlj32xHZZtKrYYHxgQgzIEu3AY/view?usp=share_link)

- Placeholder text: `No Records Found`
- Error message for duplicate: `Duplicate value is not allowed`


## Edit Investor
### System Rule
- Can be edited anytime
- On change of the investor, system will auto update the investor from the current wire instruction tab.

### UX Rule
- Note: We have not given seperate edit action to change Investor. User can edit it from the add investor dialog.


## Delete Investor
### System Rule
- Can be deleted anytime.
- When any investor is removed, system will also remove that investor from the current wire instruction tab. (Archived wire instruction will remain as it is)

### UX Rule
- Note: We have not given seperate delete action to change Investor. User can delete it from the add investor dialog.




