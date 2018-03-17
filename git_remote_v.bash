#!/bin/bash.exe

echo
echo "[Inquiring repository origin]"
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
            echo "Calling git remote -v ..."
            git remote -v
            echo
            cd ../
        fi
    fi
done
