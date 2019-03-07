#!/bin/bash
read -p "please input your user home directory name:" usern
if [ -e /home/$usern/.font ];then
  cp ./fonts/* /home/$usern/.fonts
else
  mkdir -p /home/$usern/.fonts
  cp ./fonts/* /home/$usern/.fonts
fi
if [ -e /home/$usern/.conky ];then
  cp ./conkyrc /home/$usern/.conky
else
  mkdir -p /home/$usern/.conky
  cp ./conkyrc /home/$usern/.conky
fi
if [ ! -e "/home/$usern/.conky/weather.py" ];then
  cp ./weather.py /home/$usern/.conky
fi
