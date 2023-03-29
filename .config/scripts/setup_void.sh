#!/bin/bash
# Root directory here
linux_config=$(git rev-parse --show-toplevel)

# Setup packages
source install_void_packages.sh

# Setup directories
source setup_dirs.sh

# Make symlinks
rm -i ${HOME}/.bash_profile
ln -s ${linux_config}/bash_files/.bash_profile ${HOME}
rm -i ${HOME}/.bashrc
ln -s ${linux_config}/bash_files/.bashrc ${HOME}
rm -rfi ${HOME}/.config
ln -s ${linux_config}/.config ${HOME}  
rm -i ${HOME}/.gitconfig
ln -s ${linux_config}/.config/git/.gitconfig ${HOME}

# Setup programs
# river
source install_river.sh