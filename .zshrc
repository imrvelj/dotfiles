export ZSH=/home/perpaer/.oh-my-zsh

# VI MODE
set -o vi
# THEME
ZSH_THEME="robbyrussell"

# PLUGINS
plugins=(git)

# User configuration

  export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

source $ZSH/oh-my-zsh.sh


# EDITOR
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='atom'
 else
   export EDITOR='atom'
 fi

#NVM
export NVM_DIR="/home/perpaer/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bindings/zsh/powerline.zsh
fi
