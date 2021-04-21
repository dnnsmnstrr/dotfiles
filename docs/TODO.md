# On fresh install...

- Install Command Line Tools: `xcode-select --install`

- [Set up](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account) ssh keys with [GitHub](https://github.com/settings/ssh)

- clone this project and run the [dotbot](https://github.com/anishathalye/dotbot) [install](https://github.com/anishathalye/dotbot/blob/5294594f5aa9c3affd0d656ba6843c1c0b0bce60/tools/git-submodule/install) script

```bash
git clone https://github.com/dnnsmnstrr/dotfiles.git && cd dotfiles && ./install
```

- Install [Homebrew](https://brew.sh) and run [brew.sh](https://github.com/dnnsmnstrr/dotfiles/blob/master/brew/brew.sh)

```bash
/usr/bin/ruby -e "$(curl -fsSL https:/raw.githubusercontent.com/Homebrew/install/master/install)"
&& cd dotfiles && source ./brew/brew.sh
```

- Install [BetterTouchTool](https://folivora.ai) license and [presets](https://github.com/dnnsmnstrr/HydroTouch) ([AquaTouch](https://community.folivora.ai/t/aquatouch-updates-and-downloads/6746/20))

- Symlink Alfred preferences

```sh
ln -s ~/dotfiles/alfred /Users/dm/Library/Application\ Support/Alfred/Alfred.alfredpreferences
```

- Configure [karabiner-elements](https://karabiner-elements.pqrs.org/)

- [Create .path and .extra files in your root directory for path variables and confidential configs](../README.md#add-custom-commands-without-creating-a-new-fork)

- [Restore Backup from Atom Sync-Settings](https://atom.io/packages/sync-settings)

  - [create access token](https://github.com/settings/tokens/new)
  - Gist ID is `92968648b5ea54edbee216e87e52c15e`


- run `mackup` if you have used it to back up settings

- [set up ad-blocking](https://jspenguin2017.github.io/uBlockProtector/#extra-installation-steps-for-ublock-origin)

- Create local [zettelkasten](https://github.com/dnnsmnstrr/zettelkasten) instance

- [Add GPG keys to GitHub](https://github.com/settings/ssh) and [other](https://docs.gitlab.com/ee/gitlab-basics/create-your-ssh-keys.html) version control systems (also [GPG](https://gpgtools.org/))
  - https://github.com/pstadler/keybase-gpg-github

# init

The init script will:

- Install NVM

  ```bash
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
  ```

- Install [Oh My Zsh](https://ohmyz.sh/)

  ```bash
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  ```

  - custom plugins
    - [zsh-nvm](https://github.com/lukechilds/zsh-nvm#as-an-oh-my-zsh-custom-plugin)

- Install Mac-CLI

  ```bash
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/guarinogabriel/mac-cli/master/mac-cli/tools/install)"
  ```

# Adding Apps, Aliases or Functions

To maintain the list of your installed apps, add them to their corresponding place in [`brew.sh`](https://github.com/dnnsmnstrr/dotfiles/blob/master/brew/brew.sh). Aliases and functions can be added to their respective files.

# Updating

The [`.aliases`](https://github.com/dnnsmnstrr/dotfiles/blob/master/shell/aliases) include an `update` alias that will run all kinds of updaters. (even shorter: `ud`)
Alternative: [`mac update`](https://github.com/guarinogabriel/Mac-CLI#general-commands)

# Troubleshooting

- brew permissions broken

```
sudo chown -R $(whoami) $(brew --prefix)/*
```

- [SourceTree GPG signing](https://community.atlassian.com/t5/Sourcetree-questions/Why-is-quot-Enable-GPG-key-signing-for-commit-quot-is-greyed-out/qaq-p/249852)

```
// get current gpg version path
ls -la /usr/local/bin/gpg
// symlink gpg2
ln -s ../Cellar/gnupg/{version}/bin/gpg /usr/local/bin/gpg2
```

- GPG signing broken
`git config --global gpg.program $(which gpg)`

[<- Back](index.md)
