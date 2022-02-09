#!/bin/bash

figlet bruno14

for i in {1..5}; do 
	sudo userdel -r bruno"$i"r
	echo usuario "$i" borrado
done