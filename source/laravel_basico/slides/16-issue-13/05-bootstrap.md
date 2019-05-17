Adaptar o layout de exemplo do bootstrap 4:

    sticky-footer-navbar -> master.blade.php

Limpar conteúdo e criar uma seção *content*:

    @section('content')
    @show

Atualizar node:

    curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
    sudo apt-get install -y nodejs linpng-dev

Instalar dependências do npm:

    npm install

