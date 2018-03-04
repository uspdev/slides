Buscar:

    public function search(Request $request)
    {
        $text = $request->text;
        $disciplinas = Disciplina::where('titulo', 'LIKE', "%{$text}%")->get();
        return view('disciplinas.index',compact('disciplinas'));
    }

Rota:

    Route::post('/disciplinas/search','DisciplinaController@search');
