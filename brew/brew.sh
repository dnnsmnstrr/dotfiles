#!/usr/bin/env bash

# Apps to install
# Categorized into brew, casks, developer, personal and mac app store apps

if [ "$1" '==' "-h" ] ; then
	echo "Usage: brewfile"
	echo "Options: "
	echo "-h  Show this message"
	echo "-a  Install all the options"
	echo "-b  Create a bundle dump"
	echo "-c  Cleanup"
	echo "-d  Install developer options"
	echo "-f  Install fonts"
	echo "-m  Install Mac App Store apps"
	echo "-n  Install network tools"
	echo "-p  Install personal apps (entertainment, music, gaming)"
	echo "-r  Reinstall all current brew installations"
	return
elif [ "$#" -gt 2 ]; then
	echo "Too many parameters"
	return
fi

# Essential apps
declare -a cask=(
	spotify # can't live without music
	google-chrome
	raycast
	alfred
	bettertouchtool
	finicky # browser defaults
	aerial # screensaver
	monitorcontrol
)

# Apps for development (-d)
declare -a dev=(
  # communication
	mattermost
	jitsi-meet
  # IDE
	arduino
	visual-studio-code
  # VCS
	github
	sourcetree
  # CLI
	hyper
  # DB
	mysqlworkbench
	sequel-pro
  # tools
	docker
	android-platform-tools
	temurin # java
	#isimulator
	java
	keybase
	react-native-debugger
  gpg-suite-no-mail
  # network
	postman
	vnc-viewer
  mullvadvpn
  # web
	firefox
	bitwarden
  # design
	#kap
	#noun-project
	sf-symbols
  # productivity
	drawio
  # resources
	#wwdc
)

# Apps that don't have much professional use (mostly entertainment) (-p)
declare -a personal=(
  # audio
	blackhole
	boom-3d
	lyricsx
	sonic-pi
	shpotify
  # communication
	caprine
	flume
	telegram
	whatsapp
  # notes
  obsidian
  # gaming
	steam
  # making
	ultimaker-cura
  balenaetcher
	#autodesk-fusion360
  # media
	calibre
	downie
	emojipedia
	iina
	obs
  # screensavers & wallpapers
	brooklyn
	musaicfm
  # utilities
	duet
	hazeover
	keyboardcleantool
	philips-hue-sync
	touch-bar-simulator
  # storage
 	dropbox
	grandperspective
  # fun
	asciiquarium
	cowsay
	fortune
	lolcat # try the cowcat alias
	rtv
	anybar
)

declare -a brew=(
	coreutils         # GNU core utilities (those that come with macOS are outdated).
	moreutils         # Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
	findutils         # GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
	gnu-sed           # GNU `sed`, overwriting the built-in `sed`.
  # languages & frameworks
	go
	node
	php
	python3
	pyenv
	pipenv
	ruby
	rust
	rbenv
  # downloaders & installers
	wget
	mas
	mint
	nvm
  # editors & shells
	bash
	fish
	starship
	zsh
  # version control
	git
	hub
	glab # gitlab-cli
	git-gui
	git-lfs
	git-standup
	gh
	gibo
	svn
  #dev
	applesimutils
	arduino-cli
	bit
	cocoapods
	fastlane
	#mysql
	#redis
	shellcheck
	watchman
	yarn
  # GnuPG to enable PGP-signing commits.
	gnupg
	pinentry-mac
  # completion
	brew-cask-completion
	pip-completion
	open-completion
	yarn-completion
	zsh-completions
	zsh-autosuggestions
	zsh-syntax-highlighting
  # other
	ack
	gmp
	grep
	jq
	rlwrap
	screen
	ssh-copy-id
	tree
	thefuck
	vbindiff
	watch
  # media
	imagemagick
	multimarkdown
  	glow # markdown renderer
  # web
	youtube-dl
  # system
  	bitwarden-cli
	blueutil
	dark-mode
	displayplacer
	dockutil
	duti
	htop
	mackup
	switchaudio-osx
	scrcpy
  # files
	p7zip
	rename
	xpdf
  # tools
	asciinema
	calc
	figlet
	m-cli
	tldr
	wifi-password
	z
)

# (Optional) Network utils (-n)
declare -a network=(
	aircrack-ng
	ask-cli
	awscli
	bfg
	binutils
	binwalk
	cifer
	dex2jar
	dns2tcp
	fcrackzip
	foremost
	geoip
	hashpump
	httpie
	hydra
	john
	knock
	netpbm
	nmap
	openssh
	pngcheck
	socat
	speedtest_cli
	sqlmap
	tcpflow
	tcpreplay
	tcptrace
	telnet
	ucspi-tcp # `tcpserver` etc.
	xz
)

# Optional: Mac App Store (-m)
declare -a mas=(
	#824171161   # Affinity Designer
	#424389933   # Final Cut
	#634148309   # Logic
	#634159523   # MainStage
	#409183694   # Keynote
	409203825   # Numbers
 	#409201541   # Pages
	#823766827   # OneDrive
	445189367   # PopClip
	# 766939888   # 1Keyboard
	425424353   # The Unarchiver
	#1284863847  # Unsplash
	497799835   # Xcode
  413897608   # Pastel
  1554235898  # Peek (Quicklook)
  1453273600  # Data Jar
  1211437633  # Universe
)

declare -a fonts=(
	source-code-pro
	fontawesome
	input
	roboto
)

# Scripting starts here

echo "Let's brew 🍻"

# Check for homebrew
if test ! "$(brew -v)"; then
	echo "Installing homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

function tryInstall() {
  brew info "${item}" | grep --quiet 'Not installed' && brew install "${item}"
}
function brewInstall() {
	# Taps
	brew tap homebrew/cask-drivers
	brew tap homebrew/cask-fonts
	brew tap buo/cask-upgrade # 'brew cu [CASK]' to update specific casks
	brew tap lukakerr/things
	brew tap wix/brew
	brew tap jakehilborn/jakehilborn

	echo "Checking for updates"
	brew update         # Make sure we’re using the latest Homebrew.
	brew upgrade        # Upgrade any already-installed formulae.
	brew outdated       # Check for outdated casks
	brew cu 			      # Cask-Upgrade

	echo "Installing brew utilities..."
	for item in "${brew[@]}"; do
		brew info "${item}" | grep --quiet 'Not installed' && brew install "${item}"
	done
}

function networkInstall() {
	echo "Installing network utilities..."
	for item in "${network[@]}"; do
		brew info "${item}" | grep --quiet 'Not installed' && brew install "${item}"
	done
}

function caskInstall() {
	echo "Installing casks..."
	for app in "${cask[@]}"; do
		brew info "${app}" | grep --quiet 'Not installed' && brew install --cask "${app}"
	done
}

function devInstall() {
	echo "Installing developer casks..."
	for app in "${dev[@]}"; do
		brew info "${app}" | grep --quiet 'Not installed' && brew install --cask "${app}"
	done
}

function personalInstall() {
	echo "Installing personal casks..."
	for app in "${personal[@]}"; do
		brew info "${app}" | grep --quiet 'Not installed' && brew install --cask "${app}"
	done
}

function masInstall() {
	echo "Installing Mac App Store apps..."
	for app in "${mas[@]}"; do
		mas install "${app}"
	done
}

function fontInstall() {
  echo "Installing fonts..."
	for font in "${fonts[@]}"; do
    local fontName="font-${font}";
		brew install "${fontName}"
	done
}

function reinstall() {
  echo "Reinstalling..."
  if [ "$2" ] ; then
    brew uninstall --ignore-dependencies $2
    brew install $2 --force
  else
  	for l in $(brew list) ; do
  		echo "Remove $l"
  		brew uninstall --ignore-dependencies $l
  		echo "Re-add $l"
  		brew install $l
  	done
  fi
}

case $1 in
  "-a" | "--all" )
    echo 'All options'
    brewInstall
    caskInstall
    devInstall
    networkInstall
    personalInstall
    masInstall
    fontInstall
    ;;
  "-d" | "--dev" )
    echo 'Dev install'
    brewInstall
    caskInstall
    devInstall
    networkInstall
    fontInstall
    ;;
  "-f" | "--font" )
    fontInstall
    ;;
  "-p" | "--personal" )
    personalInstall
    ;;
  "-m" | "--mas" )
    masInstall
    ;;
  "-r" | "--reinstall" )
	reinstall "$@"
	;;
  * )
    echo "Default brew installation"
  	brewInstall
  	caskInstall
  	devInstall
    ;;
esac

brew cleanup # Remove outdated versions from the cellar.

if [[ "$1" == "-b" ]] || [[ "$1" == "--bundle" ]]; then
  echo "Taking a dump 💩"
  brew bundle dump --force
elif [[ "$1" == "--doc" ]] || [[ "$1" == "--doctor" ]]; then
  brew doctor
else
  echo "Brewing complete ✅"
fi;
