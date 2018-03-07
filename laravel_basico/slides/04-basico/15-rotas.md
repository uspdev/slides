### Parâmetro na rota:

    Route::get('/gritar/{nome}','OlaController@gritar');

### Recebendo parâmentro no controller:

    public function gritar($nome)
    { 
        return view('gritar',['x'=>"OLLLLLÁÁÁÁ {$nome}");
    }

**!!! Volte a master no estado do último commit  !!! **
