### MariaDB

Dependências mínimas:

    sudo apt-get -y install mariadb-server

Criando usuário e banco:

    sudo mysql
    CREATE DATABASE uspdev;
    GRANT ALL PROVILEGES ON uspdev.* to uspdev@'localhost' identified by 'uspdev';
    quit

