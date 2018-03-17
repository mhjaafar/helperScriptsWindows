#!/bin/bash.exe

echo
echo "Going into every directory here."
echo

for x in *;
do
    if [ -d "${x}" ]
    then
            cd "${x}"
            echo "${x}"
            echo "======================"
            if ! [ -e .svn ]
            then
                echo "Not a svn directory."
                cd ../
                echo
                continue
            fi

            echo "Calling svn update ..."
            svn update

            echo
            echo "Calling svn status ..."
            svn status
          echo

          cd ../
    fi
done
