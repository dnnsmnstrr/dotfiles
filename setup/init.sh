#!/usr/bin/env bash

if [ "$1" '==' "-h" ] ; then
	echo "Usage: init"
	echo "Default: init"
	echo "Options: "
  echo "-h  Show this message"
  echo "-d  Set defaults using duti"
	echo "-g  Install Gemfile"
	echo "-n  Install node apps & nvm"
	echo "-p  Install python requirements"
	echo "-z  Install Oh-My-Zsh"
	return
elif [ "$#" -gt 1 ]; then
	echo "Too many parameters. Run one config at a time. "
	return
fi

function brew() {
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

function defaults {
  info 'Setting default apps.' # requires duti to be installed

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
  echo "Installing oh-my-zsh" # https://ohmyz.sh/
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}

function mac-cli() {
  echo "Installing mac-cli"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/guarinogabriel/mac-cli/master/mac-cli/tools/install)"
}

case $1 in
  "-b" | "--brew" )
    brew
    ;;
  "-d" | "--defaults" )
    defaults
    ;;
  "-g" | "--gitlab" )
    gitlab
    ;;
  "-n" | "--node" )
    nvm
    npm
    ;;
  "-o" | "--other" )
    omz
    mac-cli
    ;;
  "-p" | "--python" )
    pip
    ;;
  * )
  echo "Initializing setup"
  brew
  omz
	echo "For specific categories, run again with appropriate flags (-h for more info)"
    ;;
esac
