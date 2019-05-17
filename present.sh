#!/bin/bash

# Lazy Presenter
#
# Script que gera automaticamente a apresentação baseando-se no parâmetro enviado
#
# Author: André Girol

## Colors, Baby
red='\e[0;31m'
yellow='\e[1;33m'
lblue='\e[1;34m'
nc='\033[0m' # no color

# Local do executável do prez
prez=./node_modules/prez/bin/prez.js

# Checa se o parâmetro enviado não é vazio
if [ -z "$1" ]; then
    echo -e "${red} [ ERRO ] ${nc}"
    echo "Você precisa especificar um diretório de entrada"
    exit 1
fi

# Testa se a pasta de entrada existe e roda o prez
if [ -d "source/$1" ]; then

    echo -e "${yellow} [ Iniciando ] ${nc}\n"
    echo -e "Iniciando servidor interno. Para desligar, ${lblue} use Ctrl + C ${nc} \n\n\a"
    node $prez source/$1 docs/$1 --theme=league --watch --serve

else

    echo -e "${red} [ ERRO ] ${nc}"
    echo "Diretório não encontrado"
    exit 1
fi



