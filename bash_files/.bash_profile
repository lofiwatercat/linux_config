
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH=$PATH:~/.local/bin
. "$HOME/.cargo/env"

# For firefox
export MOZ_ENABLE_WAYLAND=1

export EDITOR='hx'
export TERM='linux'
