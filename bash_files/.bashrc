#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Custom alias
alias sstat='systemctl status'
alias ssys='systemctl'

alias mp='ncmpcpp'

alias f='nvim $(fzf)'
alias fh='nvim $(find . | fzf)'

alias c='clear'

# For firefox
export MOZ_ENABLE_WAYLAND=1
export MOZ_DBUS_REMOTE=1

export EDITOR='nvim'
export TERM='linux'

export PATH=/home/alan/.cargo/bin:$PATH
