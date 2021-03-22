# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

plugins=(git npm tmux symfony2)

# Theme
ZSH_THEME="oxide"

source $ZSH/oh-my-zsh.sh
source $HOME/.fzf.zsh

# Git
alias giting="git fetch && git pull"
alias gaa="git add ."
alias gc="git commit"
alias gp="git push"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias dev="cd $HOME/projects/"

# Ubuntu
alias apdejt="sudo apt update && sudo apt upgrade"
alias apti="sudo apt install"
alias dpkgi="sudo dpkg -i"
alias aptclean="sudo apt autoclean && sudo apt autoremove"

# (Neo)Vim
alias v="nvim"
alias vim="nvim"
alias vedit="nvim ~/.config/nvim/init.vim"

# Tmux
alias tns="tmux new -s"

# Yarn
alias yarnd="yarn add"
alias yarndv="yarn add --dev"
alias yarng="yarn global add"

# Docker
alias dockup="docker-compose up -d"
alias dockkill="docker-compose kill"

alias restartpulse="pulseaudio --kill && pulseaudio"
alias rmnode="find . -name "node_modules" -exec rm -rf '{}' + "
alias socketeer_staging="ssh -i \"/data/mrki-machina.pem\" ubuntu@ec2-18-198-111-186.eu-central-1.compute.amazonaws.com"
alias socketeer_production="ssh -i \"/data/mrki-machina.pem\" ubuntu@ec2-18-198-68-249.eu-central-1.compute.amazonaws.com"

#NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Android
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Flutter

export FLUTTER_HOME=$HOME/flutter
export PATH=$PATH:$FLUTTER_HOME/bin

# Deno
export DENO_INSTALL="/home/rejd/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# Dotnet
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# Rust
export PATH=$PATH:$HOME/.cargo/bin

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/rejd/projects/tellimer/monorepo/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/rejd/projects/tellimer/monorepo/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/rejd/projects/tellimer/monorepo/node_modules/tabtab/.completions/sls.zsh ]] && . /home/rejd/projects/tellimer/monorepo/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /home/rejd/projects/tellimer/monorepo/node_modules/tabtab/.completions/slss.zsh ]] && . /home/rejd/projects/tellimer/monorepo/node_modules/tabtab/.completions/slss.zsh
