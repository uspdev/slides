### PostgreSQL

Dependências mínimas:

    sudo apt-get -y install postgresql

Criando usuário e banco:

    sudo su posgtres
    psql
    CREATE USER uspdev WITH PASSWORD 'uspdev';
    CREATE DATABASE uspdev OWNER uspdev;
    \q
    exit

