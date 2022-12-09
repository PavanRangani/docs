# Pull Disregarded Entities & Grantor trust's 1041 tax components to Grantor/Individuals

## System Rule

- Tax components are only pulled on the `1040` tax return.
- Tax components of the `Disregarded Entity` of the Partnership & Trust are pulled to the individual where the individual is added as the `Grantor to` in a Trust tax return or `SSN of` in a Partnership.
- If Trust is a `Grantor trust` and files `1041` return, then only `K1` component will be pulled to Individual added in the `Grantor To`.
- Tax Components are pulled only in the same year.
    - For e.g. If Partnership `P1` have the tax return of the disregarded entity for the 2021 year, it will only be pulled to the individual 1040 tax return for 2021.
- If the individual doesn't have a 1040 tax return but their joint does have 1040, the tax component of the disregarded entity or 1041 will be pulled to the joint. 
- If both the individual and joint have a 1040 tax return, the tax component of the disregarded entity or 1041 will be pulled in both joint and individual.
- Active and Archived both tax returns will be pulled.


## UX Rule

- If the disregarded entity or 1041 have no component or disable component, then also its entity is pull to the individuals with proper message.
- Shows `Disregarded Entity` word for other entities having disregaeded entity and `1041` word for other entityes having 1041 tax compoennts in the bracket.
- On hover other entities, shows one icon. On click, opens the components tab of that tax return in the new tab.
- Each entity has `+` button. on click, opens a add component dialog for that entities.
    - For `1041`, `Part I - Income` will be pre-filled in the Section and `K1` will be pre-filled in the Document and its diasabled field.


## UI Rule

[Mockup](https://drive.google.com/drive/u/0/folders/1QqPmjJbMrwoPYx6e5WxV7bvMglgwRUA_)

- Message when no components available: `No Components Found`.
