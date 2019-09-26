const sidebarPRD = require('./sidebar-prd.js');
const sidebarArchitect = require('./sidebar-architect.js');
const sidebarDevOps = require('./sidebar-devops.js');

module.exports = {
  title: 'Athena Documentation',

  description: 'Projects PRD, Architect and DevOps docs',

  base: '/docs/',
  themeConfig: {

    repo: 'https://github.com/clarius-athena/docs',

    nav: [
      // { text: 'Home', link: '/' },
      { text: 'PRD', link: '/prd/' },
      // { text: 'Architect', link: '/architect/' },
      { text: 'DevOps', link: '/devops/' },
    ],
    sidebar: {
      '/prd/': sidebarPRD,
      // '/architect/': sidebarArchitect,
      '/devops/': sidebarDevOps
    },
    lastUpdated: 'Last Updated',
    editLinks: true,
    editLinkText: 'Edit on Github',
    docsDir: 'docs',
    activeHeaderLinks: true,
    searchMaxSuggestions: 20
  },
  dest: 'public',
  markdown: {
    lineNumbers: true
  },
  plugins: [
    ['@vuepress/back-to-top', true],
    ['@vuepress/medium-zoom', true],
    ['@vuepress/nprogress'],
    ['@dovyp/vuepress-plugin-clipboard-copy', true],
    ['@vuepress/active-header-links', {
      sidebarLinkSelector: '.sidebar-link',
      headerAnchorSelector: '.header-anchor',
      headerTopOffset: 120
    }],
    ['@vuepress/pwa', {
      serviceWorker: false,
      updatePopup: false
    }]
  ]
}
