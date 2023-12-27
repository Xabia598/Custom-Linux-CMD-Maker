#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Root permission needed, please turn to root/sudo user."
  exit
fi

echo "-- Made with <3 by Pando --"

read -p "[+] Enter the bash script path you want to turn into a command :: " cmd

[ -z "$cmd" ] && echo "[x] Field empty, please fill with a Bash Script (bash_script.sh)!" && exit

if [[ $cmd == *".sh"* ]]; then
    read -p "[+] Enter the name you want for the command to execute :: " cmd_nm

    [ -z "$cmd_nm" ] && echo "[x] Field empty, please fill with the command name!" && exit

    chmod 777 $cmd
    cp $cmd cmd-copy.sh
    mv cmd-copy.sh $cmd_nm
    cp $cmd_nm /bin
    rm $cmd_nm 

    echo "COMMAND MADE :: " $cmd_nm >> log.txt

    echo "[✓] Command successfully made!"
    
else
  echo "[x] Script not valid, doesn't contains ".sh"!" && exit;
fi


