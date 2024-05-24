# On fresh install...

> These are the steps I follow when setting up a new machine...

- Install Command Line Tools: `xcode-select --install`

- clone this project and run the [dotbot](https://github.com/anishathalye/dotbot) [install](https://github.com/anishathalye/dotbot/blob/5294594f5aa9c3affd0d656ba6843c1c0b0bce60/tools/git-submodule/install) script

```bash
git clone https://github.com/dnnsmnstrr/dotfiles.git && cd dotfiles && ./install
```

- Install [Homebrew](https://brew.sh) and run [brew.sh](https://github.com/dnnsmnstrr/dotfiles/blob/master/brew/brew.sh)

```bash
/usr/bin/ruby -e "$(curl -fsSL https:/raw.githubusercontent.com/Homebrew/install/master/install)"
&& cd dotfiles && source ./brew/brew.sh
```

Now we should have everything installed and can start customizing our OS:

- Log into Bitwarden to have Passwords quickly available
- Launch Chrome and Sign-In to synchronize bookmarks and extensions ([ad-blocking](https://jspenguin2017.github.io/uBlockProtector/#extra-installation-steps-for-ublock-origin))
- Configure [Raycast](https://www.raycast.com/) with <kbd>Ctrl</kbd>+<kbd>Space</kbd> shortcut and install necessary extensions
  - macOS uses this for the `Select previous input source` shortcut by default, this can be disabled under _Keyboard_ > _Keyboard Shortcuts_ > _Input Sources_
- Install [BetterTouchTool](https://folivora.ai) license and [presets](https://github.com/dnnsmnstrr/HydroTouch) 
- Clear Dock Items and make it show up faster
  ```sh
    defaults write "com.apple.dock" "persistent-apps" -array;
    defaults write com.apple.dock autohide -bool true
    defaults write com.apple.dock autohide-delay -float 0
    defaults write com.apple.dock autohide-time-modifier -float 0.2
    defaults write com.apple.dock show-process-indicators -bool false # Hide the indicator light on open applications
    killall Dock
  ```
- [Set up](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account) ssh keys with [GitHub](https://github.com/settings/ssh)

- [Add GPG keys to GitHub](https://github.com/settings/ssh) and [other](https://docs.gitlab.com/ee/gitlab-basics/create-your-ssh-keys.html) version control systems
  - https://github.com/pstadler/keybase-gpg-github

- Initialize local [zettelkasten](https://github.com/dnnsmnstrr/zettelkasten) instance
- Optional: [Create .path and .extra files in your root directory for path variables and confidential configs](../README.md#add-custom-commands-without-creating-a-new-fork)

## init

The init script will:

- Install [Oh My Zsh](https://ohmyz.sh/)

  ```bash
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  ```

- (Optionally) Install [Mac-CLI](https://github.com/guarinogabriel/Mac-CLI)

  ```bash
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/guarinogabriel/mac-cli/master/mac-cli/tools/install)"
  ```

## Adding Apps, Aliases or Functions

To maintain the list installed apps, add them to their corresponding place in [`brew.sh`](https://github.com/dnnsmnstrr/dotfiles/blob/master/brew/brew.sh). Aliases and functions can be added to their respective files.

## Updating

The [`.aliases`](https://github.com/dnnsmnstrr/dotfiles/blob/master/shell/aliases) include an `update` alias that will run all kinds of updaters. (even shorter: `ud`)
Alternative: [`mac update`](https://github.com/guarinogabriel/Mac-CLI#general-commands)

## Troubleshooting

- brew permissions tied to different user
  - `sudo chown -R $(whoami) $(brew --prefix)/*`

- GPG signing broken
  - `git config --global gpg.program $(which gpg)`
  - VSCode setup: https://github.com/microsoft/vscode/wiki/Commit-Signing#install-

- zsh compinit: insecure directories -> `compaudit` outputs /opt/homebrew/share as insecure
  - `chmod -R go-w "$(brew --prefix)/share"`


[<- Back](index.md)
