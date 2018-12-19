#!/bin/bash
cd 
cd Downloads
wget https://github.com/gitextensions/gitextensions/releases/download/v2.51.01/GitExtensions-2.51.01-Mono.zip
unzip GitExtensions-2.51.01-Mono.zip
sudo mkdir /opt/GitExtensions/
sudo mv GitExtensions /opt/GitExtensions/
sudo chmod +x /opt/GitExtensions/GitExtensions/GitExtensions.exe
cd ~/.local/share/applications/
sudo echo '[Desktop Entry]
Encoding=UTF-8
Version=1.0
Name=Gitextensions
Comment=git-tool
Exec=/opt/GitExtensions/GitExtensions/GitExtensions.exe
Icon=git-extensions-logo-final-256.ico
Terminal=false
Type=Application
Categories=Development; versionning;
Name[en_US]=gitextensions.desktop
GenericName[en_US]=Version tool 
Comment[en_US]=Create repos/push/pull'>> gitextensions.desktop