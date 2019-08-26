#!/bin/bash
if [ -e $HOME/.font ];then
  cp ./fonts/* $HOME/.fonts
else
  mkdir -p $HOME/.fonts
  cp ./fonts/* $HOME/.fonts
fi
if [ -e $HOME/.conky ];then
  cp ./conkyrc $HOME/.conky
else
  mkdir -p $HOME/.conky
  cp ./conkyrc $HOME/.conky
fi
if [ ! -e "$HOME/.conky/weather.py" ];then
  cp ./weather.py $HOME/.conky
fi
