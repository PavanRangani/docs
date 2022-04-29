module.exports = [
  // One object represents one Group in sidebar.
  // Its all url shall be added as array in `children` key.
  // its Sidebar link's texts are retrived from respective page's title.
  {
    title: 'Family',
    children: [
      'family/families'
    ]
  },{
    title: 'Legal entities',
    //path: '/prd/legal-entities',
    //collapsable: false,
    children: [
    'legal-entities/browse-legal-entities.md',
    'legal-entities/browse-legal-entities-of-any-family.md',
    'legal-entities/individual.md',
    'legal-entities/joint.md',
    'legal-entities/partnership.md',
    'legal-entities/foundation.md',
    'legal-entities/estate.md',
    'legal-entities/trust.md',
    'legal-entities/display-name.md',
    'legal-entities/associated-entities.md',
    'legal-entities/deceased-terminated-legal-entity.md',
	'legal-entities/partners-of-legal-entities.md',
	'legal-entities/browse-associated-partnerships.md',
	'legal-entities/browse-associated-trusts.md',
  'legal-entities/delete-legal-entity.md',
  'legal-entities/individual-boards.md',
  'legal-entities/clarius-team-of-legal-entities.md',
  'legal-entities/unable-disable-tab.md'
    ]
  },{
    title: 'Contact/Company',
    children: [
      'contact-company/company-requirements.md',
      'contact-company/contact-requirements.md',
      'contact-company/contacts-of-app-users.md',
      'contact-company/whitelisted-ips.md',
      'contact-company/client-section.md'
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
  },{
    title: 'Investments',
    children: [
      'investments/trade-logs.md',
      'investments/IPS.md',
      'investments/meeting-notes.md'
    ]
  },{
    title: 'Incentive Stock',
    children: [
      'incentive-stock/overview.md',
       'incentive-stock/incentive-stock.md',
      'incentive-stock/grant.md',
      'incentive-stock/exercise.md',
      'incentive-stock/forfeit.md',
      'incentive-stock/accelerate.md',
      'incentive-stock/exchange.md',
      'incentive-stock/vested-details.md'
    ]
  },{
    title: 'Aggregated Report',
    children: [
      'aggregated-report/download-report.md',
      'aggregated-report/manage-aggregate-report.md',
      'aggregated-report/manage-app-report.md',
      'aggregated-report/overview.md',
      'aggregated-report/pdf.md'
    ]
  },{
    title: 'Gifting',
    children: [
    'gifting/overview.md',
	  'gifting/gifting.md',
	  'gifting/browse-gift.md',
    'gifting/lifetime-summary.md',
    'gifting/add-edit-delete-prior-year-record.md',
    'gifting/gift-to-partnership.md'
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
    'philanthropy/contribution.md',
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
      'communication/philanthropy-notes.md',
      'communication/store-unsaved-changes-locally.md',
      'communication/meeting-notes.md'
    ]
  }, {
    title: 'Tax',
    children: [
      'tax/tax.md',
      'tax/tax-components.md',
      'tax/tax-reminder-mail.md',
      'tax/entity-status.md'
    ]
  }, {
    title: 'Estate Plan',
    children: [
      'estate-plan/overview.md',
      'estate-plan/will.md',
      'estate-plan/directives.md',
      'estate-plan/meeting-notes.md',
      'estate-plan/testamentary-trust.md'      
    ]
  }, {
    title: 'Tasks',
    children: [
      'tasks/overview.md',
      'tasks/task-instance.md',
      `tasks/sub-tasks-action.md`,
      'tasks/recurring-task-trigger.md',
      'tasks/browse-my-tasks.md', 
      'tasks/browse-entity-tasks.md',
      'tasks/meeting-notes-tasks.md',
      'tasks/tasks-notifications.md',     
      `tasks/scenarios.md`,
      `tasks/systematic-tasks.md`,
      `tasks/task-count-widget.md`,
      'tasks/excel-export.md',
      `tasks/multi-step-template.md`
    ]
  }, {
    title: 'Chat',
    children: [
      'chat/chat.md',
      'chat/my-chats.md',
      'chat/chat-notification.md',
      'chat/my-chat-scenario.md'
    ]
  },{
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
    title: 'Views Compliance',
    children: [
      'views-compliance/overview.md',
      'views-compliance/authorized-ip-addresses.md',
      'views-compliance/custody-accounts.md'
    ]
  },{
    title: 'Views Investments',
    children: [
      'views-investments/ips.md'
    ]
  }, {
    title: 'Users',
    children: [
      'users/users.md'
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
      'ui-components/auto-complete-dropdown-of-contact-company',
      'ui-components/list-page',
      'ui-components/toast',
      'ui-components/list-item.md',
      'ui-components/browse-legal-entity-dialog',
      'ui-components/state-country-dropdown',
      'ui-components/zip-input',
      'ui-components/scroller'
    ]
  },
  {
    title: 'Misc',
    children: [
      'misc/year-end-todos'
    ]
  }
]
