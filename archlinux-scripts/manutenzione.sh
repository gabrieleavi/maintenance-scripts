#!/bin/bash

# Author : Gabriele Avi
#  Script follows here:

echo "Benvenuto nello script di manutenzione automatizzata di Arch Linux!"
read -r -p "Vuoi procedere con la manutenzione? [S/n] " response
	if [[ "$response" =~ ^([sS])$ ]] || [[ -z $response ]]
	then
	echo "Aggiornamento del sistema in corso..."
	paru -Syyu
	# To update the system with the AUR packages included
	 echo "============================="
	 echo "Aggiornamento completato con successo!"
	 echo "Inizio manutenzione..."
	 sudo paccache -ruk0
	 # To clear old packages cache
	 echo "============================="
	 echo "Cache pacchetti disinstallati pulita!"
	 echo "Pulizia di ulteriore cache in corso..."
	 paru -Sc
	 # To clear unused packages cache
	 echo "============================="
	 echo "Pulizia cache completata con successo!"
	 echo "Pulizia pacchetti orfani in corso..."
	 sudo pacman -Rns $(pacman -Qtdq)
	 # To remove orphan packages
	 echo "============================="
	 echo "Pulizia pacchetti orfani completata con successo!"
	 echo "Avvio di stacer in corso..."
	 sudo stacer
	 # To clean the system
	 echo "Avvio di bleachbit in corso..."
	 sudo bleachbit
	 clear
	 echo "Riavvio del computer in corso..."
	 reboot
 else
	  echo "Operazione annullata!"
	fi
