#!/bin/bash
sudo rm /usr/bin/Krom
wget https://github.com/armory3d/Krom_bin/archive/master.zip
unzip master.zip
rm master.zip
sudo cp ./Krom_bin-master/Krom /usr/bin/
rm -r Krom_bin-master