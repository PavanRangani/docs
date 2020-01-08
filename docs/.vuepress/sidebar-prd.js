module.exports = [
  // One object represents one Group in sidebar.
  // Its all url shall be added as array in `children` key.
  // its Sidebar link's texts are retrived from respective page's title.
  {
    title: 'Companies',
    children: [
      'companies/system-requirements',
      'companies/ui-requirements',
    ]
  }, {
    title: 'Contacts',
    children: [
      'contacts/system-requirements',
      'contacts/ui-requirements',
      'contacts/contacts-of-clarius-users'
    ]
  }, {
    title: 'Family',
    children: [
      'family/relationship-managers'
    ]
  },{
    title: 'Investments',
    children: [
      'investments/system-requirements.md',
      'investments/ui-requirements.md',
    ]
  }, {
    title: 'Philanthropy',
    children: [
      'philanthropy/report-grant-detail.md',
      'philanthropy/terminology.md',
    ]
  },  {
    title: 'Webapp',
    children: [
      'webapp/application-url-navigation',
    ]
  }, {
    title: 'UI Components',
    children: [
      'ui-components/input',
      'ui-components/list-page',
      'ui-components/toast',
      'ui-components/list-item',
      'ui-components/browse-legal-entity-dialog'
    ]
  }
]
