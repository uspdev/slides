Criar o model para cadastro de turma:
 
    php artisan make:model Turma -m

Inserir os campos na migration:

    $table->string('ministrante');
    $table->date('inicio');
    $table->date('fim');
    $table->text('bibliografia');
    $table->integer('disciplina_id')->unsigned();
    $table->foreign('disciplina_id')->references('id')->on('disciplinas');

Rodar migrations:

    php artisan migrate

<div style="color:red;">!!! please commit this !!!</div>
