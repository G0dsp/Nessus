 #!/bin/bash
# Scipt para automatizacion de la instalacion y puesta apunto de nessus

echo "HOLA BIENVENIDO AL INSTALADOR DE NESSUS"
sleep 1
clear
echo "
 __ _  ____  ____  ____  _  _  ____  __  __ _  ____  ____  __   __    __    ____  ____ 
(  ( \(  __)/ ___)/ ___)/ )( \/ ___)(  )(  ( \/ ___)(_  _)/ _\ (  )  (  )  (  __)(  _ \

/    / ) _) \___ \\___ \) \/ (\___ \ )( /    /\___ \  )( /    \/ (_/\/ (_/\ ) _)  )   /
\_)__)(____)(____/(____/\____/(____/(__)\_)__)(____/ (__)\_/\_/\____/\____/(____)(__\_)

"

echo "PARA ESTA INSTALACION NECESITAS CREDENCIALES"
echo ""
echo "PUEDES REGISTRARTE AQUI  https://es-la.tenable.com/products/nessus/nessus-essentials"
echo ""
sleep 3

echo ""


echo " Descargando Nessus version de nessus mas actual para Kali Linux..."

curl --request GET \
  --url 'https://www.tenable.com/downloads/api/v2/pages/nessus/files/Nessus-8.15.6-ubuntu910_amd64.deb' \
  --output 'Nessus-8.15.6-ubuntu910_amd64.deb'


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
