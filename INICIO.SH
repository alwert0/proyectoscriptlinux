#!/bin/bash
#Autor: Alberto Gomez Sanz
# Fecha: 18/04/2023

while true
do
	clear

	echo "MENU"
	echo "----"
	echo "1 crear control de version"
	echo "2 configurar usuario: nombre-email-pasword"
	echo "3 realizar primer commit"
	echo "4 realizar commit sobre el ultimo"
	echo "5 configurar el repositorio remoto"
	echo "6 cambiar nombre de la rama principal de master a  main"
	echo "7 subir el repositorio local al remoto"
	echo "8 salir"

	echo 
	echo -n "Escriba opcion: "
	read opcion

	case $opcion in 

	(1)
	clear
	echo "1 crear control de version"
	echo "---------------------------"
	git init
	read -rsp $'\nPress enter continue...'
	;;

	(2)
	clear
	echo "2 configurar usuario: nombre-email-pasword"
	echo "---------------------------"
	git config user.name "alwert0"
	git config user.email "alwert0@hotmail.com"
	git config user.password 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
	read -rsp $'\nPress enter continue...'
	;;
	(3)
	clear
	echo "3 realizar primer commit"
	echo "---------------------------"
	git add .
	git commit -m "Snapshopt 1"
	read -rsp $'\nPress enter continue...'
	;;
	(4)
	clear
	echo "4 realizar commit sobre el ultimo"
	echo "---------------------------"
	git add .
	git commit --amend -m "Snapshopt 1"
	read -rsp $'\nPress enter continue...'
	;;
	(5)
	clear
	echo "5 configurar el repositorio remoto"
	echo "---------------------------"
	git remote add origin "https://github.com/alwert0/proyectoscriptlinux.git"
	read -rsp $'\nPress enter continue...'
	;;
	(6)
	clear
	echo "6 cambiar nombre de la rama principal de master a  main"
	echo "---------------------------"
	git branch -M main
	read -rsp $'\nPress enter continue...'
	;;
	(7)
	clear
	echo "7 subir el repositorio local al remoto"
	echo "---------------------------"
	git push -u -f origin main 
	read -rsp $'\nPress enter continue...'
	;;
	(8)
	clear
	echo "Gracias por su visita"
	echo "---------------------------"
	read -rsp $'\nPress enter continue...'
	exit 0
	;;
	(*)
	clear 
	echo "opcion incorrecta"
	read -rsp $'\nPress enter continue...'
	;;
	esac
done
