#!/bin/bash

source ./functions.sh
source ./logfunctions.sh


Action=$1

case $1 in
        addDir)
                addDir $2 $3
                ;;
        listFiles)
                listFiles $2
                ;;
        listDirs)
                listDirs $2
                ;;
        listAll)
                listAll $2
                ;;
        deleteDir)
                deleteDir $2 $3
                ;;
        *) errorMessage "Invalid input please check"
                ;;
        esac
