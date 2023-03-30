#!/bin/bash

echo "----------------------------"
echo "Criando diretórios...." 
echo "----------------------------"

cd /

echo "Criando a pasta publico"
mkdir /publico
echo "Criando a pasta adm"
mkdir /adm
echo "Criando a pasta ven"
mkdir /ven
echo "Criando a pasta sec"
mkdir /sec

echo "---------------------------------------"
echo "Finalizando a criação dos diretórios..."
echo "---------------------------------------"


echo "---------------------------------------"
echo "Iniciando a criação dos grupos........."
echo "---------------------------------------"

echo "Criando grupo GRP_ADM"
groupadd GRP_ADM
echo "Criando grupo GRP_VEN"
groupadd GRP_VEN
echo "Criando grupo GRP_SEC"
groupadd GRP_SEC

echo "---------------------------------------"
echo "Finalizando a criação dos grupos......."
echo "---------------------------------------"


echo "---------------------------------------"
echo "Iniciando a criação dos usuarios......."
echo "---------------------------------------"

echo "Criando usuario para o grupo GRP_ADM"

useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_ADM 
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_ADM
useradd joao -c "Joao" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_ADM

echo "Adicionando permissões a pasta adm...."
chmod 770 /adm/
chown root:GRP_ADM /adm/

echo "Finalizando provisionamento para o grupo GRP_ADM"

echo "Criando usuario para o grupo GRP_VEN"

useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_VEN
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_VEN

echo "Adicionando permissões a pasta ven...."
chmod 770 /ven/
chown root:GRP_VEN /ven/


echo "Finalizando provisionamento para o grupo GRP_VEN"

echo "Criando usuario para o grupo GRP_SEC"

useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_SEC
useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_SEC

echo "Adicionando permissões a pasta sec...."
chmod 770 /sec/
chown root:GRP_SEC /sec/

echo "Finalizando provisionamento para o grupo GRP_SEC"

echo "Atualizando permissões de Acessos a pasta publica..."

chmod 777 /publico/
