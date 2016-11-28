#!/bin/bash
FILES=~/Downloads/ai2016end/extraq4/*
g++ rr.cpp
cntr=0
for f in $FILES
do
  echo $f
  ./a.out $f
  $cntr = $cntr + 1
  #./a.out > temp.txt
  #echo "Processing $f file..."
  # take action on each file. $f store current file name
  #cat $f
done
