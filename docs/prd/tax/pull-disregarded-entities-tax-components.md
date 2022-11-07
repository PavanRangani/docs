# Pull Disregarded Entities tax component to Grantor/Individuals

## System Rule

- Tax components are only pulled on the `1040` tax return.
- Tax components of the `Disregarded Entity` of the Partnership & Trust are pulled to the individual where the individual is added as the `Grantor to` in a Trust or `SSN of` in a Partnership.
- Tax Components are pulled only in the same year.
    - For e.g. If Partnership `P1` have the tax return of the disregarded entity for the 2021 year, it will only be pulled to the individual 1040 tax return for 2021.
- If the individual doesn't have a 1040 tax return but their joint does have 1040, the tax component of the disregarded entity will be pulled to the joint. 
- If both the individual and joint have a 1040 tax return, the tax component of the disregarded entity will be pulled in both joint and individual.
- Active and Archived both tax returns will be pulled.


## UX Rule

- If the disregarded entity have no component or disable component, then also its entity is pull to the individuals with proper message.
- Shows `Self` word in bracket for individual and `Disregarded Entity` word for other entities in the bracket.
- Each entity has `+` button. on click, opens a add component dialog for that entities.


## UI Rule

[Mockup](https://drive.google.com/drive/u/0/folders/1QqPmjJbMrwoPYx6e5WxV7bvMglgwRUA_)

- Message for Disregarded entity: `No Components Found`.




