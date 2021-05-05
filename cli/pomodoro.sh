#!/usr/bin/bash

export MS_OFFICE="/c/Program Files/Microsoft Office/root/Office16/";

pomodoro () {
	"$MS_OFFICE"/EXCEL.exe pomodoro.csv & 
	sleep "$1";	

	echo "Waking up.. after $1";
}



printf "%b" " Usage: Start a pomodoro timer with a custome time interval\r\n\tIf not agrument is provided, the the default timer duration will be taken as 30 mins.\r\n e.g. ./pomodoro 20m";

if [ "$#" -eq 1 ]; then
	pomodoro $@;
else	
	pomodoro 30m;
fi
