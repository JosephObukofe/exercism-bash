#!/usr/bin/env bash

factors=(3:Pling 5:Plang 7:Plong)

result=""

for factor_pair in "${factors[@]}"
do
    IFS=':' # Changing the IFS value to (:)
    read -ra factor_parts <<< "$factor_pair"
    number="${factor_parts[0]}"
    string="${factor_parts[1]}"

    if (( "$1" % "$number" == 0 )); then
        result+="$string"
    fi
done

if [ -z "$result" ]; then
    result="$1"
fi

IFS=$' \t\n' # Restoring the default IFS value

echo "$result" 
