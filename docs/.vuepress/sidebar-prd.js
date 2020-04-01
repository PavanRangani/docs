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
    title: 'Legal entities',
    path: '/prd/legal-entities',
    collapsable: false,
    children: [
    'legal-entities/individual.md',
    'legal-entities/joint.md',
    'legal-entities/partnership.md',
    'legal-entities/foundation.md',
    'legal-entities/estate.md',
    'legal-entities/trust.md',
    'legal-entities/deceased-terminated-legal-entity.md',
	'legal-entities/partners-of-legal-entities.md'
    ]
  },{
    title: 'Assets',
    children: [
      'assets/assets.md'
    ]
  },{
    title: 'Banking',
    children: [
      'banking/banking.md'
    ]
  },
  {
    title: 'Investments',
    children: [
      'investments/investments.md',
      'investments/IPS.md'
    ]
  },{
    title: 'Insurance',
    children: [
	  'insurance/insurance-requirement.md',
      'insurance/insurance-entity.md'
    ]
  }, {
    title: 'Philanthropy',
    children: [
      'philanthropy/report-grant-detail.md',
      'philanthropy/terminology.md',
	  'philanthropy/philanthropy.md'
    ]
  }, {
    title: 'Communications',
    children: [
      'communication/communication.md'
    ]
  }, {
    title: 'Tax',
    children: [
      'tax/tax.md',
      'tax/tax-components.md'
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
      'ui-components/browse-legal-entity-dialog',
      'ui-components/state-country-dropdown',
      'ui-components/zip-input',
    ]
  }
]
