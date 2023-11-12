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
/tmp/scratch-desktop/scratch-desktop