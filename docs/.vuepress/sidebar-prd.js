module.exports = [
  // One object represents one Group in sidebar.
  // Its all url shall be added as array in `children` key.
  // its Sidebar link's texts are retrived from respective page's title.
  {
    title: 'Contacts',
    children: [
      'contacts/system-requirements',
      'contacts/ui-requirements',
    ]
  }, {
    title: 'Webapp',
    children: [
      'webapp/application-url-navigation',
    ]
  }
]
