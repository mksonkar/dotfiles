#! /usr/bin/zsh
while (true)
do
    if (($(xbacklight -get) < 1)); 
    then ($(xbacklight -set 1)); 
    fi
done
