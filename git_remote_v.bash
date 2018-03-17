#!/bin/bash.exe

echo
echo "[git remote]"
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

			echo "Calling git remote -v ..."
			git remote -v
			echo

			cd ../

    fi
done
