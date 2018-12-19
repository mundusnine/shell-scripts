#!/bin/bash
file="$HOME/.local/share/applications/Kodestudio.desktop"
dir="$(dirname $0)/"
echo "Creating shortcut for Kodestudio"
if [ -e $file ]; then
  echo "Symlink of $dir already exists!"
else
    sudo echo "#!/usr/bin/env xdg-open
    [Desktop Entry]
    Version=1.0
    Type=Application
    Terminal=false
    Exec=$dir/kodestudio
    Name=Kodestudio
    Comment=Kodestudio
    Icon=$dir/resources/app/resources/linux/code.png" >> "$HOME/Kodestudio.desktop"
    sudo mv "$HOME/Kodestudio.desktop" $file
    touch "$HOME/kode"
    echo "#!/bin/bash
    $dir/kodestudio"  >>"$HOME/kode"
    sudo mv "$HOME/kode" "/sbin/kode"
    sudo chmod +x "/sbin/kode"
    sudo chmod +x $file
fi