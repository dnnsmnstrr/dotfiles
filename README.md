# Dennis’s dotfiles [![Build Status](https://travis-ci.com/dnnsmnstrr/dotfiles.svg?branch=master)](https://travis-ci.com/dnnsmnstrr/dotfiles) ![GitHub language count](https://img.shields.io/github/languages/count/dnnsmnstrr/dotfiles) [![Twitter Follow](https://img.shields.io/twitter/follow/dnnsmnstrr?style=social)](https://twitter.com/dnnsmnstrr)

> These are my dotfiles. There are many like them, but these are mine.

Since [dotfiles](https://dotfiles.github.io) are very personal, I would not recommend just installing mine. Take a look and get inspiration, but there are better places to start off from. (such as the repo this one is forked from)
I do recommend checking out my [preset](https://github.com/dnnsmnstrr/HydroTouch) for [BetterTouchTool](https://folivora.ai)! It is an extension to [AquaTouch](https://community.folivora.ai/c/setup-preset-sharing/aquatouch) by [@yuuiko](https://github.com/yuuiko), which I also highly recommend.
My BTT setup basically makes my computer unusable for anyone other than myself, which can certainly cause situations like this:

![If used with software that could keep up, a scroll wheel mapped to send a stream of 'undo' and 'redo' events could be kind of cool.](https://imgs.xkcd.com/comics/borrow_your_laptop.png)
xkcd ([#1806](https://xkcd.com/1806/))

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

**Table of Contents** _generated with [DocToc](https://github.com/thlorenz/doctoc)_

- [Installation](#installation)
  - [Using Git and the bootstrap script](#using-git-and-the-bootstrap-script)
  - [Git-free install](#git-free-install)
  - [Specify the `$PATH`](#specify-the-path)
  - [Add custom commands without creating a new fork](#add-custom-commands-without-creating-a-new-fork)
  - [Sensible macOS defaults](#sensible-macos-defaults)
  - [Install Homebrew formulae](#install-homebrew-formulae)
- [Inspiration:](#inspiration)
- [Feedback](#feedback)
- [Original Author](#original-author)
- [Thanks to…](#thanks-to)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Installation

**Warning:** If you want to give these dotfiles a try, you should first fork this repository :heavy_check_mark: , review the code, and remove things you don’t want or need. Don’t blindly use my settings unless you know what that entails. Use at your own risk!

### Using Git and the bootstrap script

You can clone the repository wherever you want. (I like to keep it in `~/.dotfiles`) The bootstrapper script will pull in the latest version and copy the files to your home folder.

```sh
git clone https://github.com/dnnsmnstrr/dotfiles.git && cd .dotfiles && ./install
```

### Oh My Zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Specify the `$PATH`

If `~/.path` exists, it will be sourced along with the other files, before any feature testing (such as [detecting which version of `ls` is being used](https://github.com/mathiasbynens/dotfiles/blob/aff769fd75225d8f2e481185a71d5e05b76002dc/.aliases#L21-26)) takes place.

Here’s an example `~/.path` file that adds `/usr/local/bin` to the `$PATH`:

```bash
export PATH="/usr/local/bin:$PATH"
```

### Add custom commands without creating a new fork

If `~/.extra` exists, it will be sourced along with the other files. You can use this to add a few custom commands without the need to fork this entire repository, or to add commands you don’t want to commit to a public repository.

My `~/.extra` looks something like this:

```bash
# Git credentials
# Not in the repository, to prevent people from accidentally committing under my name
GIT_AUTHOR_NAME="Dennis Muensterer"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="dennismuensterer@gmail.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

You could also use `~/.extra` to override settings, functions and aliases from my dotfiles repository. It’s probably better to [fork the repository](https://github.com/dnnsmnstrr/dotfiles/fork) instead, though.

### Sensible macOS defaults

When setting up a new Mac, you may want to set some sensible macOS defaults:

```bash
./.macos
```

Definitely go through and check each setting before running, this can change some major things!

### Install Homebrew formulae

When setting up a new Mac, you may want to install some common [Homebrew](https://brew.sh/) formulae (after installing Homebrew, of course):

```bash
./.dotfiles/brew/brew.sh
```

(aliases)

Some of the functionality of these dotfiles depends on formulae installed by `brew.sh`. If you don’t plan to run `brew.sh`, you should look carefully through the script and manually install any particularly important ones. A good example is Bash/Git completion: the dotfiles use a special version from Homebrew.

## Inspiration:

Where I ~~stole ideas~~ got inspiration from.

- [Matthias](https://mathiasbynens.be/), obviously
- https://github.com/pengwynn/dotfiles
- https://github.com/paulirish/dotfiles
- https://github.com/thoughtbot/dotfiles
- https://github.com/nicksp/dotfiles
- https://github.com/denysdovhan/dotfiles
- https://github.com/webpro/dotfiles - cool dotfiles command
- https://github.com/alrra/dotfiles - shellcheck

## Feedback

Suggestions/improvements
[welcome](https://github.com/dnnsmnstrr/dotfiles/issues)!

---

## Original Author

| [![twitter/mathias](http://gravatar.com/avatar/24e08a9ea84deb17ae121074d0f17125?s=70)](http://twitter.com/mathias "Follow @mathias on Twitter") |
| ----------------------------------------------------------------------------------------------------------------------------------------------- |
| [Mathias Bynens](https://mathiasbynens.be/)                                                                                                     |

## Thanks to…

- @ptb and [his _macOS Setup_ repository](https://github.com/ptb/mac-setup)
- [Ben Alman](http://benalman.com/) and his [dotfiles repository](https://github.com/cowboy/dotfiles)
- [Cătălin Mariș](https://github.com/alrra) and his [dotfiles repository](https://github.com/alrra/dotfiles)
- [Gianni Chiappetta](https://butt.zone/) for sharing his [amazing collection of dotfiles](https://github.com/gf3/dotfiles)
- [Jan Moesen](http://jan.moesen.nu/) and his [ancient `.bash_profile`](https://gist.github.com/1156154) + [shiny _tilde_ repository](https://github.com/janmoesen/tilde)
- [Lauri ‘Lri’ Ranta](http://lri.me/) for sharing [loads of hidden preferences](http://osxnotes.net/defaults.html)
- [Matijs Brinkhuis](https://matijs.brinkhu.is/) and his [dotfiles repository](https://github.com/matijs/dotfiles)
- [Nicolas Gallagher](http://nicolasgallagher.com/) and his [dotfiles repository](https://github.com/necolas/dotfiles)
- [Sindre Sorhus](https://sindresorhus.com/)
- [Tom Ryder](https://sanctum.geek.nz/) and his [dotfiles repository](https://sanctum.geek.nz/cgit/dotfiles.git/about)
- [Kevin Suttle](http://kevinsuttle.com/) and his [dotfiles repository](https://github.com/kevinSuttle/dotfiles) and [macOS-Defaults project](https://github.com/kevinSuttle/macOS-Defaults), which aims to provide better documentation for [`~/.macos`](https://mths.be/macos)
- [Haralan Dobrev](https://hkdobrev.com/)
- Anyone who [contributed a patch](https://github.com/mathiasbynens/dotfiles/contributors) or [made a helpful suggestion](https://github.com/mathiasbynens/dotfiles/issues)
