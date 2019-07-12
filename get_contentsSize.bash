#!/bin/bash.exe

echo
echo "[Inquiring the size of each dir]"
echo "Going into every directory here"
echo

for x in *;
do
    if [ -d "${x}" ]
    then
        du -hs "${x}"
    fi
done
