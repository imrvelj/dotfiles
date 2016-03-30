# Path to your oh-my-zsh installation.
export ZSH=/home/rejd/.oh-my-zsh

ZSH_THEME="robbyrussell"
DEFAULT_USER=`whoami`


plugins=(git)

export PATH="$HOME/.composer/vendor/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

source $ZSH/oh-my-zsh.sh

# export SSH_KEY_PATH="~/.ssh/dsa_id"

# GIT #
alias giting="git fetch && git pull"
alias gaa="git add ."
alias gc="git commit"
alias gp="git push"
alias dev="cd /storage/dev/projects/"

#Ubuntu
alias apdejt="sudo apt update && sudo apt upgrade"
alias apti="sudo apt install"

#VIM
alias vim="nvim"
alias vimer="nvim ."

#NVM
export NVM_DIR="/home/rejd/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

#RVM
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
