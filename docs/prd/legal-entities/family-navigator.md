# Family Navigator

This dialogram allows for quick, visual lookup of a person’s standing within the overall Family.

## System Rule
- System will generate tree for each family and that tree will be shown for all Individuals & Joints of the family and family member contacts. (Active or Deceased/Terminated/Archived)

## UX Rules
- Family tree is shown in the `Family Navigator` tab.
- Shows proper message when family doesn't have any Individual. [See this](https://drive.google.com/file/d/1AoPi34IhGkYGoXOD8wWx0BdGXNX6Gttd/view?usp=sharing)
- This tab is applicable for Individual and Joint or famile details page. It is always shown enabled.
- System generates the diagram correctly only when there is a 2 way relationship specified for Individuals.
    - For e.g. Carson is added as a child to Tom's individual. But Tom is not specified as a father in Carson. Diagram doesn't generate properly. It shows both Individual but it won’t show relationships between them. Now Tom is specified as a father in Carson. So the diagram will be generated properly. 
- When the relationship is not specified correctly or individual with no relationship in the family, the system shows individuals without relationship. [See this](https://drive.google.com/file/d/1gcdx52JStnGOr7EdgmVknBJlLeYiT75W/view?usp=sharing)
- For `Family Member Contact`, 2 way relationship is not required. For e.g Mary Alberg is a family member contact. So user adds Mary Alberg under Divorce data of Tom. So user don't have to specify any relationship in Mary's contact.
    - Even if `Family Member Contact` is not added to a individual's family details, it still appears in the diagram. 
- Family tree diagram is shown in center aligned.
- If diagram is too long, shows horizontal or vertical scroll.
- Shows `Generation` and `Individual name` with each box.
- Each box have fixed width. If Individual name is too long, shows it in multi line.
- When a user opens the Family Navigator tab from an individual, the system highlights that individual's node. [See this](https://drive.google.com/file/d/1XA2ppNwomxTdoaZDXhrPKBzi1lPsH4jK/view?usp=sharing)
- Deceased individiaul's node is shown in gray background. [See this](https://drive.google.com/file/d/14cAUWoNcbJSHASqbT4EaxvO_35Nrzdg8/view?usp=sharing)
- On click of any entity box, opens that Individual in new page.
- Rules for the diagram
    - Shows `Rectangle box` for Individual
    - Shows rectangle box with backgroud color for Deceased Individual
    - Shows `dark line` for the Married relationship between 2 individuals.
    - Shows `- - - - - - - - -` line for the Divorced Individuals.
    - Shows `. . . . . . . . . .` line for the Cohabitating & Separated status.

## UI Rule
- Placeholder message when no Individual available: `This family is empty`
- [Family Navigator](https://drive.google.com/file/d/1jIupLBFUwvsofgMUKZ0f1TQt4muGbZfJ/view?usp=sharing)
- [Entity Family Navigator](https://drive.google.com/file/d/1XA2ppNwomxTdoaZDXhrPKBzi1lPsH4jK/view?usp=sharing)



###  Why we are not showing Man and Woman box differently?
- In USA, Gender identify is a big issue. So we have not give any feature of Gender in Athena. That's why we have not shown Man and Woman box differently.


### Technical Notes
- we are using [Balkan family tree](https://balkan.app/FamilyTreeJS) library's paid version to render family diagram.