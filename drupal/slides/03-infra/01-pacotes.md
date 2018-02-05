## Preparação da infraestrutura em ambiente para Ubuntu Server 16.04: 

Instalação das dependências:
   
    sudo apt-get -y install php php-gd php-xml php-intl php-mbstring php-pgsql
    sudo apt-get -y install postgresql unzip git

Instalação do composer:

    wget https://getcomposer.org/installer
    php installer
    sudo mv composer.phar /usr/local/bin/composer
    rm installer
