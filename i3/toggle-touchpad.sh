#!/bin/sh

STATE=`synclient -l | awk '/TouchpadOff.*/ {print $3}'`
synclient TouchpadOff=$(($STATE ^ 1))
