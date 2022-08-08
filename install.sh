#!/usr/bin/sh
# Instalacion de paquetes
sudo apt install -y build-essential git vim xcb libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev libasound2-dev libxcb-xtest0-dev libxcb-shape0-dev

# Instalacion de bspwm y sxhkd
git clone https://github.com/baskerville/bspwm.git
git clone https://github.com/baskerville/sxhkd.git
cd bspwm/
make
sudo make install
cd ../sxhkd
make
sudo make install
cd ..
sudo apt install -y bspwm

# Configuracion bspwm
mkdir ~/.config/bspwm
mkdir ~/.config/sxhkd
cp bspwm/examples/bspwmrc ~/.config/bspwm/
cp sxhkd/examples/sxhkdrc ~/.config/sxhkd/
cp config_files/sxhkdrc ~/.config/sxhkd/
chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/sxhkd/sxhkdrc

# Creacion archivo bspwm_resize
mkdir ~/.config/bspwm/scripts
cp config_files/bspwm_resize ~/.config/bspwm/scripts/bspwm_resize
chmod +x ~/.config/bspwm/scripts/bspwm_resize

# Instalacion polybar
sudo apt install -y cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev

git clone --recursive https://github.com/polybar/polybar
cd polybar/
mkdir build
cd build/
cmake ..
make -j$(nproc)
sudo make install

# Instalacion Picom
sudo apt update -y
sudo apt install -y meson libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev libxcb-glx0-dev

git clone https://github.com/ibhagwan/picom.git
cd picom/
git submodule update --init --recursive
meson --buildtype=release . build
ninja -C build
sudo ninja -C build install

# Instalacion Rofi
sudo apt install -y rofi


# Fondo de pantalla
sudo apt install feh
# Añadir al fichero bspwmrc
feh --bg-fill /ruta/imagen

# Configuracion de la polybar
