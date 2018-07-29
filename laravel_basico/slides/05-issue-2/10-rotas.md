Rota resource e rota adicional para raiz do sistema:

    Route::get('/','DisciplinaController@index');
    Route::resource('disciplinas','DisciplinaController')

Implementar método index do controller disciplina:

    return Disciplina::all();

Agora usando view:

    return view('disciplinas.index',['disciplinas' => $disciplinas]);


