#!/bin/bash

# Select the default editor depending on filetype
case "$1" in
	*_EDITMSG|*MERGE_MSG|*_TAGMSG )
		code -w "$1"
		;;
	*.txt )
		nano "$1"
		;;
	* )
		code -n "$1"
		;;
esac
