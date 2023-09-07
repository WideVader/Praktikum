#!/bin/bash

case $1 in
	start)
		echo starting
		;;
	stop)
		echo stopping
		;;
	restart)
		echo restarting
		;;
	*)
		echo ne vem kaj narediti
		exit 1
		;;
esac

