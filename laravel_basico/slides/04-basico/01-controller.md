## Workflow básico do framework
Minha primeira rota:

    Route::get('/grita','OlaController@gritar');

Criar Controller e implementar o método:

    php artisan make:controller OlaController

Que tal retornar um template?

    return view('ola.grita',['x'=>'OLLLA!']);

Limpe tudo:

    rm app/Http/Controller/OlaController.php 
    rm -r resources/view/ola
