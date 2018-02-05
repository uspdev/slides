## Baixando e instalando Drupal

Drupal com composer:

    composer create-project drupal-composer/drupal-project:8.x-dev --stability dev --no-interaction fatec
    cd fatec

Subindo server:

    cd fatec
    ./vendor/bin/drupal server 192.168.100.111:8888

Instalação do Drupal:

    ./vendor/bin/drupal site:install --db-type='pgsql' --db-port=5432
