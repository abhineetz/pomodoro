#!/usr/bin/bash

export MS_OFFICE="/c/Program Files/Microsoft Office/root/Office16/";

pomodoro () {


	echo "hello $1";
	intent=$1; execution=$2; record=$3;

	echo "Intent:$intent, Execution:$execution, Record:$record";


	"$MS_OFFICE/EXCEL.exe";

}


pomodoro $@;
