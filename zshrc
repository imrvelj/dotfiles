# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"
DEFAULT_USER=`whoami`


plugins=(git npm tmux symfony2)

export PATH="$HOME/.composer/vendor/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

source $ZSH/oh-my-zsh.sh

# GIT #
alias giting="git fetch && git pull"
alias gaa="git add ."
alias gc="git commit"
alias gp="git push"
alias dev="cd $HOME/dev/projects/"

#Ubuntu
alias apdejt="sudo apt update && sudo apt upgrade"
alias apti="sudo apt install"

#VIM
alias vimer="vim ."

#NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
