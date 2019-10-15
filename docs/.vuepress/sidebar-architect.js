module.exports = [
  // One object represents one Group in sidebar.
  // Its all url shall be added as array in `children` key.
  // its Sidebar link's texts are retrived from respective page's title.
  {
    title: 'Architect Guide',

    path: '/architect/',
    children: [
      'architect-sample',
      'guide/howto-create-new-handbook',
      'guide/how-we-have-created-handbook'
    ]
  }
]
