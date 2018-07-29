Gerar model para Disciplina:

    php artisan make:model Disciplina -crm

Edita migrations e inserir campos para titulo e ementa:

    $table->string('titulo');
    $table->text('ementa');

Rodar migrations:

    php artisan migrate

