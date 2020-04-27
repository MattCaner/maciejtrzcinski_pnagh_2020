#!/bin/bash

if [[ "$*" == "clone" ]]
then
	git clone https://github.com/MattCaner/maciejtrzcinski_pnagh_2020.git
fi

if [[ "$*" == "run" ]]
then
	echo "-------------------------------------------------------------------"
	echo "-------------------------------------------------------------------"
	echo "----------Zaraz zostanie uruchomiony docker.-----------------------"
	echo "---Kiedy w nim sie znajdziesz, przeczytaj plik instrukcja.txt,-----"
	echo "----------zeby dowiedziec sie wiecej.------------------------------"
	echo "-------------------------------------------------------------------"
	echo "-------------------------------------------------------------------"
	docker build -t binutils_mt ./maciejtrzcinski_pnagh_2020/
	docker run -it binutils_mt
	echo "done"
fi

if [[ "$*" == "update" ]]
then
	echo "---------POBIERANIE NAJNOWSZEJ WERSJI SKRYPTU---------------"
	wget https://raw.githubusercontent.com/MattCaner/maciejtrzcinski_pnagh_2020/master/run_trzcinski_maciej.sh
	echo "---------POBRANO---------------"

fi

if [[ "$*" == "clean" ]]
then
	rm -rf maciejtrzcinski_pnagh_2020
	docker ps -a -q -f status=exited | xargs docker rm
	docker rmi binutils_mt
	echo "usunieto"
fi
