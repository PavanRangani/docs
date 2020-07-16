module.exports = [
  // One object represents one Group in sidebar.
  // Its all url shall be added as array in `children` key.
  // its Sidebar link's texts are retrived from respective page's title.
  {
    title: 'Assets',
    children: [
      'assets/backup-source-code'
    ]
  }, {
    title: 'AWS',
    children: [
      'aws/ec2-backup'
    ]
  }, {
    title: 'Guides',
    children: [
      'guide/start-an-environment',
      'guide/docs-tool',
      'guide/setup-jenkins'
    ]
  }
]
