#!/bin/bash

figlet bruno14

for i in {1..5}; do 
	sudo useradd -m bruno"$i"r -p bruno"$i"r
	echo usuario bruno"$i" creado
done