# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
plugins=(git npm tmux symfony2)

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
alias dpkgi="sudo dpkg -i"

# (Neo)Vim
alias v="nvim"
alias vim="nvim"

# Tmux
alias tns="tmux new -s"

# Yarn
alias yarnd="yarn add"
alias yarndv="yarn add --dev"
alias yarng="yarn global add"

# Docker
alias dockup="docker-compose up -d"
alias dockkill="docker-compose kill"

#NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Android
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
