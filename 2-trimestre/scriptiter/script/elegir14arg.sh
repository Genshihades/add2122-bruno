#!/usr/bin/env bash
if [ $1 = -c ]
then
  echo " => creando usuarios"
  sudo bash crear-usuarios14iter.sh
elif [ $1 = -b ]
then
  echo " => borrando usuarios"
  sudo bash borrar-usuarios14iter.sh
elif [ $1 = -e ]
then
  echo "=> comprobando usuarios"
  sl
  getent passwd | grep bruno
else
  echo "error"

fi

exit 0