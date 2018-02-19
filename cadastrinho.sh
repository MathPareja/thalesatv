#!/bin/bash
clear

echo "Preencha o cadastro a seguir com as informações corretas:"

function name (){
	read -p "Digite seu nome completo: " NOME
	echo $NOME > .cadastro.tmp && echo "Nome: $NOME" >> meucadastro.txt
grep -E '([[:digit:]]|[[:punct:]])' .cadastro.tmp
if (( $? == 0 )); then
	echo "Nome inválido" && name
else
	echo "Nome válido"
sleep 1 && clear
fi
}
function email(){
	read -p "Digite seu email: " EMAIL
	echo $EMAIL > .cadastro.tmp && echo "Email: $EMAIL" >> meucadastro.txt
grep -E "(A-Za-z0-9\.\_\-)+@([[:alpha:]])+(\.com|\.br)|(\.com|\.br)" .cadastro.tmp
if (( $? == 0 )); then
	echo "Email válido"
sleep 1 && clear
else
	echo "Email inválido" && email
fi
}
function telefone(){
	read -p "Digite seu número de telefone: " TELEFONE
	echo $TELEFONE > .cadastro.tmp && echo "Telefone: $TELEFONE" >> meucadastro.txt
grep -E '^[(][0-9]{2}[)]9[0-9]{4}-[0-9]{4}' .cadastro.tmp
if (( $? == 0 )); then
echo "Número de telefone válido"
sleep 1 && clear
else
	echo "Número de telefone inválido" && telefone
fi
}
function registrog(){
	read -p "Digite seu RG (Registro Geral): " RG
	echo $RG > .cadastro.tmp && echo "RG: $RG" >> meucadastro.txt
grep -E "^[0-9]{2}\.[0-9]{3}\.[0-9]{3}-((X|x)|[0-9])" .cadastro.tmp
if (( $? == 0 )); then
	echo "RG válido" 
sleep 1 && clear
else
	echo "RG inválido" && registrog
fi
}
function cpf(){
	read -p "Digite seu CPF: " CPF
	echo $CPF > .cadastro.tmp && echo "CPF: $CPF" >> meucadastro.txt
grep -E "^[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2}" .cadastro.tmp
if (( $? == 0 )); then
	echo "CPF válido" 
sleep 1 && clear
else
	echo "CPF inválido" && cpf
fi
}
function datanasc(){
read -p "Digite sua data de nascimento no seguinte parâmetro DD/MM/AA: " DATA
	echo $DATA > .cadastro.tmp && echo "Data de nascimento: $DATA" >> meucadastro.txt
grep -E --color '^(([0][0-9]|[12][0-9])|[3][01])[/]([0][0-9]|[1][0-2])[/]([0-9]{4})' .cadastro.tmp
if (( $? == 0 )); then
	echo "Data de nascimento válida" 
sleep 1 && clear
else
	echo "Data de nacimento inválida" && datanasc
fi
}
function ipa(){
read -p "Digite seu endereço de IP: " IPAD
	echo $IPAD > .cadastro.tmp && echo "IP: $IPAD" >> meucadastro.txt
grep -E '^(((([2]([5][0-5]|[0-4][0-9])|[0-9][0-9])|[0-9])\.)|(1[0-9][0-9]\.)){3}((([2]([5][0-5]|[0-4][0-9])|[0-9][0-9])|[0-9])|[1][0-9][0-9])$' .cadastro.tmp
if (( $? == 0 )); then
	echo "IP válido"
sleep 1 && clear
else
	echo "IP inválido" && ipa
fi
}
function maska(){
read -p "Digite sua mascara de rede: " NETM
	echo $NETM > .cadastro.tmp && echo "Mascara de rede: $NETM" >> meucadastro.txt
grep -E '^(((([2]([5][0-5]|[0-4][0-9])|[0-9][0-9])|[0-9])\.)|(1[0-9][0-9]\.)){3}((([2]([5][0-5]|[0-4][0-9])|[0-9][0-9])|[0-9])|[1][0-9][0-9])$' .cadastro.tmp
if (( $? == 0 )); then
	echo "Mascara válida"
sleep 1 && clear
else
	echo "Mascara inválida" && maska
fi
}
name 
email 
telefone 
registrog
cpf
datanasc
ipa
maska
cat meucadastro.txt
