#!/bin/bash.exe

echo
echo "Going into every directory here."
echo

for x in *;
do
    if [ -d "${x}" ]
    then
        if [ -e "${x}"/.git ]
        then
            cd "${x}"
            echo "${x}"
            echo "======================"
            echo "Calling git remote update ..."
            git remote update
            echo
            echo "Calling git status ..."
            git status
            echo
            cd ../
        fi
    fi
done
