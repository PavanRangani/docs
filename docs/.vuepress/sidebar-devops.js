module.exports = [
  // One object represents one Group in sidebar.
  // Its all url shall be added as array in `children` key.
  // its Sidebar link's texts are retrived from respective page's title.
  {
    title: 'Assets',
    children: [
      'assets/assets',
      'assets/backup-restore',
      'assets/backup-source-code',
      'deployment-architecture'
    ]
  }, {
    title: 'AWS',
    children: [
      'aws/ec2-backup',
      'aws/aws-cloudwatch-monitoring',
      'aws/aws-cloudwatch-alarms',
      'aws/cloudwatch-alarm-list'
    ]
  }, {
    title: 'Guides',
    children: [
      'guide/start-an-environment',
      'guide/docs-tool',
      'guide/setup-jenkins',
      'guide/new-server-setup',
      'guide/setup-jenkins-jobs',
      'guide/docker',
      'guide/nexus',
      'guide/ssl'
    ]
  }, {
    title: 'Admin Interface',
    children: [
      'guide/admin-interface',
      'guide/authelia'
    ]
  }
]
