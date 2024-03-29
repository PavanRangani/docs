module.exports = [
  // One object represents one Group in sidebar.
  // Its all url shall be added as array in `children` key.
  // its Sidebar link's texts are retrived from respective page's title.
  {
    title: 'Family',
    children: [
      'family/families.md',
      'family/browse-families.md',
      'family/browse-single-families.md',
      'family/service-team-summary.md',
      'family/quick-update-team.md'
    ]
  },{
    title: 'Legal entities',
    //path: '/prd/legal-entities',
    //collapsable: false,
    children: [
    'legal-entities/browse-legal-entities.md',
    'legal-entities/individual.md',
    'legal-entities/individual-pull-asset-address.md',
    'legal-entities/joint.md',
    'legal-entities/partnership.md',
    'legal-entities/foundation.md',
    'legal-entities/estate.md',
    'legal-entities/entity-id.md',
    'legal-entities/family-navigator.md',
    'legal-entities/display-name.md',
    'legal-entities/associated-entities.md',
    'legal-entities/deceased-terminated-legal-entity.md',
	'legal-entities/partners-of-legal-entities.md',
	'legal-entities/browse-associated-partnerships.md',
	'legal-entities/browse-associated-trusts.md',
  'legal-entities/delete-legal-entity.md',
  'legal-entities/individual-boards.md',
  'legal-entities/unable-disable-tab.md'
    ]
  },{
    title: 'Trust',
    children: [
      'trust/trust.md',
      'trust/add-trust.md',
      'trust/edit-trust.md',
      'trust/view-trust.md',
      'trust/amend-trust.md',
      'trust/pull-asset-to-owners.md',
      'trust/trust-terminate.md',
      'trust/pull-gift-to-trust.md'
    ]
  },{
    title: 'Household/ASA/Service team',
    children: [
      'household-asa-service-team/household.md',
      'household-asa-service-team/asa-entity.md',
      'household-asa-service-team/service-team.md',
      'household-asa-service-team/scope-of-service.md',
      'household-asa-service-team/household-team.md',
      'household-asa-service-team/asa-details.md',
      'household-asa-service-team/portfolio.md',
      'household-asa-service-team/related-entities-service-scope-tab.md'
    ]
  },{
    title: 'New Household/ASA/Service team',
    children: [
      'new-household-asa-service-team/overview.md',
      'new-household-asa-service-team/household.md',
      'new-household-asa-service-team/scope-of-service.md',
      'new-household-asa-service-team/household-team.md',
      'new-household-asa-service-team/asa-details.md',
      'new-household-asa-service-team/portfolio.md',
      'new-household-asa-service-team/related-entities-service-scope-tab.md'
    ]
  },{
    title: 'Admin Console',
    children: [
      'admin-console/manage-asa-version.md',
      'admin-console/textual-description.md',
      'admin-console/tax-component-lead.md'
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
    title: 'Research',
    children: [
      'research/browse-all-asset-manager-companies.md',
      'research/browse-single-asset-manager-companies.md',
      'research/communication.md',
      'research/tasks.md',
      'research/asset-manager-documents.md',
      'research/manage-funds.md',
      'research/browse-single-funds.md', 
      'research/investors.md', 
      'research/wire-instruction.md',
      'research/activity.md',
      'research/activity-task.md',
      'research/funds-documents.md'   
    ]
  },{
    title: 'Assets',
    children: [
      'assets/assets.md'
    ]
  },{
    title: 'Banking',
    children: [
      'banking/banking.md',
      'banking/funding-account.md',
      'banking/pull-bankings-of-associated-revocable-trust.md'
    ]
  },{
    title: 'Cash Flow',
    children: [
	  'cash-flow/cash-flow.md'
    ]
  },{
    title: 'Investments',
    children: [
      'investments/trade-logs.md',
      'investments/IPS.md',
      'investments/meeting-notes.md'
    ]
  },{
    title: 'Investment Workspace',
    children: [
      'investment-workspace/overview.md',
      'investment-workspace/manage.md',
      'investment-workspace/browse-workspace.md',
      'investment-workspace/portfolio-notes.md',
      'investment-workspace/export-as-pdf.md'
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
      'incentive-stock/vested-details.md',
      'incentive-stock/scenarios.md',
      'incentive-stock/export-as-excel.md'
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
    'gifting/export-as-excel-pdf.md',
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
      'tax/tax-component-lead.md',
      'tax/disregarded-entity.md',
      'tax/state.md',
      'tax/payment.md',
      'tax/dependencies.md',
      'tax/amended-or-audited.md',
      'tax/carryforward.md',
      'tax/tax-components.md',
      'tax/tax-component-master.md',
      'tax/deleted-restore-component.md',
      'tax/carryforwad-tax-component-into-the-next-year.md',
      'tax/auto-k1-component.md',
      'tax/auto-k1-distribution-partner.md',
      'tax/tax-reminder-mail.md',
      'tax/entity-status.md',
      'tax/summary-tab.md',
      'tax/open-all-components-report.md'
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
      'tasks/drag-drop-email-to-notes.md',
      'tasks/ca-pool.md',
      'tasks/pin.md',
      `tasks/sub-tasks-action.md`,
      'tasks/recurring-task-trigger.md',
      'tasks/effect-of-changes-at-family.md',
      'tasks/browse-my-tasks.md',
      `tasks/browse-group-task.md`,
      `tasks/quick-navigation.md`,
      'tasks/browse-entity-tasks.md',
      'tasks/pin-preferred-view.md',
      'tasks/meeting-notes-tasks.md',
      'tasks/tasks-notifications.md',   
      `tasks/scenarios.md`,
      `tasks/systematic-tasks.md`,
      `tasks/task-count-widget.md`,
      'tasks/prefill-unsaved-notes.md',
      'tasks/duplicate-task.md',
      'tasks/excel-export.md',
      `tasks/multi-step-template.md`
    ]
  },{
    title: 'Task Search',
    children: [
      'task-search/search.md',
      'task-search/search-result-sort-order.md',
      'task-search/filter.md',
      'task-search/quick-navigate-to-search.md',
      'task-search/preserve-search-tab-page-switch.md',
      'task-search/matching-word-highlight.md'
    ]
  },{
    title: 'Chat',
    children: [
      'chat/chat.md',
      'chat/my-chats.md',
      'chat/chat-notification.md',
      'chat/my-chat-scenario.md',
      `chat/mention.md`
    ]
  },{
    title: 'Security',
    children: [
      'security/overview.md',
      'security/requirement.md'
    ]
  }, {
    title: 'Tax Views',
    children: [
      'tax-views/tax-overview.md',
      'tax-views/tax-requirement.md',
      'tax-views/open-tax-component.md'
    ]
  }, {
    title: 'Compliance Views',
    children: [
      'compliance-views/compliance-overview.md',
      'compliance-views/compliance-authorized-ip-addresses.md',
      'compliance-views/compliance-custody-accounts.md',
      'compliance-views/compliance-meeting-audit-views.md',
      'compliance-views/compliance-service-scope.md'
    ]
  }, {
    title: 'Investments Views',
    children: [
      'investments-views/portfolio-ips.md',
      'investments-views/account-cash-target.md',
      'investments-views/limited-partnership.md',
      'investments-views/capital-calls-and-distributions.md',
      'investments-views/private-capital-commitments.md'
    ]
  },{
    title: 'Task Views',
    children: [
      'task-views/money-movement.md'
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
      'ui-components/template-selection-dialog.md',
      'ui-components/list-page',
      'ui-components/toast',
      'ui-components/list-item.md',
      'ui-components/browse-legal-entity-dialog',
      'ui-components/legal-entity-select.md',
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
