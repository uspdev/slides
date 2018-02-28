No controler de disciplina, método para inserção de turma:

    public function createTurma($disciplina_id)
    {
        return view('disciplinas.turmas.create',compact('disciplina_id'));
    }

Rota para inserir turma:

    Route::get('/disciplinas/{id}/turmas/create','DisciplinaController@createTurma');


