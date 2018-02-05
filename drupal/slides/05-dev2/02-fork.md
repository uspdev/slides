Fork do projeto original no github. Clonar e subir localmente o sistema:
    
    git clone https://github.com/thiagogomesverissimo/fatec.git
    cd fatec
    composer install
    ./vendor/bin/drupal site:install --db-type='pgsql' --db-port=5432
    ./vendor/bin/drupal module:install features_ui fatec
    git checkout -b issue1

Realizar a tarefa da *issue 1*. Enviar mudanças:

    git add --all
    git status
    git commit -m '#1 campo nome da mãe criado'
    git push origin issue1

*Criar um pull request com as mudanças*
