export TERMINAL=kitty
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$HOME/.local/bin:$PATH"
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket

. "$HOME/.cargo/env"

