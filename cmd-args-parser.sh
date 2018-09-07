#!/bin/bash

echo "Argumente: $@"

# function command is optional
function parser_pos_1(){
	myArgsArray=( "$@" )
	if test $# -gt 0;then
		for ((i=0;i<$#;i+=2));do
			echo ${myArgsArray[$i]} ${myArgsArray[$(($i+1))]}
		done
	fi
}

function parser_pos_2(){
	while [ -n "$1" ];do
		echo $1
		shift
	done
}


function parser_pos_3(){
	while [ -n "$1" ];do
		echo $1 $2
		shift; shift;
	done
}

#set -x

echo "Posibility 1:"
parser_pos_1 $@

echo

echo "Posibility 2:"
parser_pos_2 $@

echo "Script finished"
