# Related Entities in Service Scope tab

## System Rule
- Applicable for all entities.
- Shows all active related entities of `Partnership`, `Trust`, `Foundation`, `Estate`.
    - For Partnership, where Entity is added as current owner & governance role.
    - For Trust, where Entity is added Trustor, Trustee & Beneficiary.
    - For Foundation, Where Individual is added as Governance role.
    - For Estate, Where Individual is added as Deceased.

## UX Rule
- If any entity has no related entities, this section won't be shown.
- For `Individual` & `Joint`, shows all entity types section.
- For `Partnership`, `Foundation`, `Estate` & `Trust`, shows only Partnership & Trust section.
- Shows each entity type in order of - Partnerships, Foundations, Trusts, Estates
- Column for Partnerships
    - Name
    - Role
        - In case of multiple, shows full word wrap and shows it in multiline. (Full word means `Tom (Managing Director)` or `Managing Director`) 
    - Established On
    - Purpose
        - When notes are too long, show it in multiline.
- Column for Foundations
    - Name
    - Role
        - In case of multiple, shows full word wrap and shows it in multiline. (Full word means `Tom (Managing Director)` or `Managing Director`) 
    - Established On
    - Purpose
        - When notes are too long, show it in multiline.
- Column for Trusts
    - Name
    - Role
        - In case of multiple, shows full word wrap and shows it in multiline. (Full word means `Tom (Income)` or `Income`) 
    - Date of Formation
    - Purpose
        - When notes are too long, show it in multiline.
- Column for Estate
    - Name
    - Deceased
    - Established On
- For Joint, the system will show the first name of Individual with each value. For e.g. `Tom (Role 1, Role 2, Role 3), Judi (Role 1)` or `Tom (85%), Judi (85%)`
- On hover of each record, shows hover effect. On click, it opens that entity in a new page.

## UI Rule
- [Mockup](https://drive.google.com/file/d/1595b3HZBVSd_SHdqva_Y2VuIP36TTQVx/view?usp=sharing)


