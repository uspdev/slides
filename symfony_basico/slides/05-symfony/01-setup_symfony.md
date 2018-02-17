### Symfony 

Projeto symfony e suas dependências:

    composer create-project symfony/skeleton uspdev
    cd usp
    composer require doctrine maker annotations twig form validator
    composer require encore asset webprofiler server web-server-bundle

Exemplo de entrada no .env para postgresql e mysql:

    DATABASE_URL="pgsql://uspdev:uspdev@localhost:5432/uspdev?charset=utf8"
    DATABASE_URL="mysql://uspdev:uspdev@localhost:3306/uspdev"

<div style="font-size: 14px;"> *Documentação:* 
https://symfony.com/doc/current/best_practices/creating-the-project.html <br>
https://symfony.com/doc/current/setup.html <br>
https://symfony.com/doc/master/configuration/external_parameters.html <br>
http://symfony.com/doc/current/setup/built_in_web_server.html
</div>

