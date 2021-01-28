#!/bin/sh
ROOTDIR=.wslenv

#* Permission Elevation
if [ $EUID != 0 ]; then
    sudo "$0" "$@"
    exit $?
fi

#* Setup Enviroment
Username=$(powershell.exe '$env:UserName')
ROOT=/mnt/c/Users/$Username/Projects

#* Set up file system
mkdir ~/$ROOTDIR
mkdir ~/$ROOTDIR/exe
touch ~/$ROOTDIR/dat
mkdir $ROOT

#* Install Aliases
echo `alias admin="~/$ROOTDIR/main.sh"` >> ~/.bashrc