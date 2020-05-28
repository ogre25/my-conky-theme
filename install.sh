#!/bin/bash
read -p "Please input your appid of openweather.org:" wapi
read -p "Please input your city name(ex:newyork,london,shanghai):" cityname
read -p "Please inpurt your country name(ex:us,en,cn):" countryname
sed -i "s:your openweahter.org appid:$wapi:g" weather.py
sed -i "s:city name:$cityname:g" weather.py
sed -i "s:country name:$countryname:g" weather.py
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
