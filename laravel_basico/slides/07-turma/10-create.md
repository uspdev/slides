No controler de disciplina, método para inserção de turma:

    public function createTurma($disciplina_id)
    {
        return view('disciplinas.turmas.create',compact('disciplina_id'));
    }

Rota para inserir turma:

    Route::get('/disciplinas/{disciplina_id}/turmas/create','DisciplinaController@createTurma');

Botão para inserir turma no show de disciplina:

    <a href="/disciplinas/{{ $disciplina->id }}/turmas/create">Inserir Turma</a>



