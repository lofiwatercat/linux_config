
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH=$PATH:~/.local/bin
. "$HOME/.cargo/env"

# For firefox
export MOZ_ENABLE_WAYLAND=1

# For Wine
export WINEPREFIX="$HOME/.wine"

# For Lutris to detect AMD card
#export DRI_PRIME=1
#export MESA_LOADER_DRIVER_OVERRIDE=radeonsi

export EDITOR='hx'
export TERM='linux'
export XDG_CURRENT_DESKTOP=river
