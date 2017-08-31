#!/bin/bash

make clean
make

if [ $(uname -s) == "Darwin" ]
then
  open thesis.pdf &> /dev/null
fi

if [ $(uname -s) == "Linux" ]
then
  # https://stackoverflow.com/questions/264395/linux-equivalent-of-the-mac-os-x-open-command
  xdg-open thesis.pdf &> /dev/null
fi

while true
  do make
  sleep 1
done
