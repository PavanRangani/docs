# Entity ID

## System rule
- Each legal entity is assigned one unique ID 
- Entity IDs are of the form `{Family ID}-{Entity ID}`, so Family 1 has Entities 1-1, 1-2, 1-3, etc., and Family 2 has Entities 2-1, 2-2, 2-3, etc.
- So each family can then create new entities in the future within their own number space which will never overlap with another family's number space.
- It can not be changed.
- Entity ID is never reused. 
    - For e.g. Any entity is assigned `1-1` ID. Now that entity is deleted and again new entity is created in that family. So system will assign ID `1-2`. `1-1` is not reused. 

## UX rules
- Entity ID is shown in legal entity contact tab. [See this mockup](https://drive.google.com/file/d/13pFETQnLaTbZ0HxPammtwFKbYHe7dEKn/view?usp=sharing)