// @ts-check
// Note: type annotations allow type checking and IDEs autocompletion

const lightCodeTheme = require('prism-react-renderer/themes/okaidia');
const darkCodeTheme = require('prism-react-renderer/themes/dracula');

/** @type {import('@docusaurus/types').Config} */
const config = {
  title: 'Asuka',
  tagline: 'Show Snackbars, dialogs, ModalSheets in a single provider.',
  url: 'https://pub.dev/packages/asuka',
  baseUrl: '/',
  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',
  favicon: 'img/asuka_logo.svg',

  // GitHub pages deployment config.
  // If you aren't using GitHub pages, you don't need these.
  organizationName: 'Flutterando', // Usually your GitHub org/user name.
  projectName: 'Asuka', // Usually your repo name.

  // Even if you don't use internalization, you can use this field to set useful
  // metadata like html lang. For example, if your site is Chinese, you may want
  // to replace "en" with "zh-Hans".
  i18n: {
    defaultLocale: 'en',
    locales: ['en'],
  },

  presets: [
    [
      'classic',
      /** @type {import('@docusaurus/preset-classic').Options} */
      ({
        docs: {
          sidebarPath: require.resolve('./sidebars.js'),
          // Please change this to your repo.
          // Remove this to remove the "edit this page" links.
          editUrl:
            'https://github.com/facebook/docusaurus/tree/main/packages/create-docusaurus/templates/shared/',
        },
        theme: {
          customCss: require.resolve('./src/css/custom.css'),
        },
      }),
    ],
  ],

  themeConfig:
    /** @type {import('@docusaurus/preset-classic').ThemeConfig} */
    ({
      navbar: {
        title: 'Asuka',
        logo: {
          alt: 'My Site Logo',
          src: 'img/asuka_logo.svg',
        },
        items: [
          {
            type: 'doc',
            docId: 'intro',
            position: 'left',
            label: 'Getting Started',
          },
          {
            href: 'https://github.com/Flutterando/asuka',
            label: 'GitHub',
            position: 'right',
          },
        ],
      },
      footer: {
        style: 'dark',
        links: [
          {
            title: 'Docs',
            items: [
              {
                label: 'Getting Started',
                to: '/docs/intro',
              },
            ],
          },
          {
            title: 'Community',
            items: [
              {
                label: 'Telegram',
                href: 'https://t.me/flutterando',
              },
              {
                label: 'Discord',
                href: 'https://discord.com/invite/x7X4uA9',
              },
              {
                label: 'Facebook',
                href: 'https://www.facebook.com/groups/flutterando',
              },
            ],
          },
          {
            title: 'More',
            items: [
              {
                label: 'Flutterando',
                href: 'https://flutterando.com.br/'
              },
              {
                label: 'Medium Flutterando',
                href: 'https://medium.com/flutterando',
              },
              {
                label: 'Github',
                href: 'https://github.com/Flutterando/asuka',
              },
            ],
          },
        ],
        copyright: `Copyright © ${new Date().getFullYear()} Flutterando, Inc. Built with Docusaurus.`,
      },
      prism: {
        theme: lightCodeTheme,
        darkTheme: darkCodeTheme,
      },
    }),
};

module.exports = config;
