#!/bin/sh -e

ID="orca"
ASM="uxncli $HOME/roms/drifblim.rom"
EMU="uxnemu"
LIN="uxncli $HOME/roms/uxnlin.rom"
SRC="src/${ID}.tal"
DST="bin/${ID}.rom"
CPY="$HOME/roms"
ARG="etc/tests.orca"

STORE="$HOME/bin/butler push"
STOREID="hundredrabbits/orca:uxn"

rm -rf bin
mkdir bin

if [[ "$*" == *"--lint"* ]]
then
	$LIN $SRC
fi

$ASM $SRC $DST

if [[ "$*" == *"--save"* ]]
then
	cp $DST $CPY
fi

if [[ "$*" == *"--push"* ]]
then
	$STORE $DST $STOREID
fi

$EMU $DST $ARG
