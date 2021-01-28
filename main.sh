#!/bin/sh

if [ $EUID != 0 ]; then
    sudo "$0" "$@"
    exit $?
fi

Username=$(powershell.exe '$env:UserName')
ROOT=/mnt/c/Users/$Username/Projects

#* Format: Call Flag Args
case "$1" in
    -fd|--fixdev)
        #* Format: 
        code ~/.wslenv && code ~/.bashrc
    ;;

    -ac|--addcommand)
        #* Format: Executable Name Description
        #* Format: Name Github_link
    ;;

    -rc|--removecommand)
        #* Format: Name
        
    ;;

    -l|--list)
        #* Format: 
        
    ;;

    -h|--help)
        echo "Admin Commands:"
        echo "-h or --help:           "
        echo "-l or --list:           "
        echo "-ac or --addcommand:    "
        echo "-rc or --removecommand: "
        echo "-fd or --fixdev:        "
    ;;

    *);;
esac