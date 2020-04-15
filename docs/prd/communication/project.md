# Project

## Project list

### UI Requirement

- Shows project in 2 tabs: ACTIVE & ARCHIVED
- ACTIVE
  - Shows only Active project (projects which are not archived)
  - General` project is shown first. Other projects are shown in alphabetical order
- ARCHIVED
  - Tab is shown only if records exists. Otherwise its not shown
  - Shows only archived project
  - Projects are shown in alphabetical order
- In both tabs, with each project, shows count of Notes and Meeting associated with that project

## Create

System auto creates `General` project for each legal entity.

Doesn't allow to create project with same name.

### Text resources

Error message when project with same name is already exists: `Already exists`

## Update

Doesn't allow to update `General`  project

Error message when project with same name is already exists: `Already exists`

## Archive

Doesn't allow to archive `General`  project

## Restore

Only `Archived` project can be restored

## Delete

- Doesn't allow to delete `General`  project
- If the Project isn't referenced anywhere, can be deleted with simple delete-confirmation.
- If project is referenced in meeting/notes, it provide 3 options to user:  Archive, Replace & Delete or Delete
  - On Archive, project will be archived
  - On Replace & Delete, opens Replace & Delete dialog
  - On Delete, shows delete-confirmation dialog and on confirmation project and all linked records will be deleted. 

### UI requirement

[Rough sketch](https://drive.google.com/file/d/1zBeq2yyfrxrqHFt7UwKFFP5y_MEp6In-/view)

## Replace & Delete

[Rough sketch](https://drive.google.com/file/d/1lH2n3H2rXJiyFC7G-2uAEZdYVZZj2FDj/view)

- User need to choose one of the existing project & then Replace.
- `Replace` button is disabled when project isn't yet selected.
- Drop-down doesn't offer the project which is being replaced.

