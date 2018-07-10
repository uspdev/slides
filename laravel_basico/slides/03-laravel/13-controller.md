## Controller

Criação da classe básica do controller:

    php artisan make:controller IndexController

Encaminhar requisição na rota para controller:

    Route::get('/','IndexController@gritar');
    Route::get('/{n}','IndexController@gritarMultiplo');

Agora, mover código da closure para os controller.
