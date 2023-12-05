# Family Navigator

This dialogram allows for quick, visual lookup of a person’s standing within the overall Family.

## System Rule
- System will generate tree for each family and that tree will be shown for all Individuals & Joints of the family and family member contacts. (Active or Deceased/Terminated/Archived)

## UX Rules
- Family tree is shown in the `Family Navigator` tab.
- This tab is applicable for Individual and Joint or famile details page. It is always shown enabled.
- System generates the diagram correctly only when there is a 2 way relationship specified for Individuals.
    - For e.g. Carson is added as a child to Tom's individual. But Tom is not specified as a father in Carson. Diagram doesn't generate properly. It shows both Individual but it won’t show relationships between them. Now Tom is specified as a father in Carson. So the diagram will be generated properly. 
- For `Family Member Contact`, 2 way relationship is not required. For e.g Mary Alberg is a family member contact. So user adds Mary Alberg under Divorce data of Tom. So user don't have to specify any relationship in Mary's contact.
    - Even if `Family Member Contact` is not added to a individual's family details, it still appears in the diagram. 
- Family tree diagram is shown in center aligned.
- If diagram is too long, shows horizontal or vertical scroll.
- Shows `Generation` and `Individual name` with each box.
- Each box have fixed width. If Individual name is too long, shows it in multi line.
- Name of the entity for which the tab is open is highlighted.
- On click of any entity box, opens that Individual in new page.
- Rules for the diagram
    - Shows `Rectangle box` for Individual
    - Shows rectangle box with backgroud color for Deceased Individual
    - Shows `dark line` for the Married relationship between 2 individuals.
    - Shows `- - - - - - - - -` line for the Divorced Individuals.
    - Shows `. . . . . . . . . .` line for the Cohabitating & Separated status.

## UI Rule
- [Family Navigator](https://drive.google.com/file/d/1jIupLBFUwvsofgMUKZ0f1TQt4muGbZfJ/view?usp=sharing)