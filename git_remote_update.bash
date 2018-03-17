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
			if ! [ -e .git ]
			then
				echo "Not a git directory."
				cd ../
				echo
				continue
			fi

			echo "Calling git remote update ..."
			git remote update

			echo
			echo "Calling git status ..."
			git status
		  echo

		  cd ../
    fi
done
