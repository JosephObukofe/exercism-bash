#!/usr/bin/env bash

main () {
    IFS='- _*'
    read -ra words <<< "$@"

    for i in "${words[@]}"
    do
        result+="${i:0:1}"
    done
    echo "${result^^}"
}

main "$@"