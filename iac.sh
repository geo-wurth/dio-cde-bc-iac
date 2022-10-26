#!/bin/bash
echo "Início do script..."
echo ""
echo "Comandos para criar diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados com sucesso!"
echo ""
echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados com sucesso!"
echo ""
echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt password) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt password) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt password) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt password) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt password) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt password) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt password) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt password) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt password) -G GRP_SEC

echo "Usuários criados com sucesso!"
echo ""
echo "Alterar permissões dos grupos..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Permissões alteradas com sucesso!"
echo ""
echo "Fim do script"