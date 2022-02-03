#!/usr/bin/env bash
if [ $1 == -c ]
then
	bash crear-usuarios14.sh
elif [ $1 == -b ]
then
	bash borrar-usuarios14.sh
else
	echo "error"
	sl
fi
exit
