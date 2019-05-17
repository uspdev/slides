### Tabela Rede

    php bin/console make:entity Rede

Aplicar schema no banco de dados:

    php bin/console doctrine:migrations:diff
    php bin/console doctrine:migrations:migrate

devmaster:
 
 - Adicionar nome, iprede e cidr em Rede.php
 - Refatorar banco de dados
 - Commit e merge das mudanças

<br>
<div style="font-size: 16px;"> *Documentação:* https://symfony.com/doc/current/doctrine.html </div>


