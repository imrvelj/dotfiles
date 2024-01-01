# Aliases
alias v nvim
alias g git
alias gaa 'git add .'
alias giting 'git fetch && git pull'
alias glog 'git log --graph --pretty=format:\'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset\' --abbrev-commit --date=relative'
alias tns 'tmux new -s'
alias dev 'cd ~/projects'

if status is-interactive
    # Commands to run in interactive sessions can go here
end
