#!/bin/bash
BASEDIR=$(dirname "$0")'/install_gitextensions.sh'
echo $BASEDIR
sudo apt-get -y install git 
sudo apt-get -y install kdiff3
sudo apt-get -y install mono-complete
sudo apt-get -y install ssh-askpass-fullscreen
cd
cd Downloads
[-f GitExtensions-2.51.01-Mono.zip ] && /bin/bash/ $BASEDIR || echo 'Gitextensions already installed'
sudo snap install vscode --classic
sudo snap install godot --classic
sudo apt-get -y install llvm
