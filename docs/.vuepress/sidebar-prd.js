module.exports = [
  // One object represents one Group in sidebar.
  // Its all url shall be added as array in `children` key.
  // its Sidebar link's texts are retrived from respective page's title.
  {
    title: 'Companies',
    children: [
      'companies/requirement'
    ]
  }, {
    title: 'Contacts',
    children: [
      'contacts/system-requirements',
      'contacts/contacts-of-clarius-users',
      'contacts/whitelisted-ips'
    ]
  }, {
    title: 'Family',
    children: [
      'family/families'
    ]
  },{
    title: 'Legal entities',
    path: '/prd/legal-entities',
    collapsable: false,
    children: [
    'legal-entities/browse-legal-entities.md',
    'legal-entities/individual.md',
    'legal-entities/individual-boards.md',
    'legal-entities/joint.md',
    'legal-entities/partnership.md',
    'legal-entities/foundation.md',
    'legal-entities/estate.md',
    'legal-entities/trust.md',
    'legal-entities/deceased-terminated-legal-entity.md',
	'legal-entities/partners-of-legal-entities.md',
	'legal-entities/browse-associated-partnerships.md',
	'legal-entities/browse-associated-trusts.md',
  'legal-entities/delete-legal-entity.md'
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
      'investments/IPS.md',
      'investments/meeting-notes.md'
    ]
  },{
    title: 'Gifting',
    children: [
      'gifting/overview.md',
	  'gifting/gifting.md',
	  'gifting/browse-gift.md'
    ]
  },{
    title: 'Insurance',
    children: [
	  'insurance/overview.md',
      'insurance/insurance-requirement.md'
    ]
  }, {
    title: 'Philanthropy',
    children: [
	  'philanthropy/overview.md',
      'philanthropy/grant.md',
	  'philanthropy/payment.md',
	  'philanthropy/browse.md',
	  'philanthropy/notes.md',
      'philanthropy/export.md',
      'philanthropy/report-grant-detail.md',
      'philanthropy/terminology.md'
    ]
  }, {
    title: 'Communications',
    children: [
      'communication/overview.md',
      'communication/meeting.md',
      'communication/note.md',
      'communication/project.md',
      'communication/browse.md',
      'communication/store-unsaved-changes-locally.md'
    ]
  }, {
    title: 'Tax',
    children: [
      'tax/tax.md',
      'tax/tax-components.md'
    ]
  }, {
    title: 'Security',
    children: [
      'security/overview.md',
      'security/requirement.md'
    ]
  }, {
    title: 'Views',
    children: [
      'views/overview.md',
      'views/requirement.md'
    ]
  }, {
    title: 'Mailing Lists',
    children: [
      'mailing-lists/overview.md',
      'mailing-lists/requirement.md'
    ]
  }, {
    title: 'Search',
    children: [
      'search/requirement.md'
    ]
  }, {
    title: 'Backup/Restore',
    children: [
      'backup-restore/overview.md',
      'backup-restore/requirement.md'
    ]
  }, {
    title: 'Webapp',
    children: [
      'webapp/application-url-navigation',
      'webapp/session-expiry-dialog'
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
      'ui-components/scroller'
    ]
  }
]
