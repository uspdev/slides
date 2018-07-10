Rota adicional para raiz do sistema:

    Route::get('/','DisciplinaController@index');

Implementar método index do controller disciplina:

    return Disciplina::all();

Agora usando view:

    return view('disciplinas.index',['disciplinas' => $disciplinas]);


