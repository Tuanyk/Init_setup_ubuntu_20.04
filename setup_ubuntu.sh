#!/bin/bash

#Bộ gõ tiếng Việt
sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
sudo apt-get update
sudo apt-get install ibus-bamboo
ibus restart
# Đặt ibus-bamboo làm bộ gõ mặc định
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'Bamboo')]"

sudo apt install fonts-firacode
sudo snap install --classic code
sed -i '$s/}/\n"editor.fontFamily": "Fira Code",\n"editor.fontLigatures": true}/' $HOME/.config/Code/User/settings.json
