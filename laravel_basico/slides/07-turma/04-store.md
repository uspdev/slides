Criar uma rota para store de turma:

    Route::post('/disciplinas/turmas','DisciplinaController@storeTurma');

Criar o método store turma:

    public function storeTurma(Request $request)
    {
        $turma = new \App\Turma;
        $turma->ministrante = $request->ministrante;
        $turma->inicio = $request->inicio;
        $turma->fim = $request->fim;
        $turma->bibliografia = $request->bibliografia;
        $turma->disciplina_id = $request->disciplina_id;
        $turma->save();
        return redirect()->route('disciplinas.show',$request->disciplina_id);
    }

Que tal usar o relacionamento que nõs no model?

    Disciplina::find($request->disciplina_id)->turmas()->save($turma);
