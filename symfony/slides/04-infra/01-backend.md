### backend Ubuntu 16.04

PPA para PHP 7.1:

    sudo apt-get -y install python-software-properties
    sudo add-apt-repository -y ppa:ondrej/php
    sudo apt-get update 

Instalação das dependências em PHP:
   
    sudo apt-get -y install php7.2 php7.2-xml php7.2-intl php7.2-mbstring
    sudo apt-get -y install php7.2-pgsql php7.2-mysql php7.2-sqlite3

Instalação do composer:

    sudo apt-get -y install zip unzip curl
    curl -s https://getcomposer.org/installer | php
    sudo mv composer.phar /usr/local/bin/composer
