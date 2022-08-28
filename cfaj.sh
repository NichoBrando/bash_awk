#!/bin/bash
if [ "${1}" != "" ]
then
    mkdir "${1}"
    cd "${1}"
else
    echo "Please enter a directory name"
    exit 1
fi
exec bash