#!/bin/bash
if [[ ! -d ${HOME}/languages ]]; then
  mkdir ${HOME}/languages
fi
if [[ ! -d ${HOME}/.local/bin ]]; then
  mkdir -p ${HOME}/.local/bin
fi
cd ${HOME}/languages
curl -O https://ziglang.org/download/0.10.1/zig-linux-x86_64-0.10.1.tar.xz
tar -xvf zig-linux-x86_64-0.10.1.tar.xz && rm zig-linux-x86_64-0.10.1.tar.xz
cd zig-linux-x86_64-0.10.1 && ln -s ${PWD}/zig ${HOME}/.local/bin
if [[ ! -d ${HOME}/programs ]]; then
  mkdir ${HOME}/programs
fi
cd ${HOME}/programs
rm -rf river
git clone https://github.com/riverwm/river 
cd river && git submodule update --init
sudo xbps-install -S wayland-devel wayland-protocols libevdev-devel wlroots-devel scdoc pkg-config xorg-server-xwayland
pwd
zig build -Drelease-safe -Dxwayland --prefix ~/.local install

