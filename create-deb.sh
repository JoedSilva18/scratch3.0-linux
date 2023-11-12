#!/bin/sh

######## install electron
sudo apt-get install -yq gdebi p7zip-full
cd ~
npm install electron --save-dev


######## extract scratch-desktop
rm -rf /tmp/scratch-desktop
mkdir /tmp/scratch-desktop
wget --max-redirect 5 -c -O /tmp/scratch-desktop.exe 'https://downloads.scratch.mit.edu/desktop/Scratch%20Setup.exe'
7za x -aoa -y /tmp/scratch-desktop.exe -o/tmp/scratch-desktop


######## create electron app
cp -rf ~/node_modules/electron/dist/* /tmp/scratch-desktop/
ln -fsr /tmp/scratch-desktop/electron /tmp/scratch-desktop/scratch-desktop


######## fix permissions
chmod 755 /tmp/scratch-desktop/locales
chmod 755 /tmp/scratch-desktop/swiftshader
chmod 755 /tmp/scratch-desktop/resources
chmod 755 /tmp/scratch-desktop/resources/static
chmod 755 /tmp/scratch-desktop/resources/static/assets


######## get application icon
wget -c -O /tmp/scratch-desktop/resources/Icon.png 'https://scratch.mit.edu/images/download/icon.png'


######## create deb package
cd ~
npm install electron-installer-debian
wget -c -O /tmp/config-deb.json 'https://raw.githubusercontent.com/JoedSilva18/scratch3.0-linux/main/config-deb.json'
~/node_modules/.bin/electron-installer-debian --config /tmp/config-deb.json
