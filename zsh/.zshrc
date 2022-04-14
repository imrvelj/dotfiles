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

# Arch
alias paci="sudo pacman -S"

alias apdejt="sudo pacman -Syu"
alias dnfi="sudo dnf install"
alias dpkgi="sudo dpkg -i"
alias pacclean="sudo pacman -Rns $(pacman -Qtdq)"

# (Neo)Vim
alias v="nvim"
alias vim="nvim"
alias vedit="nvim ~/dotfiles/nvim/.config/nvim/init.vim"

alias i3edit="nvim ~/dotfiles/i3/.i3/config"

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

alias mineeth="ethminer -G -P stratum1+tcp://0x8610b4cf70A56Ef7da076B7A349f9aAfe5F97Eb2.perpaer@eu1.ethermine.org:4444 --report-hashrate"

export PATH=$PATH:$HOME/.volta/bin

export PATH=$PATH:$HOME/.local/bin
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

# Vulkan loader
export AMD_VULKAN_ICD=RADV

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/rejd/projects/tellimer/monorepo/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/rejd/projects/tellimer/monorepo/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/rejd/projects/tellimer/monorepo/node_modules/tabtab/.completions/sls.zsh ]] && . /home/rejd/projects/tellimer/monorepo/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /home/rejd/projects/tellimer/monorepo/node_modules/tabtab/.completions/slss.zsh ]] && . /home/rejd/projects/tellimer/monorepo/node_modules/tabtab/.completions/slss.zsh
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
