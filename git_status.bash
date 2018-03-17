#!/bin/bash.exe

echo
echo "[git status]"
echo "Going into every directory here."
echo

for x in *;
do
    if [ -d "${x}" ]
    then
        if [ -e "${x}"/.git ]
        then
            echo "${x}"
            echo "======================"
            cd "${x}"
            echo "Calling git status ..."
            git status
            echo
            cd ../
        fi
    fi
done
