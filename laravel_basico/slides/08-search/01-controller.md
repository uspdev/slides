Buscar:

    public function search(Request $request)
    {
        $text = $request->text;
        $disciplinas = Disciplina::where('titulo', 'LIKE', "%{$text}%")->get();
        return view('disciplinas.search',compact('disciplinas'));
    }

Rota:

    Route::post('/disciplinas/search','DisciplinaController@search');
