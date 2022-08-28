#!/bin/bash

function get_missing_parameters() {
    for param in "fileName" "content"; do
        while [ -z "${!param}" ]; do
            read -p "Please enter ${param}: " "${param}"
        done
    done
}

while [ $# -gt 0 ]; do
    if [[ $1 == *"--"* ]]; then
        param="${1/--/}"
        declare $param="$2"
    fi
    shift
done

get_missing_parameters

echo "${content}" > "${fileName}"
echo "Created ${fileName}"