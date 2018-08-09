# ZSH Settings
export HISTFILE=~/.histfile
export HISTSIZE=2500
export SAVEHIST=2500
setopt appendhistory nomatch
unsetopt autocd beep extendedglob notify
bindkey -e
zstyle :compinstall filename '/Users/ben/.zshrc'
autoload -Uz compinit
compinit

# Appearance Settings
export PROMPT="%F{blue}%B%1~%f%b %B%F{green}%%%b%f "

# Editor Settings
export EDITOR=vim
export VISUAL=vim

# Ruby
eval "$(rbenv init -)"

# Python
alias python="python3"
alias pip="pip3"

# Node.js
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/zsh_completion" ] && \. "$NVM_DIR/zsh_completion"  # This loads nvm zsh_completion

# Go
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH="$HOME/go"
export PATH="$PATH:${GOPATH//://bin:}/bin"

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Sublime Text CLI
alias subl="\"/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl\""

# Google Cloud Platform
if [ -f '/Users/ben/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/ben/google-cloud-sdk/path.zsh.inc'; fi # The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ben/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/ben/google-cloud-sdk/completion.zsh.inc'; fi # The next line enables shell command completion for gcloud.

# Add GPG key to bash (just in case)
export GPG_TTY=$(tty)

# Alias ls -al
alias ll="ls -al"

# Alias docker-compose
alias dco="docker-compose"

# docker-machine login
function docker-login {
  CMD="docker-machine env $1"
  eval "$($CMD)"
}

# Flush DNS
alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"

# Flutter
export PATH="$PATH:/Users/ben/flutter/bin/"

# Xcode tool
function xcode {
  XCODE_APP="/Applications/Xcode.app"

  if [[ $# -eq 0 ]]; then
    if [[ -e *.xcworkspace ]]; then
      open -a $XCODE_APP *.xcworkspace
    elif [[ -e *.xcodeproj ]]; then
      open -a $XCODE_APP *.xcodeproj
    else
      echo 'No xcode project found'
    fi
  else
    open -a $XCODE_APP $1
  fi
}

# mkdir && cd shortcut
function mkcd {
  mkdir -p "$1"
  cd "$1"
}

# quick add OSS license
function license {
  LICENSE_GIST_URL="https://gist.githubusercontent.com/codeblooded/b3e90b93111a4b5426be03837b1fa802/raw/20e49b1ea996291d9c71c52be26a56f9cc55c204"
  LICENSE_NAME=$(echo "$1" | awk '{print toupper($0)}')
  curl -L "$LICENSE_GIST_URL/${LICENSE_NAME}_LICENSE" > LICENSE
  echo -e '\n' >> LICENSE
}

