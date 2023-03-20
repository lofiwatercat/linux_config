mkdir ${HOME}/languages
mkdir -p ${HOME}/.local/bin
cd ${HOME}/languages
curl -O https://ziglang.org/download/0.10.1/zig-linux-x86_64-0.10.1.tar.xz
tar -xvf zig-linux-x86_64-0.10.1.tar.xz && rm zig-linux-x86_64-0.10.1.tar.xz
cd zig-linux-x86_64-0.10.1 && ln -s ${PWD}/zig ${HOME}/.local/bin
mkdir ${HOME}/programs && cd ${HOME}/programs
git clone https://github.com/riverwm/river && cd river && git submodule update --init
sudo xbps-install -S wayland-devel wayland-protocols libevdev-devel wlroots-devel scdoc pkg-config xorg-server-xwayland
zig build -Drelease-safe -Dxwayland --prefix ~/.local install