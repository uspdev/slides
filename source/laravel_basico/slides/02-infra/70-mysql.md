### Mysql

<img src="./images/db.png" height="220px">

    sudo apt -y install mysql-server

Criando usuário e banco:

    sudo mysql
    CREATE DATABASE disciplinas;
    GRANT ALL PRIVILEGES ON disciplinas.* to disciplinas@'localhost' identified by 'disciplinas';
    quit

