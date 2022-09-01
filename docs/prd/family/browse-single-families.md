# Browse Single Family details

## UX Rule

- Shows associated users and legal entities of the family in this page
- If active family has no `Client Associate`, show `CA Pool` as a word for Client Associate.
- `PC / Rec.` column logic is same as the browse page.
- Shows tick mark icon for user marked as a lead. `Mark as lead` user shown first in the roles columns and then the other user is alphabetically sorted.
- New legal entities can't be created for an archived family. Shows `Archived` tag for the archived family.
- Legal entities are shown in two tabs: `Current` or `Archived` & `DECEASED/TERMINATED`
  - When family is Archived, tab name will be changed from `Current` to `Archived`.
  - **In Active tab,**
    - For each type of legal entity shows one table

    - Column for Individuals
      - Name
      - Spouse
      - Children
      - Father
      - Mother

    - Column for Joint
      - Name

    - Column for Partnership
      - Name
      - Established on
      - Purpose of Partnership

    - Column for Foundations
      - Name
      - Established on
      - Purpose of Foundation

    - Column for Estates
      - Name
      - Established on
      - Deceased

    - Column for Trusts
      - Name
      - Date of Formation
      - Type
      - Details
      - Purpose of Trust

    - Vertmore actions of each row in `ACTIVE` tab
      - Deceased (for individual)
      - Terminate (For entities other than Individual)
      - Delete
      - On Deceased/Terminate, opens Deceased or Terminate dialog.
    - On click of ADD button with each table, opens add dialog of that legal entity.

  - **In Deceased/Terminated tab**, 
    - shows table for those legal entity which has records 
    - For e.g. If there isn't any trust which is terminated, table for trust won't be shown
    - Column for Individual
      - Name
      - Deceased Date
    - Column for Joint, Partnership, Foundation, Estate
      - Name
      - Termination Date
    - Column for Trust
      - Name
      - Termination Date
      - Termination Notes
    - Vertmore actions of each row in `DECEASED/TERMINATED` tab
      - Undo Deceased (for individual)
      - Undo Terminate (For entities other than Individual)
      - Delete
      - On Undo Deceased/Undo Terminate, opens confirrmation dialog.

  - Under each table for both tabs records are sorted in alphabetical order
  - On mouse hover of any record shows hover effect.
  - On click of any row opens workspace page of that legal entity
  -  On Delete, opens delete confirmation dialog
  - See [deceased-terminated-delete-legal-entity](../legal-entities/deceased-terminated-legal-entity) for more details on Delete, Decease and Terminate action.


## UI Rule

[Mockups of Current Tab](https://drive.google.com/file/d/1eBDtFL4SYSucH7CwSWiolf1yNbdKBaLu/view?usp=sharing) & [Deceased/Terminated tab](https://drive.google.com/file/d/11vEMsisFR7SoknPPiLq6ULxZNTNF362Z/view?usp=sharing)
[Mockup of Archived family](https://drive.google.com/file/d/1MQrXe3svdh8SLfAww6qx98csg_PZHGST/view?usp=sharing)

- When any of the column has long values, shows it in next line. Never shows ellipses.
-  `Purpose` column in Trust , Foundation and Partnership are shown with maximum width of 1000px. Means for large screen, it never shown in more than 1000px.