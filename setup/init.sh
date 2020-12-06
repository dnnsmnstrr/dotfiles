#!/usr/bin/env bash

if [ "$1" '==' "-h" ] ; then
	echo "Usage: init"
	echo "Default: init"
	echo "Options: "
  echo "-h  Show this message"
  echo "-a  Set up atom settings sync"
  echo "-d  Set defaults using duti"
	echo "-g  Install Gemfile"
	echo "-n  Install node apps & nvm"
	echo "-p  Install python requirements"
	return
elif [ "$#" -gt 1 ]; then
	echo "Too many parameters. Run one config at a time. "
	return
fi

function atom() {
  apm install sync-settings
  # Gist-ID: 92968648b5ea54edbee216e87e52c15e
}

function brew() {
  ~/.dotfiles/brew/brew.sh
}

function defaults {
  info 'Setting default apps.'

  # General extensions
  # for ext in {aac,avi,f4v,flac,m4a,m4b,mkv,mov,mp3,mp4,mpeg,mpg,part,wav,webm}; do duti -s io.mpv "${ext}" all; done # Media
  # for ext in {7z,bz2,gz,rar,tar,tgz,zip}; do duti -s com.aone.keka "${ext}" all; done # Archives
  # for ext in {cbr,cbz}; do duti -s com.richie.YACReader "${ext}" all; done # Image archives
  for ext in {md,txt}; do duti -s com.github.atom "${ext}" all; done # Text
  for ext in {css,js,jsx,jxa,json,md,php,py,rb,sh}; do duti -s com.github.atom "${ext}" all; done # Code

  # Affinity apps (use beta versions when possible)
  # Whenever a stable is more recent than the beta, the beta cannot be used, so we need to detect which is latest and always use that
local afd_id='com.seriflabs.affinitydesigner'
  # local afp_id='com.seriflabs.affinityphoto'

  local afd_location="$(mdfind kMDItemCFBundleIdentifier = "${afd_id}")"
  # local afp_location="$(mdfind kMDItemCFBundleIdentifier = "${afp_id}")"

  local afd_version="$(mdls -raw -name kMDItemVersion "${afd_location}")"
  # local afp_version="$(mdls -raw -name kMDItemVersion "${afp_location}")"

  [[ "${afd_version}" == "${afdbeta_version}" ]] && local afd_latest="${afd_id}" || local afd_latest="${afdbeta_id}"
  # [[ "${afp_version}" == "${afpbeta_version}" ]] && local afp_latest="${afp_id}" || local afp_latest="${afpbeta_id}"

  for ext in {afdesign,eps}; do duti -s "${afd_latest}" "${ext}" all; done
  # for ext in {afphoto,psd}; do duti -s "${afp_latest}" "${ext}" all; done
}

function gem() {
  echo "Installing gems"
  bundle install --gemfile=~/dotfiles/gem/Gemfile
}

function gitlab() {
  echo "Installing gitlab-cli"
  curl -s https://raw.githubusercontent.com/zaquestion/lab/master/install.sh | sudo bash
}

function pip() {
  cat ~/.dotfiles/setup/requirements.txt | xargs -n 1 pip install
}

function npm() {
  echo "Installing npm apps"
  cat ~/.dotfiles/node/npmfile | xargs -n 1 npm install -g
}

function nvm() {
  echo "Installing nvm"
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
}

function omz() {
  echo "Installing oh-my-zsh"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}

function omf() {
  echo "Installing oh-my-fish"
  curl -L https://get.oh-my.fish | fish
  omf install brew fish-spec hub osx weather cd fonts node spark xcode config gh omf tab z
}

function mac-cli() {
  echo "Installing mac-cli"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/guarinogabriel/mac-cli/master/mac-cli/tools/install)"
}

function locationchanger() {
  echo "Install location changer" # https://github.com/kyletmiller/locationchanger
  curl -L https://github.com/dnnsmnstrr/locationchanger/raw/master/locationchanger.sh | bash
}

case $1 in
  "-a" | "--atom" )
    atom
    ;;
  "-b" | "--brew" )
    brew
    ;;
  "-d" | "--defaults" )
    defaults
    ;;
  "-f" | "--fish" )
    omf
    ;;
  "-g" | "--gitlab" )
    gitlab
    ;;
  "-l" | "--location" )
    locationchanger
    ;;
  "-n" | "--node" )
    npm
    nvm
    ;;
  "-o" | "--other" )
    omz
    omf
    mac-cli
    ;;
  "-p" | "--python" )
    pip
    ;;
  * )
  echo "Initializing setup"
	brew
  atom
  defaults
	echo "For specific categories, run again with appropriate flags (-h for more info)"
    ;;
esac

return
