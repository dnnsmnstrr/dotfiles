// finicky config (https://github.com/johnste/finicky)
const defaultBrowser = 'Google Chrome'
const personalBrowser = {
  name: 'Google Chrome',
  profile: 'Default'
}
const workBrowser = {
  name: 'Google Chrome',
  profile: 'Profile 1' // ~/Library/Application Support/Google/Chrome folder names
}
const workUrls = ['hpm.agency', 'hpm.digital', 'hpm.guru', /.*\.hpm.land/, /.*\.hpm.agency$/]
const devUrls = ['github.com', 'gitlab.com', 'localhost']
const videoCalling = ['meet.jit.si']
const personalUrls = ['twitter.com', 'steam.com', 'steampowered.com', 'disneyplus.com']

const DEBUG = true
const hideIcon = true
module.exports = {
  defaultBrowser,
  options: { hideIcon },
  handlers: [
    {
      match: ({ keys }) => keys.option && keys.command,
      browser: defaultBrowser === 'Google Chrome' ? 'Safari' : defaultBrowser
    },
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
      // Handle work URLs
      match: finicky.matchHostnames([...workUrls, ...videoCalling, ...devUrls, 'chrome.google.com']),
      browser: workBrowser
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
      match: ({ url }) => url.host.endsWith('hpm.guru'),
      url: ({ url }) => {
        const deeplink = 'jitsi-meet:/' + url.pathname
        finicky.log(deeplink)
        return deeplink
      }
    }
  ]
}
