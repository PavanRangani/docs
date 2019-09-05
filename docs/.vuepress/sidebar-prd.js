module.exports = [
  // One object represents one Group in sidebar.
  // Its all url shall be added as array in `children` key.
  // its Sidebar link's texts are retrived from respective page's title.
  {
    title: 'Webapp',

    collapsable: false,
    children: [
      'webapp/application-url-navigation',
    ]
  }
]
