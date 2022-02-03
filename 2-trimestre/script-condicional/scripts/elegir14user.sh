#!/usr/bin/env bash

echo "elige c si quieres crear o b si quieres borrar"
read option
if [ $option = c ]
then
	echo " => creando usuarios"
	sudo bash crear-usuarios14.sh
elif [ $option = b ]
then
	echo " => borrando usuarios"
	sudo bash borrar-usuarios14.sh
else
	echo "no existe"
	sudo sl
fi

exit 0