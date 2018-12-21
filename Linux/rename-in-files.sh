#!/bin/bash 
# To use script do: ./rename-in-files.sh Lucy Sara txt
replace=$1
with=$2
solution=''
extension=$3
for f in $(find . -name "*.$extension");
 do solution=$(sed "s/$replace/$with/g" $f)
 echo "$solution" > temp.txt 
 cat temp.txt > $f 
 rm temp.txt;
 done

