# Family Navigator

This dialogram allows for quick, visual lookup of a person’s standing within the overall Family.

## System Rule
- System will generate tree for each family and that tree will be shown for all Individuals and Joints of the family. (Active or Deceased/Terminated)

## UX Rules
- Family tree is shown in the `Family Navigator` tab. 
- This tab is applicable for Individual and Joint. It is always shown enabled.
- Family tree diagram is shown in center aligned.
- If diagram is too long, shows horizontal or vertical scroll.
- Shows `Generation` and `Individual name` with each box.
- Each box have fixed width. If Individual name is too long, shows it in multi line.
- Name of the entity for which the tab is open is highlighted.
- On click of any entity box, opens that Individual in new page.
- Rules for the diagram
    - Shows `Rectangle box` for male Individual
    - Shows `Rounded Rectangle box` for female Individual
    - Shows box with backgroud color for Deceased Individual
    - Shows `dark line` for the Married relationship between 2 individuals.
    - Shows `- - - - - - - - -` line for the Divorced Individuals.
    - Shows `. . . . . . . . . .` line for the Cohabitating & Separated status.

## UI Rule
- [Family Navigator](https://drive.google.com/file/d/1jIupLBFUwvsofgMUKZ0f1TQt4muGbZfJ/view?usp=sharing)