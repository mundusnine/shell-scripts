#!/bin/bash
first='sdg'
second='f2d'
solution=$(sed "s/$first/$second/g" test.txt)
echo "$solution" > temp.txt
cat temp.txt > test.txt
rm temp.txt