Configurar .env com info do bd.
Gerar model, controller, resource e migrations para Disciplina:

    php artisan make:model Disciplina -crm

Editair migrations e inserir campos para titulo e ementa:

    $table->string('titulo');
    $table->text('ementa');

Rodar migrations:

    php artisan migrate

