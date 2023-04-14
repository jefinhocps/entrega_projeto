#!/bin/bash

#atualiza o servidor
apt update
apt upgrade -y

#instala o servico apache2
apt install apache2 -y

#instala o unzip
ap install unzip -y

#acessa a pasta /tmp
cd /tmp

#Faz o download do arquivo disponibilizado no curso
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

#extrai o arquivo
unzip main.zip

#acessa a pasta criada depois da extração
cd linux-site-dio-main

#copia os arquivos para a pasta do apache 'www'
cp -R * /var/www/html/



