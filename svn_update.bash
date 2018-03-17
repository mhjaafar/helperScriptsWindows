#!/bin/bash.exe

echo
echo "Going into every directory here."
echo

for x in *;
do
    if [ -d "${x}" ]
    then
        if [ -e "${x}"/.svn ]
        then
            cd "${x}"
            echo "${x}"
            echo "======================"
            echo "Calling svn update ..."
            svn update
            echo
            cd ../
        fi
    fi
done
