# Athena Documentation

Our project document consists of mainly 3 types:

- [PRD](./prd/)
- [Architecture design documens](./architect/)
- [DevOps documents](./devops/)


To separate out contents and sidebars of each types, we have created them as link in Navigation bar.
Their sidebar's are from respective `sidebar-*.js` file.


## How to add new document
- Decide the place/group you want this page to be within
  - Based on what type of document you are going to create, you need to choose the root directory from `docs`
- Creata a new `md` file inside that group/folder. Its name should be meaningful.
- Add newly created page into `docs/.vuepress/sidebar.js` file at desired position
  - It is according to type. e.g If you are updating PRD, it would be `sidebar-prd.js` file
- Write document content and push it to Gitlab repo
- Create a Merge Request (if you are working on branch other than master)
- Once MR is merged, that page will be available to documents site.


## How to add new Type (in navbar)

- Create a new directory inside `docs`
- Create new file for side inside `docs/.vuepress/` with name `sidebar-newType.js`
- Update `config.js` file for:
    - nav
        - Add new object for navbar
    - sidebar
        - Import newly created file at top
        - add new sidebar

