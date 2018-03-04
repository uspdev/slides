Criar uma rota para store de turma:

    Route::post('/disciplinas/{disciplina_id}/turmas','DisciplinaController@storeTurma');

Criar o método store turma:

    public function storeTurma(Request $request, $disciplina_id)
    {
        $turma = new \App\Turma;
        $turma->ministrante = $request->ministrante;
        $turma->inicio = $request->inicio;
        $turma->fim = $request->fim;
        $turma->bibliografia = $request->bibliografia;
        $turma->disciplina_id = $request->disciplina_id;
        $turma->save();
        return redirect("/disciplinas/$disciplina_id");
    }

Que tal usar o relacionamento?

    Disciplina::find($request->disciplina_id)->turmas()->save($turma);
