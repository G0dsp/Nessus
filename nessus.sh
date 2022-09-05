 #!/bin/bash
# Scipt para automatizacion de la instalacion y puesta apunto de nessus
ipserver=$(hostname -I)

echo "HOLA BIENVENIDO AL INSTALADOR DE NESSUS"
sleep 1
clear
echo "
 __ _  ____  ____  ____  _  _  ____  __  __ _  ____  ____  __   __    __    ____  ____ 
(  ( \(  __)/ ___)/ ___)/ )( \/ ___)(  )(  ( \/ ___)(_  _)/ _\ (  )  (  )  (  __)(  _ \

/    / ) _) \___ \\___ \) \/ (\___ \ )( /    /\___ \  )( /    \/ (_/\/ (_/\ ) _)  )   /
\_)__)(____)(____/(____/\____/(____/(__)\_)__)(____/ (__)\_/\_/\____/\____/(____)(__\_)

"
echo " Descargando Nessus version de nessus mas actual para Kali Linux..."
wget https://download1336.mediafire.com/8qhwo573jb7g/jinoapqghzqrhta/Nessus-10.3.0-debian9_amd64.deb
sleep 1

echo "Creando directorio de instalacion..."
echo ""

mkdir NessusInstaler

sleep 1

sudo mv Nessus-* ./NessusInstaler

sleep 1

echo "La instalacion va a comenzar no apague el sistema"
sleep 1

clear

echo "
 __ _  ____  ____  ____  _  _  ____  __  __ _  ____  ____  __   __    __    ____  ____ 
(  ( \(  __)/ ___)/ ___)/ )( \/ ___)(  )(  ( \/ ___)(_  _)/ _\ (  )  (  )  (  __)(  _ \

/    / ) _) \___ \\___ \) \/ (\___ \ )( /    /\___ \  )( /    \/ (_/\/ (_/\ ) _)  )   /
\_)__)(____)(____/(____/\____/(____/(__)\_)__)(____/ (__)\_/\_/\____/\____/(____)(__\_)

"

sudo dpkg -i ./NessusInstaler/Nessus-*
echo ""
echo "Se va a abrir la terminal de instalacion en Firefox"
echo ""
echo "NECESITA CREDENCIALES PARA LA INSTALACION "
echo ""
echo "No es necesario que actives el servicio ;)"
sleep 3
clear
echo "

 __ _  ____  ____  ____  _  _  ____  __  __ _  ____  ____  __   __    __    ____  ____ 
(  ( \(  __)/ ___)/ ___)/ )( \/ ___)(  )(  ( \/ ___)(_  _)/ _\ (  )  (  )  (  __)(  _ \

/    / ) _) \___ \\___ \) \/ (\___ \ )( /    /\___ \  )( /    \/ (_/\/ (_/\ ) _)  )   /
\_)__)(____)(____/(____/\____/(____/(__)\_)__)(____/ (__)\_/\_/\____/\____/(____)(__\_)

Hecho por g0dsp <3    https://github.com/G0dsp
"
sleep 1,5

sudo /bin/systemctl start nessusd.service

firefox https://127.0.0.1:8834/#/