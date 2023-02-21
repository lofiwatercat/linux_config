alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"

alias l='exa -l'
alias la='exa -la'

alias cpwd='pwd | wl-copy'
alias cdwd='cd $(wl-paste)'

