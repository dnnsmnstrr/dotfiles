// finicky config (https://github.com/johnste/finicky)
const defaultBrowser = 'Google Chrome'
const personalBrowser = {
  name: 'Google Chrome',
  profile: 'Default'
}

const WORK_DOMAIN = 'hpm.agency'
const workUrls = [WORK_DOMAIN, 'hpm.digital', 'hpm.guru', /.*\.hpm.land/, /.*\.hpm.agency$/]
const devUrls = ['github.com', 'gitlab.com', 'localhost']
const videoCalling = ['meet.jit.si']
const personalUrls = ['twitter.com', 'steam.com', 'steampowered.com', 'disneyplus.com']

const DEBUG = false

module.exports = {
  defaultBrowser,
  options: {
    hideIcon: !DEBUG,
    logRequests: DEBUG
  },
  handlers: [
    {
			// Open Spotify links in Spotify.app
      match: finicky.matchHostnames('open.spotify.com'),
      browser: 'Spotify'
    },
    {
      // Open zoom links directly in client
      match: /zoom.us\/j\//,
      browser: 'us.zoom.xos'
    },
    {
      // Open jitsi links directly in client
      match: ({ url }) => url.protocol === 'jitsi-meet',
      browser: 'org.jitsi.jitsi-meet'
    },
    {
      match: 'https://www.figma.com/file/*',
      browser: 'Figma'
    },
    {
      // Handle work URLs
      match: finicky.matchHostnames([...workUrls, ...videoCalling, ...devUrls, 'chrome.google.com']),
      browser: defaultBrowser
    },
    {
      // Handle personal URLs
      match: finicky.matchHostnames(personalUrls),
      browser: personalBrowser
    },
    {
      match: ({ sourceBundleIdentifier }) => sourceBundleIdentifier === 'Mattermost.Desktop',
      browser: defaultBrowser
    }
  ],
  rewrite: [
    {
      // Handle work jitsi links
      match: ({ url }) => url.host.includes('meet.' + WORK_DOMAIN),
      url: ({ url }) => 'jitsi-meet:/' + url.pathname}
    }
  ]
}
