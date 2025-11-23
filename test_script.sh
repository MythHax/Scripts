#!/usr/bin/zsh

echo "Input your URL"

read URL

ip_address=$(ping -c 1 $URL | awk -F'[()]' '/^PING/ {print $2}')

nmap -sC -sV -A -O $ip_address  




