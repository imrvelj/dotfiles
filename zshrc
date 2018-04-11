# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="lambda"
DEFAULT_USER=`whoami`

plugins=(git npm tmux symfony2)

export PATH="$HOME/.composer/vendor/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

source $ZSH/oh-my-zsh.sh
source $HOME/.fzf.zsh

# Git
alias giting="git fetch && git pull"
alias gaa="git add ."
alias gc="git commit"
alias gp="git push"
alias dev="cd $HOME/projects/"

# Ubuntu
alias apdejt="sudo apt update && sudo apt upgrade"
alias apti="sudo apt install"

# Neovim
alias v="nvim"
alias vim="nvim"

alias sdpkgi="sudo dpkg -i"
alias tns="tmux new -s"
alias yarnd="yarn add"
alias yarndv="yarn add --dev"
alias yarng="yarn global add"

#NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


source "/home/rejd/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Android
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

