## MVC: Rotas

 - Encaminhamento da requisição
 - Closure e Controller
 - api e web

Exemplo:

    Route::get('/', function() {
        return 'gritar!';
    });

    Route::get('/{n}', function($n) {
        $as = str_repeat('a',$n);
        return "grit{$a}r!";
    });





