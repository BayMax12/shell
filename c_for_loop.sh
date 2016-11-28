#!/bin/bash
g++ rr.cpp
for (( c=1; c<=5; c++ ))
  do 
    file1=$(echo in$c.txt)
    echo $file1
    file2=$(echo out$c.txt)
    ./a.out file1.txt > file2.txt
   #echo "Welcome $c times"
  done
