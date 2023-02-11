alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"

alias e='exa -l'
alias ea='exa -la'

alias cpwd='pwd | wl-copy'
alias cdp="cd $(wl-paste)"

